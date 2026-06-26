import sys

# Parameters
N = 32      # Number of elements to sort
BITS = 8    # Bit-width of each element

def generate_sorter():
    code = []
    
    # 1. Generate the CAS (Compare-And-Swap) Sub-module
    code.append("// ==========================================")
    code.append(f"// Auto-Generated {N}-Element Bitonic Sorter")
    code.append("// ==========================================")
    code.append("module cas (")
    code.append("    input  wire [7:0] in_top,")
    code.append("    input  wire [7:0] in_bot,")
    code.append("    input  wire       dir,    // 1 = ascending, 0 = descending")
    code.append("    output wire [7:0] out_top,")
    code.append("    output wire [7:0] out_bot")
    code.append(");")
    code.append("    wire top_greater = (in_top > in_bot);")
    code.append("    wire swap = top_greater ^ ~dir;")
    code.append("    assign out_top = swap ? in_bot : in_top;")
    code.append("    assign out_bot = swap ? in_top : in_bot;")
    code.append("endmodule\n")
    
    # 2. Generate the Top-Level Wrapper
    code.append(f"module sorter_{N} (")
    code.append(f"    input  wire [{N*BITS-1}:0] unsorted_bus,")
    code.append(f"    output wire [{N*BITS-1}:0] sorted_bus")
    code.append(");")
    
    # Calculate the Butterfly Stages
    stages = []
    k = 2
    while k <= N:
        j = k // 2
        while j > 0:
            stage_comps = []
            for i in range(N):
                l = i ^ j
                if i < l: # Only process each pair once
                    direction = 1 if (i & k) == 0 else 0
                    stage_comps.append((i, l, direction))
            stages.append(stage_comps)
            j //= 2
        k *= 2

    num_stages = len(stages)
    
    # 3. Declare flat intermediate stage wires
    for s in range(num_stages + 1):
        code.append(f"    wire [{N*BITS-1}:0] stg_{s};")
        
    code.append("\n    // Map input bus to stage 0")
    code.append("    assign stg_0 = unsorted_bus;\n")
        
    # 4. Instantiate the CAS grid
    cas_idx = 0
    for s, stage in enumerate(stages):
        code.append(f"    // --- STAGE {s+1} ---")
        for (i, l, d) in stage:
            # Calculate the bit slices for the flat vector
            top_slice = f"{i*BITS+BITS-1}:{i*BITS}"
            bot_slice = f"{l*BITS+BITS-1}:{l*BITS}"
            
            code.append(f"    cas cas_{cas_idx} (")
            code.append(f"        .in_top(stg_{s}[{top_slice}]), .in_bot(stg_{s}[{bot_slice}]), .dir(1'b{d}),")
            code.append(f"        .out_top(stg_{s+1}[{top_slice}]), .out_bot(stg_{s+1}[{bot_slice}])")
            code.append("    );")
            cas_idx += 1
        code.append("")
            
    # 5. Map the final stage to the output bus
    code.append(f"    // Map final stage ({num_stages}) to output bus")
    code.append(f"    assign sorted_bus = stg_{num_stages};")
    code.append("endmodule")
    
    return "\n".join(code)

if __name__ == "__main__":
    file_name = f"src/sorter_{N}.v"
    import os
    os.makedirs("src", exist_ok=True)
    with open(file_name, "w") as f:
        f.write(generate_sorter())
    print(f"Success! Generated 240 CAS instances in {file_name}")
