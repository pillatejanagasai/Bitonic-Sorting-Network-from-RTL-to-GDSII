`timescale 1ns/1ps
module tb_sorter_32;
    reg  [255:0] unsorted_bus;
    wire [255:0] sorted_bus;
    integer i, errors;

    // Instantiate the Sorter
    sorter_32 dut (
        .unsorted_bus(unsorted_bus),
        .sorted_bus(sorted_bus)
    );

    // Task to verify the array is perfectly sorted (Ascending)
    task verify_sort;
    begin
        #10; // Wait for combinational logic to settle
        errors = 0;
        for (i = 0; i < 31; i = i + 1) begin
            // Extract 8-bit slices dynamically: bus[i*8 +: 8]
            if (sorted_bus[i*8 +: 8] > sorted_bus[(i+1)*8 +: 8]) begin
                errors = errors + 1;
            end
        end
        if (errors == 0) $display("  -> PASS: Array perfectly sorted!");
        else $display("  -> FAIL: Found %0d sorting errors.", errors);
    end
    endtask

    initial begin
        $dumpfile("tb_sorter.vcd");
        $dumpvars(0, tb_sorter_32);
        $display("Starting 32-Element Bitonic Sorter Testbench...");

        $display("\n--- Running Random Test 1 ---");
        unsorted_bus = {
            8'h0C, 8'h74, 8'hF4, 8'h7F, 8'h93, 8'h07, 8'hFC, 8'hB7, 8'h31, 8'hBB, 8'h6B, 8'hBE, 8'h6C, 8'h6C, 8'hBD, 8'h31, 8'h52, 8'h3E, 8'h21, 8'hC9, 8'hCF, 8'h47, 8'h93, 8'hFF, 8'h0F, 8'h78, 8'h13, 8'h59, 8'h6C, 8'h74, 8'h25, 8'h33
        };
        verify_sort();

        $display("\n--- Running Random Test 2 ---");
        unsorted_bus = {
            8'hC2, 8'hCA, 8'hD2, 8'h82, 8'h1B, 8'hE2, 8'hB3, 8'h42, 8'h08, 8'h58, 8'h25, 8'hCC, 8'hFA, 8'h98, 8'h92, 8'h04, 8'hA4, 8'h39, 8'h43, 8'h3D, 8'h48, 8'h08, 8'h64, 8'hFF, 8'h93, 8'h9D, 8'h65, 8'hC4, 8'hE7, 8'hDB, 8'h07, 8'hC8
        };
        verify_sort();

        $display("\n--- Running Random Test 3 ---");
        unsorted_bus = {
            8'hAB, 8'h90, 8'h55, 8'h99, 8'h1A, 8'hE9, 8'hC4, 8'h7B, 8'hB9, 8'h80, 8'h28, 8'h87, 8'h6F, 8'hC2, 8'h37, 8'h64, 8'hFE, 8'h63, 8'h42, 8'h5C, 8'hC0, 8'h60, 8'h8B, 8'hD6, 8'h7D, 8'hFA, 8'h80, 8'hED, 8'h27, 8'h01, 8'hE6, 8'h1F
        };
        verify_sort();

        $display("\n--- Running Worst-Case Test (Descending Order) ---");
        unsorted_bus = {
            8'hE0, 8'hE1, 8'hE2, 8'hE3, 8'hE4, 8'hE5, 8'hE6, 8'hE7, 8'hE8, 8'hE9, 8'hEA, 8'hEB, 8'hEC, 8'hED, 8'hEE, 8'hEF, 8'hF0, 8'hF1, 8'hF2, 8'hF3, 8'hF4, 8'hF5, 8'hF6, 8'hF7, 8'hF8, 8'hF9, 8'hFA, 8'hFB, 8'hFC, 8'hFD, 8'hFE, 8'hFF
        };
        verify_sort();

        #20 $finish;
    end
endmodule