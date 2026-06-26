// ==========================================
// Auto-Generated 32-Element Bitonic Sorter
// ==========================================
module cas (
    input  wire [7:0] in_top,
    input  wire [7:0] in_bot,
    input  wire       dir,    // 1 = ascending, 0 = descending
    output wire [7:0] out_top,
    output wire [7:0] out_bot
);
    wire top_greater = (in_top > in_bot);
    wire swap = top_greater ^ ~dir;
    assign out_top = swap ? in_bot : in_top;
    assign out_bot = swap ? in_top : in_bot;
endmodule

module sorter_32 (
    input  wire [255:0] unsorted_bus,
    output wire [255:0] sorted_bus
);
    wire [255:0] stg_0;
    wire [255:0] stg_1;
    wire [255:0] stg_2;
    wire [255:0] stg_3;
    wire [255:0] stg_4;
    wire [255:0] stg_5;
    wire [255:0] stg_6;
    wire [255:0] stg_7;
    wire [255:0] stg_8;
    wire [255:0] stg_9;
    wire [255:0] stg_10;
    wire [255:0] stg_11;
    wire [255:0] stg_12;
    wire [255:0] stg_13;
    wire [255:0] stg_14;
    wire [255:0] stg_15;

    // Map input bus to stage 0
    assign stg_0 = unsorted_bus;

    // --- STAGE 1 ---
    cas cas_0 (
        .in_top(stg_0[7:0]), .in_bot(stg_0[15:8]), .dir(1'b1),
        .out_top(stg_1[7:0]), .out_bot(stg_1[15:8])
    );
    cas cas_1 (
        .in_top(stg_0[23:16]), .in_bot(stg_0[31:24]), .dir(1'b0),
        .out_top(stg_1[23:16]), .out_bot(stg_1[31:24])
    );
    cas cas_2 (
        .in_top(stg_0[39:32]), .in_bot(stg_0[47:40]), .dir(1'b1),
        .out_top(stg_1[39:32]), .out_bot(stg_1[47:40])
    );
    cas cas_3 (
        .in_top(stg_0[55:48]), .in_bot(stg_0[63:56]), .dir(1'b0),
        .out_top(stg_1[55:48]), .out_bot(stg_1[63:56])
    );
    cas cas_4 (
        .in_top(stg_0[71:64]), .in_bot(stg_0[79:72]), .dir(1'b1),
        .out_top(stg_1[71:64]), .out_bot(stg_1[79:72])
    );
    cas cas_5 (
        .in_top(stg_0[87:80]), .in_bot(stg_0[95:88]), .dir(1'b0),
        .out_top(stg_1[87:80]), .out_bot(stg_1[95:88])
    );
    cas cas_6 (
        .in_top(stg_0[103:96]), .in_bot(stg_0[111:104]), .dir(1'b1),
        .out_top(stg_1[103:96]), .out_bot(stg_1[111:104])
    );
    cas cas_7 (
        .in_top(stg_0[119:112]), .in_bot(stg_0[127:120]), .dir(1'b0),
        .out_top(stg_1[119:112]), .out_bot(stg_1[127:120])
    );
    cas cas_8 (
        .in_top(stg_0[135:128]), .in_bot(stg_0[143:136]), .dir(1'b1),
        .out_top(stg_1[135:128]), .out_bot(stg_1[143:136])
    );
    cas cas_9 (
        .in_top(stg_0[151:144]), .in_bot(stg_0[159:152]), .dir(1'b0),
        .out_top(stg_1[151:144]), .out_bot(stg_1[159:152])
    );
    cas cas_10 (
        .in_top(stg_0[167:160]), .in_bot(stg_0[175:168]), .dir(1'b1),
        .out_top(stg_1[167:160]), .out_bot(stg_1[175:168])
    );
    cas cas_11 (
        .in_top(stg_0[183:176]), .in_bot(stg_0[191:184]), .dir(1'b0),
        .out_top(stg_1[183:176]), .out_bot(stg_1[191:184])
    );
    cas cas_12 (
        .in_top(stg_0[199:192]), .in_bot(stg_0[207:200]), .dir(1'b1),
        .out_top(stg_1[199:192]), .out_bot(stg_1[207:200])
    );
    cas cas_13 (
        .in_top(stg_0[215:208]), .in_bot(stg_0[223:216]), .dir(1'b0),
        .out_top(stg_1[215:208]), .out_bot(stg_1[223:216])
    );
    cas cas_14 (
        .in_top(stg_0[231:224]), .in_bot(stg_0[239:232]), .dir(1'b1),
        .out_top(stg_1[231:224]), .out_bot(stg_1[239:232])
    );
    cas cas_15 (
        .in_top(stg_0[247:240]), .in_bot(stg_0[255:248]), .dir(1'b0),
        .out_top(stg_1[247:240]), .out_bot(stg_1[255:248])
    );

    // --- STAGE 2 ---
    cas cas_16 (
        .in_top(stg_1[7:0]), .in_bot(stg_1[23:16]), .dir(1'b1),
        .out_top(stg_2[7:0]), .out_bot(stg_2[23:16])
    );
    cas cas_17 (
        .in_top(stg_1[15:8]), .in_bot(stg_1[31:24]), .dir(1'b1),
        .out_top(stg_2[15:8]), .out_bot(stg_2[31:24])
    );
    cas cas_18 (
        .in_top(stg_1[39:32]), .in_bot(stg_1[55:48]), .dir(1'b0),
        .out_top(stg_2[39:32]), .out_bot(stg_2[55:48])
    );
    cas cas_19 (
        .in_top(stg_1[47:40]), .in_bot(stg_1[63:56]), .dir(1'b0),
        .out_top(stg_2[47:40]), .out_bot(stg_2[63:56])
    );
    cas cas_20 (
        .in_top(stg_1[71:64]), .in_bot(stg_1[87:80]), .dir(1'b1),
        .out_top(stg_2[71:64]), .out_bot(stg_2[87:80])
    );
    cas cas_21 (
        .in_top(stg_1[79:72]), .in_bot(stg_1[95:88]), .dir(1'b1),
        .out_top(stg_2[79:72]), .out_bot(stg_2[95:88])
    );
    cas cas_22 (
        .in_top(stg_1[103:96]), .in_bot(stg_1[119:112]), .dir(1'b0),
        .out_top(stg_2[103:96]), .out_bot(stg_2[119:112])
    );
    cas cas_23 (
        .in_top(stg_1[111:104]), .in_bot(stg_1[127:120]), .dir(1'b0),
        .out_top(stg_2[111:104]), .out_bot(stg_2[127:120])
    );
    cas cas_24 (
        .in_top(stg_1[135:128]), .in_bot(stg_1[151:144]), .dir(1'b1),
        .out_top(stg_2[135:128]), .out_bot(stg_2[151:144])
    );
    cas cas_25 (
        .in_top(stg_1[143:136]), .in_bot(stg_1[159:152]), .dir(1'b1),
        .out_top(stg_2[143:136]), .out_bot(stg_2[159:152])
    );
    cas cas_26 (
        .in_top(stg_1[167:160]), .in_bot(stg_1[183:176]), .dir(1'b0),
        .out_top(stg_2[167:160]), .out_bot(stg_2[183:176])
    );
    cas cas_27 (
        .in_top(stg_1[175:168]), .in_bot(stg_1[191:184]), .dir(1'b0),
        .out_top(stg_2[175:168]), .out_bot(stg_2[191:184])
    );
    cas cas_28 (
        .in_top(stg_1[199:192]), .in_bot(stg_1[215:208]), .dir(1'b1),
        .out_top(stg_2[199:192]), .out_bot(stg_2[215:208])
    );
    cas cas_29 (
        .in_top(stg_1[207:200]), .in_bot(stg_1[223:216]), .dir(1'b1),
        .out_top(stg_2[207:200]), .out_bot(stg_2[223:216])
    );
    cas cas_30 (
        .in_top(stg_1[231:224]), .in_bot(stg_1[247:240]), .dir(1'b0),
        .out_top(stg_2[231:224]), .out_bot(stg_2[247:240])
    );
    cas cas_31 (
        .in_top(stg_1[239:232]), .in_bot(stg_1[255:248]), .dir(1'b0),
        .out_top(stg_2[239:232]), .out_bot(stg_2[255:248])
    );

    // --- STAGE 3 ---
    cas cas_32 (
        .in_top(stg_2[7:0]), .in_bot(stg_2[15:8]), .dir(1'b1),
        .out_top(stg_3[7:0]), .out_bot(stg_3[15:8])
    );
    cas cas_33 (
        .in_top(stg_2[23:16]), .in_bot(stg_2[31:24]), .dir(1'b1),
        .out_top(stg_3[23:16]), .out_bot(stg_3[31:24])
    );
    cas cas_34 (
        .in_top(stg_2[39:32]), .in_bot(stg_2[47:40]), .dir(1'b0),
        .out_top(stg_3[39:32]), .out_bot(stg_3[47:40])
    );
    cas cas_35 (
        .in_top(stg_2[55:48]), .in_bot(stg_2[63:56]), .dir(1'b0),
        .out_top(stg_3[55:48]), .out_bot(stg_3[63:56])
    );
    cas cas_36 (
        .in_top(stg_2[71:64]), .in_bot(stg_2[79:72]), .dir(1'b1),
        .out_top(stg_3[71:64]), .out_bot(stg_3[79:72])
    );
    cas cas_37 (
        .in_top(stg_2[87:80]), .in_bot(stg_2[95:88]), .dir(1'b1),
        .out_top(stg_3[87:80]), .out_bot(stg_3[95:88])
    );
    cas cas_38 (
        .in_top(stg_2[103:96]), .in_bot(stg_2[111:104]), .dir(1'b0),
        .out_top(stg_3[103:96]), .out_bot(stg_3[111:104])
    );
    cas cas_39 (
        .in_top(stg_2[119:112]), .in_bot(stg_2[127:120]), .dir(1'b0),
        .out_top(stg_3[119:112]), .out_bot(stg_3[127:120])
    );
    cas cas_40 (
        .in_top(stg_2[135:128]), .in_bot(stg_2[143:136]), .dir(1'b1),
        .out_top(stg_3[135:128]), .out_bot(stg_3[143:136])
    );
    cas cas_41 (
        .in_top(stg_2[151:144]), .in_bot(stg_2[159:152]), .dir(1'b1),
        .out_top(stg_3[151:144]), .out_bot(stg_3[159:152])
    );
    cas cas_42 (
        .in_top(stg_2[167:160]), .in_bot(stg_2[175:168]), .dir(1'b0),
        .out_top(stg_3[167:160]), .out_bot(stg_3[175:168])
    );
    cas cas_43 (
        .in_top(stg_2[183:176]), .in_bot(stg_2[191:184]), .dir(1'b0),
        .out_top(stg_3[183:176]), .out_bot(stg_3[191:184])
    );
    cas cas_44 (
        .in_top(stg_2[199:192]), .in_bot(stg_2[207:200]), .dir(1'b1),
        .out_top(stg_3[199:192]), .out_bot(stg_3[207:200])
    );
    cas cas_45 (
        .in_top(stg_2[215:208]), .in_bot(stg_2[223:216]), .dir(1'b1),
        .out_top(stg_3[215:208]), .out_bot(stg_3[223:216])
    );
    cas cas_46 (
        .in_top(stg_2[231:224]), .in_bot(stg_2[239:232]), .dir(1'b0),
        .out_top(stg_3[231:224]), .out_bot(stg_3[239:232])
    );
    cas cas_47 (
        .in_top(stg_2[247:240]), .in_bot(stg_2[255:248]), .dir(1'b0),
        .out_top(stg_3[247:240]), .out_bot(stg_3[255:248])
    );

    // --- STAGE 4 ---
    cas cas_48 (
        .in_top(stg_3[7:0]), .in_bot(stg_3[39:32]), .dir(1'b1),
        .out_top(stg_4[7:0]), .out_bot(stg_4[39:32])
    );
    cas cas_49 (
        .in_top(stg_3[15:8]), .in_bot(stg_3[47:40]), .dir(1'b1),
        .out_top(stg_4[15:8]), .out_bot(stg_4[47:40])
    );
    cas cas_50 (
        .in_top(stg_3[23:16]), .in_bot(stg_3[55:48]), .dir(1'b1),
        .out_top(stg_4[23:16]), .out_bot(stg_4[55:48])
    );
    cas cas_51 (
        .in_top(stg_3[31:24]), .in_bot(stg_3[63:56]), .dir(1'b1),
        .out_top(stg_4[31:24]), .out_bot(stg_4[63:56])
    );
    cas cas_52 (
        .in_top(stg_3[71:64]), .in_bot(stg_3[103:96]), .dir(1'b0),
        .out_top(stg_4[71:64]), .out_bot(stg_4[103:96])
    );
    cas cas_53 (
        .in_top(stg_3[79:72]), .in_bot(stg_3[111:104]), .dir(1'b0),
        .out_top(stg_4[79:72]), .out_bot(stg_4[111:104])
    );
    cas cas_54 (
        .in_top(stg_3[87:80]), .in_bot(stg_3[119:112]), .dir(1'b0),
        .out_top(stg_4[87:80]), .out_bot(stg_4[119:112])
    );
    cas cas_55 (
        .in_top(stg_3[95:88]), .in_bot(stg_3[127:120]), .dir(1'b0),
        .out_top(stg_4[95:88]), .out_bot(stg_4[127:120])
    );
    cas cas_56 (
        .in_top(stg_3[135:128]), .in_bot(stg_3[167:160]), .dir(1'b1),
        .out_top(stg_4[135:128]), .out_bot(stg_4[167:160])
    );
    cas cas_57 (
        .in_top(stg_3[143:136]), .in_bot(stg_3[175:168]), .dir(1'b1),
        .out_top(stg_4[143:136]), .out_bot(stg_4[175:168])
    );
    cas cas_58 (
        .in_top(stg_3[151:144]), .in_bot(stg_3[183:176]), .dir(1'b1),
        .out_top(stg_4[151:144]), .out_bot(stg_4[183:176])
    );
    cas cas_59 (
        .in_top(stg_3[159:152]), .in_bot(stg_3[191:184]), .dir(1'b1),
        .out_top(stg_4[159:152]), .out_bot(stg_4[191:184])
    );
    cas cas_60 (
        .in_top(stg_3[199:192]), .in_bot(stg_3[231:224]), .dir(1'b0),
        .out_top(stg_4[199:192]), .out_bot(stg_4[231:224])
    );
    cas cas_61 (
        .in_top(stg_3[207:200]), .in_bot(stg_3[239:232]), .dir(1'b0),
        .out_top(stg_4[207:200]), .out_bot(stg_4[239:232])
    );
    cas cas_62 (
        .in_top(stg_3[215:208]), .in_bot(stg_3[247:240]), .dir(1'b0),
        .out_top(stg_4[215:208]), .out_bot(stg_4[247:240])
    );
    cas cas_63 (
        .in_top(stg_3[223:216]), .in_bot(stg_3[255:248]), .dir(1'b0),
        .out_top(stg_4[223:216]), .out_bot(stg_4[255:248])
    );

    // --- STAGE 5 ---
    cas cas_64 (
        .in_top(stg_4[7:0]), .in_bot(stg_4[23:16]), .dir(1'b1),
        .out_top(stg_5[7:0]), .out_bot(stg_5[23:16])
    );
    cas cas_65 (
        .in_top(stg_4[15:8]), .in_bot(stg_4[31:24]), .dir(1'b1),
        .out_top(stg_5[15:8]), .out_bot(stg_5[31:24])
    );
    cas cas_66 (
        .in_top(stg_4[39:32]), .in_bot(stg_4[55:48]), .dir(1'b1),
        .out_top(stg_5[39:32]), .out_bot(stg_5[55:48])
    );
    cas cas_67 (
        .in_top(stg_4[47:40]), .in_bot(stg_4[63:56]), .dir(1'b1),
        .out_top(stg_5[47:40]), .out_bot(stg_5[63:56])
    );
    cas cas_68 (
        .in_top(stg_4[71:64]), .in_bot(stg_4[87:80]), .dir(1'b0),
        .out_top(stg_5[71:64]), .out_bot(stg_5[87:80])
    );
    cas cas_69 (
        .in_top(stg_4[79:72]), .in_bot(stg_4[95:88]), .dir(1'b0),
        .out_top(stg_5[79:72]), .out_bot(stg_5[95:88])
    );
    cas cas_70 (
        .in_top(stg_4[103:96]), .in_bot(stg_4[119:112]), .dir(1'b0),
        .out_top(stg_5[103:96]), .out_bot(stg_5[119:112])
    );
    cas cas_71 (
        .in_top(stg_4[111:104]), .in_bot(stg_4[127:120]), .dir(1'b0),
        .out_top(stg_5[111:104]), .out_bot(stg_5[127:120])
    );
    cas cas_72 (
        .in_top(stg_4[135:128]), .in_bot(stg_4[151:144]), .dir(1'b1),
        .out_top(stg_5[135:128]), .out_bot(stg_5[151:144])
    );
    cas cas_73 (
        .in_top(stg_4[143:136]), .in_bot(stg_4[159:152]), .dir(1'b1),
        .out_top(stg_5[143:136]), .out_bot(stg_5[159:152])
    );
    cas cas_74 (
        .in_top(stg_4[167:160]), .in_bot(stg_4[183:176]), .dir(1'b1),
        .out_top(stg_5[167:160]), .out_bot(stg_5[183:176])
    );
    cas cas_75 (
        .in_top(stg_4[175:168]), .in_bot(stg_4[191:184]), .dir(1'b1),
        .out_top(stg_5[175:168]), .out_bot(stg_5[191:184])
    );
    cas cas_76 (
        .in_top(stg_4[199:192]), .in_bot(stg_4[215:208]), .dir(1'b0),
        .out_top(stg_5[199:192]), .out_bot(stg_5[215:208])
    );
    cas cas_77 (
        .in_top(stg_4[207:200]), .in_bot(stg_4[223:216]), .dir(1'b0),
        .out_top(stg_5[207:200]), .out_bot(stg_5[223:216])
    );
    cas cas_78 (
        .in_top(stg_4[231:224]), .in_bot(stg_4[247:240]), .dir(1'b0),
        .out_top(stg_5[231:224]), .out_bot(stg_5[247:240])
    );
    cas cas_79 (
        .in_top(stg_4[239:232]), .in_bot(stg_4[255:248]), .dir(1'b0),
        .out_top(stg_5[239:232]), .out_bot(stg_5[255:248])
    );

    // --- STAGE 6 ---
    cas cas_80 (
        .in_top(stg_5[7:0]), .in_bot(stg_5[15:8]), .dir(1'b1),
        .out_top(stg_6[7:0]), .out_bot(stg_6[15:8])
    );
    cas cas_81 (
        .in_top(stg_5[23:16]), .in_bot(stg_5[31:24]), .dir(1'b1),
        .out_top(stg_6[23:16]), .out_bot(stg_6[31:24])
    );
    cas cas_82 (
        .in_top(stg_5[39:32]), .in_bot(stg_5[47:40]), .dir(1'b1),
        .out_top(stg_6[39:32]), .out_bot(stg_6[47:40])
    );
    cas cas_83 (
        .in_top(stg_5[55:48]), .in_bot(stg_5[63:56]), .dir(1'b1),
        .out_top(stg_6[55:48]), .out_bot(stg_6[63:56])
    );
    cas cas_84 (
        .in_top(stg_5[71:64]), .in_bot(stg_5[79:72]), .dir(1'b0),
        .out_top(stg_6[71:64]), .out_bot(stg_6[79:72])
    );
    cas cas_85 (
        .in_top(stg_5[87:80]), .in_bot(stg_5[95:88]), .dir(1'b0),
        .out_top(stg_6[87:80]), .out_bot(stg_6[95:88])
    );
    cas cas_86 (
        .in_top(stg_5[103:96]), .in_bot(stg_5[111:104]), .dir(1'b0),
        .out_top(stg_6[103:96]), .out_bot(stg_6[111:104])
    );
    cas cas_87 (
        .in_top(stg_5[119:112]), .in_bot(stg_5[127:120]), .dir(1'b0),
        .out_top(stg_6[119:112]), .out_bot(stg_6[127:120])
    );
    cas cas_88 (
        .in_top(stg_5[135:128]), .in_bot(stg_5[143:136]), .dir(1'b1),
        .out_top(stg_6[135:128]), .out_bot(stg_6[143:136])
    );
    cas cas_89 (
        .in_top(stg_5[151:144]), .in_bot(stg_5[159:152]), .dir(1'b1),
        .out_top(stg_6[151:144]), .out_bot(stg_6[159:152])
    );
    cas cas_90 (
        .in_top(stg_5[167:160]), .in_bot(stg_5[175:168]), .dir(1'b1),
        .out_top(stg_6[167:160]), .out_bot(stg_6[175:168])
    );
    cas cas_91 (
        .in_top(stg_5[183:176]), .in_bot(stg_5[191:184]), .dir(1'b1),
        .out_top(stg_6[183:176]), .out_bot(stg_6[191:184])
    );
    cas cas_92 (
        .in_top(stg_5[199:192]), .in_bot(stg_5[207:200]), .dir(1'b0),
        .out_top(stg_6[199:192]), .out_bot(stg_6[207:200])
    );
    cas cas_93 (
        .in_top(stg_5[215:208]), .in_bot(stg_5[223:216]), .dir(1'b0),
        .out_top(stg_6[215:208]), .out_bot(stg_6[223:216])
    );
    cas cas_94 (
        .in_top(stg_5[231:224]), .in_bot(stg_5[239:232]), .dir(1'b0),
        .out_top(stg_6[231:224]), .out_bot(stg_6[239:232])
    );
    cas cas_95 (
        .in_top(stg_5[247:240]), .in_bot(stg_5[255:248]), .dir(1'b0),
        .out_top(stg_6[247:240]), .out_bot(stg_6[255:248])
    );

    // --- STAGE 7 ---
    cas cas_96 (
        .in_top(stg_6[7:0]), .in_bot(stg_6[71:64]), .dir(1'b1),
        .out_top(stg_7[7:0]), .out_bot(stg_7[71:64])
    );
    cas cas_97 (
        .in_top(stg_6[15:8]), .in_bot(stg_6[79:72]), .dir(1'b1),
        .out_top(stg_7[15:8]), .out_bot(stg_7[79:72])
    );
    cas cas_98 (
        .in_top(stg_6[23:16]), .in_bot(stg_6[87:80]), .dir(1'b1),
        .out_top(stg_7[23:16]), .out_bot(stg_7[87:80])
    );
    cas cas_99 (
        .in_top(stg_6[31:24]), .in_bot(stg_6[95:88]), .dir(1'b1),
        .out_top(stg_7[31:24]), .out_bot(stg_7[95:88])
    );
    cas cas_100 (
        .in_top(stg_6[39:32]), .in_bot(stg_6[103:96]), .dir(1'b1),
        .out_top(stg_7[39:32]), .out_bot(stg_7[103:96])
    );
    cas cas_101 (
        .in_top(stg_6[47:40]), .in_bot(stg_6[111:104]), .dir(1'b1),
        .out_top(stg_7[47:40]), .out_bot(stg_7[111:104])
    );
    cas cas_102 (
        .in_top(stg_6[55:48]), .in_bot(stg_6[119:112]), .dir(1'b1),
        .out_top(stg_7[55:48]), .out_bot(stg_7[119:112])
    );
    cas cas_103 (
        .in_top(stg_6[63:56]), .in_bot(stg_6[127:120]), .dir(1'b1),
        .out_top(stg_7[63:56]), .out_bot(stg_7[127:120])
    );
    cas cas_104 (
        .in_top(stg_6[135:128]), .in_bot(stg_6[199:192]), .dir(1'b0),
        .out_top(stg_7[135:128]), .out_bot(stg_7[199:192])
    );
    cas cas_105 (
        .in_top(stg_6[143:136]), .in_bot(stg_6[207:200]), .dir(1'b0),
        .out_top(stg_7[143:136]), .out_bot(stg_7[207:200])
    );
    cas cas_106 (
        .in_top(stg_6[151:144]), .in_bot(stg_6[215:208]), .dir(1'b0),
        .out_top(stg_7[151:144]), .out_bot(stg_7[215:208])
    );
    cas cas_107 (
        .in_top(stg_6[159:152]), .in_bot(stg_6[223:216]), .dir(1'b0),
        .out_top(stg_7[159:152]), .out_bot(stg_7[223:216])
    );
    cas cas_108 (
        .in_top(stg_6[167:160]), .in_bot(stg_6[231:224]), .dir(1'b0),
        .out_top(stg_7[167:160]), .out_bot(stg_7[231:224])
    );
    cas cas_109 (
        .in_top(stg_6[175:168]), .in_bot(stg_6[239:232]), .dir(1'b0),
        .out_top(stg_7[175:168]), .out_bot(stg_7[239:232])
    );
    cas cas_110 (
        .in_top(stg_6[183:176]), .in_bot(stg_6[247:240]), .dir(1'b0),
        .out_top(stg_7[183:176]), .out_bot(stg_7[247:240])
    );
    cas cas_111 (
        .in_top(stg_6[191:184]), .in_bot(stg_6[255:248]), .dir(1'b0),
        .out_top(stg_7[191:184]), .out_bot(stg_7[255:248])
    );

    // --- STAGE 8 ---
    cas cas_112 (
        .in_top(stg_7[7:0]), .in_bot(stg_7[39:32]), .dir(1'b1),
        .out_top(stg_8[7:0]), .out_bot(stg_8[39:32])
    );
    cas cas_113 (
        .in_top(stg_7[15:8]), .in_bot(stg_7[47:40]), .dir(1'b1),
        .out_top(stg_8[15:8]), .out_bot(stg_8[47:40])
    );
    cas cas_114 (
        .in_top(stg_7[23:16]), .in_bot(stg_7[55:48]), .dir(1'b1),
        .out_top(stg_8[23:16]), .out_bot(stg_8[55:48])
    );
    cas cas_115 (
        .in_top(stg_7[31:24]), .in_bot(stg_7[63:56]), .dir(1'b1),
        .out_top(stg_8[31:24]), .out_bot(stg_8[63:56])
    );
    cas cas_116 (
        .in_top(stg_7[71:64]), .in_bot(stg_7[103:96]), .dir(1'b1),
        .out_top(stg_8[71:64]), .out_bot(stg_8[103:96])
    );
    cas cas_117 (
        .in_top(stg_7[79:72]), .in_bot(stg_7[111:104]), .dir(1'b1),
        .out_top(stg_8[79:72]), .out_bot(stg_8[111:104])
    );
    cas cas_118 (
        .in_top(stg_7[87:80]), .in_bot(stg_7[119:112]), .dir(1'b1),
        .out_top(stg_8[87:80]), .out_bot(stg_8[119:112])
    );
    cas cas_119 (
        .in_top(stg_7[95:88]), .in_bot(stg_7[127:120]), .dir(1'b1),
        .out_top(stg_8[95:88]), .out_bot(stg_8[127:120])
    );
    cas cas_120 (
        .in_top(stg_7[135:128]), .in_bot(stg_7[167:160]), .dir(1'b0),
        .out_top(stg_8[135:128]), .out_bot(stg_8[167:160])
    );
    cas cas_121 (
        .in_top(stg_7[143:136]), .in_bot(stg_7[175:168]), .dir(1'b0),
        .out_top(stg_8[143:136]), .out_bot(stg_8[175:168])
    );
    cas cas_122 (
        .in_top(stg_7[151:144]), .in_bot(stg_7[183:176]), .dir(1'b0),
        .out_top(stg_8[151:144]), .out_bot(stg_8[183:176])
    );
    cas cas_123 (
        .in_top(stg_7[159:152]), .in_bot(stg_7[191:184]), .dir(1'b0),
        .out_top(stg_8[159:152]), .out_bot(stg_8[191:184])
    );
    cas cas_124 (
        .in_top(stg_7[199:192]), .in_bot(stg_7[231:224]), .dir(1'b0),
        .out_top(stg_8[199:192]), .out_bot(stg_8[231:224])
    );
    cas cas_125 (
        .in_top(stg_7[207:200]), .in_bot(stg_7[239:232]), .dir(1'b0),
        .out_top(stg_8[207:200]), .out_bot(stg_8[239:232])
    );
    cas cas_126 (
        .in_top(stg_7[215:208]), .in_bot(stg_7[247:240]), .dir(1'b0),
        .out_top(stg_8[215:208]), .out_bot(stg_8[247:240])
    );
    cas cas_127 (
        .in_top(stg_7[223:216]), .in_bot(stg_7[255:248]), .dir(1'b0),
        .out_top(stg_8[223:216]), .out_bot(stg_8[255:248])
    );

    // --- STAGE 9 ---
    cas cas_128 (
        .in_top(stg_8[7:0]), .in_bot(stg_8[23:16]), .dir(1'b1),
        .out_top(stg_9[7:0]), .out_bot(stg_9[23:16])
    );
    cas cas_129 (
        .in_top(stg_8[15:8]), .in_bot(stg_8[31:24]), .dir(1'b1),
        .out_top(stg_9[15:8]), .out_bot(stg_9[31:24])
    );
    cas cas_130 (
        .in_top(stg_8[39:32]), .in_bot(stg_8[55:48]), .dir(1'b1),
        .out_top(stg_9[39:32]), .out_bot(stg_9[55:48])
    );
    cas cas_131 (
        .in_top(stg_8[47:40]), .in_bot(stg_8[63:56]), .dir(1'b1),
        .out_top(stg_9[47:40]), .out_bot(stg_9[63:56])
    );
    cas cas_132 (
        .in_top(stg_8[71:64]), .in_bot(stg_8[87:80]), .dir(1'b1),
        .out_top(stg_9[71:64]), .out_bot(stg_9[87:80])
    );
    cas cas_133 (
        .in_top(stg_8[79:72]), .in_bot(stg_8[95:88]), .dir(1'b1),
        .out_top(stg_9[79:72]), .out_bot(stg_9[95:88])
    );
    cas cas_134 (
        .in_top(stg_8[103:96]), .in_bot(stg_8[119:112]), .dir(1'b1),
        .out_top(stg_9[103:96]), .out_bot(stg_9[119:112])
    );
    cas cas_135 (
        .in_top(stg_8[111:104]), .in_bot(stg_8[127:120]), .dir(1'b1),
        .out_top(stg_9[111:104]), .out_bot(stg_9[127:120])
    );
    cas cas_136 (
        .in_top(stg_8[135:128]), .in_bot(stg_8[151:144]), .dir(1'b0),
        .out_top(stg_9[135:128]), .out_bot(stg_9[151:144])
    );
    cas cas_137 (
        .in_top(stg_8[143:136]), .in_bot(stg_8[159:152]), .dir(1'b0),
        .out_top(stg_9[143:136]), .out_bot(stg_9[159:152])
    );
    cas cas_138 (
        .in_top(stg_8[167:160]), .in_bot(stg_8[183:176]), .dir(1'b0),
        .out_top(stg_9[167:160]), .out_bot(stg_9[183:176])
    );
    cas cas_139 (
        .in_top(stg_8[175:168]), .in_bot(stg_8[191:184]), .dir(1'b0),
        .out_top(stg_9[175:168]), .out_bot(stg_9[191:184])
    );
    cas cas_140 (
        .in_top(stg_8[199:192]), .in_bot(stg_8[215:208]), .dir(1'b0),
        .out_top(stg_9[199:192]), .out_bot(stg_9[215:208])
    );
    cas cas_141 (
        .in_top(stg_8[207:200]), .in_bot(stg_8[223:216]), .dir(1'b0),
        .out_top(stg_9[207:200]), .out_bot(stg_9[223:216])
    );
    cas cas_142 (
        .in_top(stg_8[231:224]), .in_bot(stg_8[247:240]), .dir(1'b0),
        .out_top(stg_9[231:224]), .out_bot(stg_9[247:240])
    );
    cas cas_143 (
        .in_top(stg_8[239:232]), .in_bot(stg_8[255:248]), .dir(1'b0),
        .out_top(stg_9[239:232]), .out_bot(stg_9[255:248])
    );

    // --- STAGE 10 ---
    cas cas_144 (
        .in_top(stg_9[7:0]), .in_bot(stg_9[15:8]), .dir(1'b1),
        .out_top(stg_10[7:0]), .out_bot(stg_10[15:8])
    );
    cas cas_145 (
        .in_top(stg_9[23:16]), .in_bot(stg_9[31:24]), .dir(1'b1),
        .out_top(stg_10[23:16]), .out_bot(stg_10[31:24])
    );
    cas cas_146 (
        .in_top(stg_9[39:32]), .in_bot(stg_9[47:40]), .dir(1'b1),
        .out_top(stg_10[39:32]), .out_bot(stg_10[47:40])
    );
    cas cas_147 (
        .in_top(stg_9[55:48]), .in_bot(stg_9[63:56]), .dir(1'b1),
        .out_top(stg_10[55:48]), .out_bot(stg_10[63:56])
    );
    cas cas_148 (
        .in_top(stg_9[71:64]), .in_bot(stg_9[79:72]), .dir(1'b1),
        .out_top(stg_10[71:64]), .out_bot(stg_10[79:72])
    );
    cas cas_149 (
        .in_top(stg_9[87:80]), .in_bot(stg_9[95:88]), .dir(1'b1),
        .out_top(stg_10[87:80]), .out_bot(stg_10[95:88])
    );
    cas cas_150 (
        .in_top(stg_9[103:96]), .in_bot(stg_9[111:104]), .dir(1'b1),
        .out_top(stg_10[103:96]), .out_bot(stg_10[111:104])
    );
    cas cas_151 (
        .in_top(stg_9[119:112]), .in_bot(stg_9[127:120]), .dir(1'b1),
        .out_top(stg_10[119:112]), .out_bot(stg_10[127:120])
    );
    cas cas_152 (
        .in_top(stg_9[135:128]), .in_bot(stg_9[143:136]), .dir(1'b0),
        .out_top(stg_10[135:128]), .out_bot(stg_10[143:136])
    );
    cas cas_153 (
        .in_top(stg_9[151:144]), .in_bot(stg_9[159:152]), .dir(1'b0),
        .out_top(stg_10[151:144]), .out_bot(stg_10[159:152])
    );
    cas cas_154 (
        .in_top(stg_9[167:160]), .in_bot(stg_9[175:168]), .dir(1'b0),
        .out_top(stg_10[167:160]), .out_bot(stg_10[175:168])
    );
    cas cas_155 (
        .in_top(stg_9[183:176]), .in_bot(stg_9[191:184]), .dir(1'b0),
        .out_top(stg_10[183:176]), .out_bot(stg_10[191:184])
    );
    cas cas_156 (
        .in_top(stg_9[199:192]), .in_bot(stg_9[207:200]), .dir(1'b0),
        .out_top(stg_10[199:192]), .out_bot(stg_10[207:200])
    );
    cas cas_157 (
        .in_top(stg_9[215:208]), .in_bot(stg_9[223:216]), .dir(1'b0),
        .out_top(stg_10[215:208]), .out_bot(stg_10[223:216])
    );
    cas cas_158 (
        .in_top(stg_9[231:224]), .in_bot(stg_9[239:232]), .dir(1'b0),
        .out_top(stg_10[231:224]), .out_bot(stg_10[239:232])
    );
    cas cas_159 (
        .in_top(stg_9[247:240]), .in_bot(stg_9[255:248]), .dir(1'b0),
        .out_top(stg_10[247:240]), .out_bot(stg_10[255:248])
    );

    // --- STAGE 11 ---
    cas cas_160 (
        .in_top(stg_10[7:0]), .in_bot(stg_10[135:128]), .dir(1'b1),
        .out_top(stg_11[7:0]), .out_bot(stg_11[135:128])
    );
    cas cas_161 (
        .in_top(stg_10[15:8]), .in_bot(stg_10[143:136]), .dir(1'b1),
        .out_top(stg_11[15:8]), .out_bot(stg_11[143:136])
    );
    cas cas_162 (
        .in_top(stg_10[23:16]), .in_bot(stg_10[151:144]), .dir(1'b1),
        .out_top(stg_11[23:16]), .out_bot(stg_11[151:144])
    );
    cas cas_163 (
        .in_top(stg_10[31:24]), .in_bot(stg_10[159:152]), .dir(1'b1),
        .out_top(stg_11[31:24]), .out_bot(stg_11[159:152])
    );
    cas cas_164 (
        .in_top(stg_10[39:32]), .in_bot(stg_10[167:160]), .dir(1'b1),
        .out_top(stg_11[39:32]), .out_bot(stg_11[167:160])
    );
    cas cas_165 (
        .in_top(stg_10[47:40]), .in_bot(stg_10[175:168]), .dir(1'b1),
        .out_top(stg_11[47:40]), .out_bot(stg_11[175:168])
    );
    cas cas_166 (
        .in_top(stg_10[55:48]), .in_bot(stg_10[183:176]), .dir(1'b1),
        .out_top(stg_11[55:48]), .out_bot(stg_11[183:176])
    );
    cas cas_167 (
        .in_top(stg_10[63:56]), .in_bot(stg_10[191:184]), .dir(1'b1),
        .out_top(stg_11[63:56]), .out_bot(stg_11[191:184])
    );
    cas cas_168 (
        .in_top(stg_10[71:64]), .in_bot(stg_10[199:192]), .dir(1'b1),
        .out_top(stg_11[71:64]), .out_bot(stg_11[199:192])
    );
    cas cas_169 (
        .in_top(stg_10[79:72]), .in_bot(stg_10[207:200]), .dir(1'b1),
        .out_top(stg_11[79:72]), .out_bot(stg_11[207:200])
    );
    cas cas_170 (
        .in_top(stg_10[87:80]), .in_bot(stg_10[215:208]), .dir(1'b1),
        .out_top(stg_11[87:80]), .out_bot(stg_11[215:208])
    );
    cas cas_171 (
        .in_top(stg_10[95:88]), .in_bot(stg_10[223:216]), .dir(1'b1),
        .out_top(stg_11[95:88]), .out_bot(stg_11[223:216])
    );
    cas cas_172 (
        .in_top(stg_10[103:96]), .in_bot(stg_10[231:224]), .dir(1'b1),
        .out_top(stg_11[103:96]), .out_bot(stg_11[231:224])
    );
    cas cas_173 (
        .in_top(stg_10[111:104]), .in_bot(stg_10[239:232]), .dir(1'b1),
        .out_top(stg_11[111:104]), .out_bot(stg_11[239:232])
    );
    cas cas_174 (
        .in_top(stg_10[119:112]), .in_bot(stg_10[247:240]), .dir(1'b1),
        .out_top(stg_11[119:112]), .out_bot(stg_11[247:240])
    );
    cas cas_175 (
        .in_top(stg_10[127:120]), .in_bot(stg_10[255:248]), .dir(1'b1),
        .out_top(stg_11[127:120]), .out_bot(stg_11[255:248])
    );

    // --- STAGE 12 ---
    cas cas_176 (
        .in_top(stg_11[7:0]), .in_bot(stg_11[71:64]), .dir(1'b1),
        .out_top(stg_12[7:0]), .out_bot(stg_12[71:64])
    );
    cas cas_177 (
        .in_top(stg_11[15:8]), .in_bot(stg_11[79:72]), .dir(1'b1),
        .out_top(stg_12[15:8]), .out_bot(stg_12[79:72])
    );
    cas cas_178 (
        .in_top(stg_11[23:16]), .in_bot(stg_11[87:80]), .dir(1'b1),
        .out_top(stg_12[23:16]), .out_bot(stg_12[87:80])
    );
    cas cas_179 (
        .in_top(stg_11[31:24]), .in_bot(stg_11[95:88]), .dir(1'b1),
        .out_top(stg_12[31:24]), .out_bot(stg_12[95:88])
    );
    cas cas_180 (
        .in_top(stg_11[39:32]), .in_bot(stg_11[103:96]), .dir(1'b1),
        .out_top(stg_12[39:32]), .out_bot(stg_12[103:96])
    );
    cas cas_181 (
        .in_top(stg_11[47:40]), .in_bot(stg_11[111:104]), .dir(1'b1),
        .out_top(stg_12[47:40]), .out_bot(stg_12[111:104])
    );
    cas cas_182 (
        .in_top(stg_11[55:48]), .in_bot(stg_11[119:112]), .dir(1'b1),
        .out_top(stg_12[55:48]), .out_bot(stg_12[119:112])
    );
    cas cas_183 (
        .in_top(stg_11[63:56]), .in_bot(stg_11[127:120]), .dir(1'b1),
        .out_top(stg_12[63:56]), .out_bot(stg_12[127:120])
    );
    cas cas_184 (
        .in_top(stg_11[135:128]), .in_bot(stg_11[199:192]), .dir(1'b1),
        .out_top(stg_12[135:128]), .out_bot(stg_12[199:192])
    );
    cas cas_185 (
        .in_top(stg_11[143:136]), .in_bot(stg_11[207:200]), .dir(1'b1),
        .out_top(stg_12[143:136]), .out_bot(stg_12[207:200])
    );
    cas cas_186 (
        .in_top(stg_11[151:144]), .in_bot(stg_11[215:208]), .dir(1'b1),
        .out_top(stg_12[151:144]), .out_bot(stg_12[215:208])
    );
    cas cas_187 (
        .in_top(stg_11[159:152]), .in_bot(stg_11[223:216]), .dir(1'b1),
        .out_top(stg_12[159:152]), .out_bot(stg_12[223:216])
    );
    cas cas_188 (
        .in_top(stg_11[167:160]), .in_bot(stg_11[231:224]), .dir(1'b1),
        .out_top(stg_12[167:160]), .out_bot(stg_12[231:224])
    );
    cas cas_189 (
        .in_top(stg_11[175:168]), .in_bot(stg_11[239:232]), .dir(1'b1),
        .out_top(stg_12[175:168]), .out_bot(stg_12[239:232])
    );
    cas cas_190 (
        .in_top(stg_11[183:176]), .in_bot(stg_11[247:240]), .dir(1'b1),
        .out_top(stg_12[183:176]), .out_bot(stg_12[247:240])
    );
    cas cas_191 (
        .in_top(stg_11[191:184]), .in_bot(stg_11[255:248]), .dir(1'b1),
        .out_top(stg_12[191:184]), .out_bot(stg_12[255:248])
    );

    // --- STAGE 13 ---
    cas cas_192 (
        .in_top(stg_12[7:0]), .in_bot(stg_12[39:32]), .dir(1'b1),
        .out_top(stg_13[7:0]), .out_bot(stg_13[39:32])
    );
    cas cas_193 (
        .in_top(stg_12[15:8]), .in_bot(stg_12[47:40]), .dir(1'b1),
        .out_top(stg_13[15:8]), .out_bot(stg_13[47:40])
    );
    cas cas_194 (
        .in_top(stg_12[23:16]), .in_bot(stg_12[55:48]), .dir(1'b1),
        .out_top(stg_13[23:16]), .out_bot(stg_13[55:48])
    );
    cas cas_195 (
        .in_top(stg_12[31:24]), .in_bot(stg_12[63:56]), .dir(1'b1),
        .out_top(stg_13[31:24]), .out_bot(stg_13[63:56])
    );
    cas cas_196 (
        .in_top(stg_12[71:64]), .in_bot(stg_12[103:96]), .dir(1'b1),
        .out_top(stg_13[71:64]), .out_bot(stg_13[103:96])
    );
    cas cas_197 (
        .in_top(stg_12[79:72]), .in_bot(stg_12[111:104]), .dir(1'b1),
        .out_top(stg_13[79:72]), .out_bot(stg_13[111:104])
    );
    cas cas_198 (
        .in_top(stg_12[87:80]), .in_bot(stg_12[119:112]), .dir(1'b1),
        .out_top(stg_13[87:80]), .out_bot(stg_13[119:112])
    );
    cas cas_199 (
        .in_top(stg_12[95:88]), .in_bot(stg_12[127:120]), .dir(1'b1),
        .out_top(stg_13[95:88]), .out_bot(stg_13[127:120])
    );
    cas cas_200 (
        .in_top(stg_12[135:128]), .in_bot(stg_12[167:160]), .dir(1'b1),
        .out_top(stg_13[135:128]), .out_bot(stg_13[167:160])
    );
    cas cas_201 (
        .in_top(stg_12[143:136]), .in_bot(stg_12[175:168]), .dir(1'b1),
        .out_top(stg_13[143:136]), .out_bot(stg_13[175:168])
    );
    cas cas_202 (
        .in_top(stg_12[151:144]), .in_bot(stg_12[183:176]), .dir(1'b1),
        .out_top(stg_13[151:144]), .out_bot(stg_13[183:176])
    );
    cas cas_203 (
        .in_top(stg_12[159:152]), .in_bot(stg_12[191:184]), .dir(1'b1),
        .out_top(stg_13[159:152]), .out_bot(stg_13[191:184])
    );
    cas cas_204 (
        .in_top(stg_12[199:192]), .in_bot(stg_12[231:224]), .dir(1'b1),
        .out_top(stg_13[199:192]), .out_bot(stg_13[231:224])
    );
    cas cas_205 (
        .in_top(stg_12[207:200]), .in_bot(stg_12[239:232]), .dir(1'b1),
        .out_top(stg_13[207:200]), .out_bot(stg_13[239:232])
    );
    cas cas_206 (
        .in_top(stg_12[215:208]), .in_bot(stg_12[247:240]), .dir(1'b1),
        .out_top(stg_13[215:208]), .out_bot(stg_13[247:240])
    );
    cas cas_207 (
        .in_top(stg_12[223:216]), .in_bot(stg_12[255:248]), .dir(1'b1),
        .out_top(stg_13[223:216]), .out_bot(stg_13[255:248])
    );

    // --- STAGE 14 ---
    cas cas_208 (
        .in_top(stg_13[7:0]), .in_bot(stg_13[23:16]), .dir(1'b1),
        .out_top(stg_14[7:0]), .out_bot(stg_14[23:16])
    );
    cas cas_209 (
        .in_top(stg_13[15:8]), .in_bot(stg_13[31:24]), .dir(1'b1),
        .out_top(stg_14[15:8]), .out_bot(stg_14[31:24])
    );
    cas cas_210 (
        .in_top(stg_13[39:32]), .in_bot(stg_13[55:48]), .dir(1'b1),
        .out_top(stg_14[39:32]), .out_bot(stg_14[55:48])
    );
    cas cas_211 (
        .in_top(stg_13[47:40]), .in_bot(stg_13[63:56]), .dir(1'b1),
        .out_top(stg_14[47:40]), .out_bot(stg_14[63:56])
    );
    cas cas_212 (
        .in_top(stg_13[71:64]), .in_bot(stg_13[87:80]), .dir(1'b1),
        .out_top(stg_14[71:64]), .out_bot(stg_14[87:80])
    );
    cas cas_213 (
        .in_top(stg_13[79:72]), .in_bot(stg_13[95:88]), .dir(1'b1),
        .out_top(stg_14[79:72]), .out_bot(stg_14[95:88])
    );
    cas cas_214 (
        .in_top(stg_13[103:96]), .in_bot(stg_13[119:112]), .dir(1'b1),
        .out_top(stg_14[103:96]), .out_bot(stg_14[119:112])
    );
    cas cas_215 (
        .in_top(stg_13[111:104]), .in_bot(stg_13[127:120]), .dir(1'b1),
        .out_top(stg_14[111:104]), .out_bot(stg_14[127:120])
    );
    cas cas_216 (
        .in_top(stg_13[135:128]), .in_bot(stg_13[151:144]), .dir(1'b1),
        .out_top(stg_14[135:128]), .out_bot(stg_14[151:144])
    );
    cas cas_217 (
        .in_top(stg_13[143:136]), .in_bot(stg_13[159:152]), .dir(1'b1),
        .out_top(stg_14[143:136]), .out_bot(stg_14[159:152])
    );
    cas cas_218 (
        .in_top(stg_13[167:160]), .in_bot(stg_13[183:176]), .dir(1'b1),
        .out_top(stg_14[167:160]), .out_bot(stg_14[183:176])
    );
    cas cas_219 (
        .in_top(stg_13[175:168]), .in_bot(stg_13[191:184]), .dir(1'b1),
        .out_top(stg_14[175:168]), .out_bot(stg_14[191:184])
    );
    cas cas_220 (
        .in_top(stg_13[199:192]), .in_bot(stg_13[215:208]), .dir(1'b1),
        .out_top(stg_14[199:192]), .out_bot(stg_14[215:208])
    );
    cas cas_221 (
        .in_top(stg_13[207:200]), .in_bot(stg_13[223:216]), .dir(1'b1),
        .out_top(stg_14[207:200]), .out_bot(stg_14[223:216])
    );
    cas cas_222 (
        .in_top(stg_13[231:224]), .in_bot(stg_13[247:240]), .dir(1'b1),
        .out_top(stg_14[231:224]), .out_bot(stg_14[247:240])
    );
    cas cas_223 (
        .in_top(stg_13[239:232]), .in_bot(stg_13[255:248]), .dir(1'b1),
        .out_top(stg_14[239:232]), .out_bot(stg_14[255:248])
    );

    // --- STAGE 15 ---
    cas cas_224 (
        .in_top(stg_14[7:0]), .in_bot(stg_14[15:8]), .dir(1'b1),
        .out_top(stg_15[7:0]), .out_bot(stg_15[15:8])
    );
    cas cas_225 (
        .in_top(stg_14[23:16]), .in_bot(stg_14[31:24]), .dir(1'b1),
        .out_top(stg_15[23:16]), .out_bot(stg_15[31:24])
    );
    cas cas_226 (
        .in_top(stg_14[39:32]), .in_bot(stg_14[47:40]), .dir(1'b1),
        .out_top(stg_15[39:32]), .out_bot(stg_15[47:40])
    );
    cas cas_227 (
        .in_top(stg_14[55:48]), .in_bot(stg_14[63:56]), .dir(1'b1),
        .out_top(stg_15[55:48]), .out_bot(stg_15[63:56])
    );
    cas cas_228 (
        .in_top(stg_14[71:64]), .in_bot(stg_14[79:72]), .dir(1'b1),
        .out_top(stg_15[71:64]), .out_bot(stg_15[79:72])
    );
    cas cas_229 (
        .in_top(stg_14[87:80]), .in_bot(stg_14[95:88]), .dir(1'b1),
        .out_top(stg_15[87:80]), .out_bot(stg_15[95:88])
    );
    cas cas_230 (
        .in_top(stg_14[103:96]), .in_bot(stg_14[111:104]), .dir(1'b1),
        .out_top(stg_15[103:96]), .out_bot(stg_15[111:104])
    );
    cas cas_231 (
        .in_top(stg_14[119:112]), .in_bot(stg_14[127:120]), .dir(1'b1),
        .out_top(stg_15[119:112]), .out_bot(stg_15[127:120])
    );
    cas cas_232 (
        .in_top(stg_14[135:128]), .in_bot(stg_14[143:136]), .dir(1'b1),
        .out_top(stg_15[135:128]), .out_bot(stg_15[143:136])
    );
    cas cas_233 (
        .in_top(stg_14[151:144]), .in_bot(stg_14[159:152]), .dir(1'b1),
        .out_top(stg_15[151:144]), .out_bot(stg_15[159:152])
    );
    cas cas_234 (
        .in_top(stg_14[167:160]), .in_bot(stg_14[175:168]), .dir(1'b1),
        .out_top(stg_15[167:160]), .out_bot(stg_15[175:168])
    );
    cas cas_235 (
        .in_top(stg_14[183:176]), .in_bot(stg_14[191:184]), .dir(1'b1),
        .out_top(stg_15[183:176]), .out_bot(stg_15[191:184])
    );
    cas cas_236 (
        .in_top(stg_14[199:192]), .in_bot(stg_14[207:200]), .dir(1'b1),
        .out_top(stg_15[199:192]), .out_bot(stg_15[207:200])
    );
    cas cas_237 (
        .in_top(stg_14[215:208]), .in_bot(stg_14[223:216]), .dir(1'b1),
        .out_top(stg_15[215:208]), .out_bot(stg_15[223:216])
    );
    cas cas_238 (
        .in_top(stg_14[231:224]), .in_bot(stg_14[239:232]), .dir(1'b1),
        .out_top(stg_15[231:224]), .out_bot(stg_15[239:232])
    );
    cas cas_239 (
        .in_top(stg_14[247:240]), .in_bot(stg_14[255:248]), .dir(1'b1),
        .out_top(stg_15[247:240]), .out_bot(stg_15[255:248])
    );

    // Map final stage (15) to output bus
    assign sorted_bus = stg_15;
endmodule