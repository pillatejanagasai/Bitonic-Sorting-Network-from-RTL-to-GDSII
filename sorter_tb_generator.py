import random

# Parameters
N = 32      # Number of elements
BITS = 8    # Bit-width of each element

def generate_tb():
    code = []
    code.append("`timescale 1ns/1ps")
    code.append(f"module tb_sorter_{N};")
    code.append(f"    reg  [{N*BITS-1}:0] unsorted_bus;")
    code.append(f"    wire [{N*BITS-1}:0] sorted_bus;")
    code.append("    integer i, errors;")
    code.append("")
    code.append("    // Instantiate the Sorter")
    code.append(f"    sorter_{N} dut (")
    code.append("        .unsorted_bus(unsorted_bus),")
    code.append("        .sorted_bus(sorted_bus)")
    code.append("    );")
    code.append("")
    
    # ---------------------------------------------------------
    # Auto-Checking Task
    # ---------------------------------------------------------
    code.append("    // Task to verify the array is perfectly sorted (Ascending)")
    code.append("    task verify_sort;")
    code.append("    begin")
    code.append("        #10; // Wait for combinational logic to settle")
    code.append("        errors = 0;")
    code.append(f"        for (i = 0; i < {N-1}; i = i + 1) begin")
    code.append(f"            // Extract 8-bit slices dynamically: bus[i*8 +: 8]")
    code.append(f"            if (sorted_bus[i*{BITS} +: {BITS}] > sorted_bus[(i+1)*{BITS} +: {BITS}]) begin")
    code.append("                errors = errors + 1;")
    code.append("            end")
    code.append("        end")
    code.append("        if (errors == 0) $display(\"  -> PASS: Array perfectly sorted!\");")
    code.append("        else $display(\"  -> FAIL: Found %0d sorting errors.\", errors);")
    code.append("    end")
    code.append("    endtask")
    code.append("")
    
    # ---------------------------------------------------------
    # Initial Block (Test Vectors)
    # ---------------------------------------------------------
    code.append("    initial begin")
    code.append("        $dumpfile(\"tb_sorter.vcd\");")
    code.append(f"        $dumpvars(0, tb_sorter_{N});")
    code.append("        $display(\"Starting 32-Element Bitonic Sorter Testbench...\");")
    
    # Generate 3 Random Arrays
    for test_num in range(1, 4):
        code.append(f"\n        $display(\"\\n--- Running Random Test {test_num} ---\");")
        rand_nums = [random.randint(0, 255) for _ in range(N)]
        
        # In Verilog {A, B, C} packs A at the MSB. We want index 0 at the LSB.
        hex_strings = [f"{BITS}'h{num:02X}" for num in reversed(rand_nums)] 
        
        code.append("        unsorted_bus = {")
        code.append("            " + ", ".join(hex_strings))
        code.append("        };")
        code.append("        verify_sort();")

    # Generate the Worst-Case Scenario (Strictly Descending)
    code.append(f"\n        $display(\"\\n--- Running Worst-Case Test (Descending Order) ---\");")
    desc_nums = list(range(255, 255-N, -1))
    hex_strings = [f"{BITS}'h{num:02X}" for num in reversed(desc_nums)]
    code.append("        unsorted_bus = {")
    code.append("            " + ", ".join(hex_strings))
    code.append("        };")
    code.append("        verify_sort();")

    code.append("\n        #20 $finish;")
    code.append("    end")
    code.append("endmodule")
    
    return "\n".join(code)

if __name__ == "__main__":
    file_name = "src/tb_sorter_32.v"
    with open(file_name, "w") as f:
        f.write(generate_tb())
    print(f"Success! Testbench generated at {file_name}")
