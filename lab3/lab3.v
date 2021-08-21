module lab3(input clk, output sclk, output din, output sync, output ldac,
	output clr, input [7:0] sin_freq);
wire inner_clk;

clk_divider divider(.clk(clk), .out_clk(inner_clk));
SPI_controller my_SPI(.clk(inner_clk), .sclk(sclk),
	.din(din), .sync(sync), .ldac(ldac), .clr(clr),
	.sin_freq(sin_freq));
endmodule

module SPI_controller #(parameter n = 16)
	(input clk, output sclk, output din, output sync, output ldac, output clr,
	input [7:0] sin_freq);
parameter DACA = 0 << 15;
parameter GAIN = 0 << 14;
parameter IGNORED_BITS = 2'b11;
parameter LSBS = 4'b1100;
parameter start_clks = 1;

parameter ENTRY_COUNT = 512;
wire [9:0] sin_table [ENTRY_COUNT-1:0];
assign sin_table[0] = 10'h205;
assign sin_table[1] = 10'h20c;
assign sin_table[2] = 10'h212;
assign sin_table[3] = 10'h218;
assign sin_table[4] = 10'h21e;
assign sin_table[5] = 10'h225;
assign sin_table[6] = 10'h22b;
assign sin_table[7] = 10'h231;
assign sin_table[8] = 10'h237;
assign sin_table[9] = 10'h23e;
assign sin_table[10] = 10'h244;
assign sin_table[11] = 10'h24a;
assign sin_table[12] = 10'h250;
assign sin_table[13] = 10'h256;
assign sin_table[14] = 10'h25d;
assign sin_table[15] = 10'h263;
assign sin_table[16] = 10'h269;
assign sin_table[17] = 10'h26f;
assign sin_table[18] = 10'h275;
assign sin_table[19] = 10'h27b;
assign sin_table[20] = 10'h281;
assign sin_table[21] = 10'h287;
assign sin_table[22] = 10'h28d;
assign sin_table[23] = 10'h293;
assign sin_table[24] = 10'h299;
assign sin_table[25] = 10'h29f;
assign sin_table[26] = 10'h2a5;
assign sin_table[27] = 10'h2ab;
assign sin_table[28] = 10'h2b1;
assign sin_table[29] = 10'h2b7;
assign sin_table[30] = 10'h2bd;
assign sin_table[31] = 10'h2c3;
assign sin_table[32] = 10'h2c9;
assign sin_table[33] = 10'h2ce;
assign sin_table[34] = 10'h2d4;
assign sin_table[35] = 10'h2da;
assign sin_table[36] = 10'h2df;
assign sin_table[37] = 10'h2e5;
assign sin_table[38] = 10'h2eb;
assign sin_table[39] = 10'h2f0;
assign sin_table[40] = 10'h2f6;
assign sin_table[41] = 10'h2fb;
assign sin_table[42] = 10'h301;
assign sin_table[43] = 10'h306;
assign sin_table[44] = 10'h30b;
assign sin_table[45] = 10'h311;
assign sin_table[46] = 10'h316;
assign sin_table[47] = 10'h31b;
assign sin_table[48] = 10'h320;
assign sin_table[49] = 10'h326;
assign sin_table[50] = 10'h32b;
assign sin_table[51] = 10'h330;
assign sin_table[52] = 10'h335;
assign sin_table[53] = 10'h33a;
assign sin_table[54] = 10'h33f;
assign sin_table[55] = 10'h343;
assign sin_table[56] = 10'h348;
assign sin_table[57] = 10'h34d;
assign sin_table[58] = 10'h352;
assign sin_table[59] = 10'h357;
assign sin_table[60] = 10'h35b;
assign sin_table[61] = 10'h360;
assign sin_table[62] = 10'h364;
assign sin_table[63] = 10'h369;
assign sin_table[64] = 10'h36d;
assign sin_table[65] = 10'h371;
assign sin_table[66] = 10'h376;
assign sin_table[67] = 10'h37a;
assign sin_table[68] = 10'h37e;
assign sin_table[69] = 10'h382;
assign sin_table[70] = 10'h386;
assign sin_table[71] = 10'h38a;
assign sin_table[72] = 10'h38e;
assign sin_table[73] = 10'h392;
assign sin_table[74] = 10'h396;
assign sin_table[75] = 10'h39a;
assign sin_table[76] = 10'h39e;
assign sin_table[77] = 10'h3a1;
assign sin_table[78] = 10'h3a5;
assign sin_table[79] = 10'h3a8;
assign sin_table[80] = 10'h3ac;
assign sin_table[81] = 10'h3af;
assign sin_table[82] = 10'h3b2;
assign sin_table[83] = 10'h3b6;
assign sin_table[84] = 10'h3b9;
assign sin_table[85] = 10'h3bc;
assign sin_table[86] = 10'h3bf;
assign sin_table[87] = 10'h3c2;
assign sin_table[88] = 10'h3c5;
assign sin_table[89] = 10'h3c8;
assign sin_table[90] = 10'h3cb;
assign sin_table[91] = 10'h3cd;
assign sin_table[92] = 10'h3d0;
assign sin_table[93] = 10'h3d3;
assign sin_table[94] = 10'h3d5;
assign sin_table[95] = 10'h3d8;
assign sin_table[96] = 10'h3da;
assign sin_table[97] = 10'h3dc;
assign sin_table[98] = 10'h3de;
assign sin_table[99] = 10'h3e1;
assign sin_table[100] = 10'h3e3;
assign sin_table[101] = 10'h3e5;
assign sin_table[102] = 10'h3e7;
assign sin_table[103] = 10'h3e8;
assign sin_table[104] = 10'h3ea;
assign sin_table[105] = 10'h3ec;
assign sin_table[106] = 10'h3ee;
assign sin_table[107] = 10'h3ef;
assign sin_table[108] = 10'h3f1;
assign sin_table[109] = 10'h3f2;
assign sin_table[110] = 10'h3f3;
assign sin_table[111] = 10'h3f5;
assign sin_table[112] = 10'h3f6;
assign sin_table[113] = 10'h3f7;
assign sin_table[114] = 10'h3f8;
assign sin_table[115] = 10'h3f9;
assign sin_table[116] = 10'h3fa;
assign sin_table[117] = 10'h3fb;
assign sin_table[118] = 10'h3fb;
assign sin_table[119] = 10'h3fc;
assign sin_table[120] = 10'h3fd;
assign sin_table[121] = 10'h3fd;
assign sin_table[122] = 10'h3fe;
assign sin_table[123] = 10'h3fe;
assign sin_table[124] = 10'h3fe;
assign sin_table[125] = 10'h3fe;
assign sin_table[126] = 10'h3fe;
assign sin_table[127] = 10'h3ff;
assign sin_table[128] = 10'h3fe;
assign sin_table[129] = 10'h3fe;
assign sin_table[130] = 10'h3fe;
assign sin_table[131] = 10'h3fe;
assign sin_table[132] = 10'h3fe;
assign sin_table[133] = 10'h3fd;
assign sin_table[134] = 10'h3fd;
assign sin_table[135] = 10'h3fc;
assign sin_table[136] = 10'h3fb;
assign sin_table[137] = 10'h3fb;
assign sin_table[138] = 10'h3fa;
assign sin_table[139] = 10'h3f9;
assign sin_table[140] = 10'h3f8;
assign sin_table[141] = 10'h3f7;
assign sin_table[142] = 10'h3f6;
assign sin_table[143] = 10'h3f5;
assign sin_table[144] = 10'h3f3;
assign sin_table[145] = 10'h3f2;
assign sin_table[146] = 10'h3f1;
assign sin_table[147] = 10'h3ef;
assign sin_table[148] = 10'h3ee;
assign sin_table[149] = 10'h3ec;
assign sin_table[150] = 10'h3ea;
assign sin_table[151] = 10'h3e8;
assign sin_table[152] = 10'h3e7;
assign sin_table[153] = 10'h3e5;
assign sin_table[154] = 10'h3e3;
assign sin_table[155] = 10'h3e1;
assign sin_table[156] = 10'h3de;
assign sin_table[157] = 10'h3dc;
assign sin_table[158] = 10'h3da;
assign sin_table[159] = 10'h3d8;
assign sin_table[160] = 10'h3d5;
assign sin_table[161] = 10'h3d3;
assign sin_table[162] = 10'h3d0;
assign sin_table[163] = 10'h3cd;
assign sin_table[164] = 10'h3cb;
assign sin_table[165] = 10'h3c8;
assign sin_table[166] = 10'h3c5;
assign sin_table[167] = 10'h3c2;
assign sin_table[168] = 10'h3bf;
assign sin_table[169] = 10'h3bc;
assign sin_table[170] = 10'h3b9;
assign sin_table[171] = 10'h3b6;
assign sin_table[172] = 10'h3b2;
assign sin_table[173] = 10'h3af;
assign sin_table[174] = 10'h3ac;
assign sin_table[175] = 10'h3a8;
assign sin_table[176] = 10'h3a5;
assign sin_table[177] = 10'h3a1;
assign sin_table[178] = 10'h39e;
assign sin_table[179] = 10'h39a;
assign sin_table[180] = 10'h396;
assign sin_table[181] = 10'h392;
assign sin_table[182] = 10'h38e;
assign sin_table[183] = 10'h38a;
assign sin_table[184] = 10'h386;
assign sin_table[185] = 10'h382;
assign sin_table[186] = 10'h37e;
assign sin_table[187] = 10'h37a;
assign sin_table[188] = 10'h376;
assign sin_table[189] = 10'h371;
assign sin_table[190] = 10'h36d;
assign sin_table[191] = 10'h369;
assign sin_table[192] = 10'h364;
assign sin_table[193] = 10'h360;
assign sin_table[194] = 10'h35b;
assign sin_table[195] = 10'h357;
assign sin_table[196] = 10'h352;
assign sin_table[197] = 10'h34d;
assign sin_table[198] = 10'h348;
assign sin_table[199] = 10'h343;
assign sin_table[200] = 10'h33f;
assign sin_table[201] = 10'h33a;
assign sin_table[202] = 10'h335;
assign sin_table[203] = 10'h330;
assign sin_table[204] = 10'h32b;
assign sin_table[205] = 10'h326;
assign sin_table[206] = 10'h320;
assign sin_table[207] = 10'h31b;
assign sin_table[208] = 10'h316;
assign sin_table[209] = 10'h311;
assign sin_table[210] = 10'h30b;
assign sin_table[211] = 10'h306;
assign sin_table[212] = 10'h301;
assign sin_table[213] = 10'h2fb;
assign sin_table[214] = 10'h2f6;
assign sin_table[215] = 10'h2f0;
assign sin_table[216] = 10'h2eb;
assign sin_table[217] = 10'h2e5;
assign sin_table[218] = 10'h2df;
assign sin_table[219] = 10'h2da;
assign sin_table[220] = 10'h2d4;
assign sin_table[221] = 10'h2ce;
assign sin_table[222] = 10'h2c9;
assign sin_table[223] = 10'h2c3;
assign sin_table[224] = 10'h2bd;
assign sin_table[225] = 10'h2b7;
assign sin_table[226] = 10'h2b1;
assign sin_table[227] = 10'h2ab;
assign sin_table[228] = 10'h2a5;
assign sin_table[229] = 10'h29f;
assign sin_table[230] = 10'h299;
assign sin_table[231] = 10'h293;
assign sin_table[232] = 10'h28d;
assign sin_table[233] = 10'h287;
assign sin_table[234] = 10'h281;
assign sin_table[235] = 10'h27b;
assign sin_table[236] = 10'h275;
assign sin_table[237] = 10'h26f;
assign sin_table[238] = 10'h269;
assign sin_table[239] = 10'h263;
assign sin_table[240] = 10'h25d;
assign sin_table[241] = 10'h256;
assign sin_table[242] = 10'h250;
assign sin_table[243] = 10'h24a;
assign sin_table[244] = 10'h244;
assign sin_table[245] = 10'h23e;
assign sin_table[246] = 10'h237;
assign sin_table[247] = 10'h231;
assign sin_table[248] = 10'h22b;
assign sin_table[249] = 10'h225;
assign sin_table[250] = 10'h21e;
assign sin_table[251] = 10'h218;
assign sin_table[252] = 10'h212;
assign sin_table[253] = 10'h20c;
assign sin_table[254] = 10'h205;
assign sin_table[255] = 10'h1ff;
assign sin_table[256] = 10'h1f9;
assign sin_table[257] = 10'h1f2;
assign sin_table[258] = 10'h1ec;
assign sin_table[259] = 10'h1e6;
assign sin_table[260] = 10'h1e0;
assign sin_table[261] = 10'h1d9;
assign sin_table[262] = 10'h1d3;
assign sin_table[263] = 10'h1cd;
assign sin_table[264] = 10'h1c7;
assign sin_table[265] = 10'h1c0;
assign sin_table[266] = 10'h1ba;
assign sin_table[267] = 10'h1b4;
assign sin_table[268] = 10'h1ae;
assign sin_table[269] = 10'h1a8;
assign sin_table[270] = 10'h1a1;
assign sin_table[271] = 10'h19b;
assign sin_table[272] = 10'h195;
assign sin_table[273] = 10'h18f;
assign sin_table[274] = 10'h189;
assign sin_table[275] = 10'h183;
assign sin_table[276] = 10'h17d;
assign sin_table[277] = 10'h177;
assign sin_table[278] = 10'h171;
assign sin_table[279] = 10'h16b;
assign sin_table[280] = 10'h165;
assign sin_table[281] = 10'h15f;
assign sin_table[282] = 10'h159;
assign sin_table[283] = 10'h153;
assign sin_table[284] = 10'h14d;
assign sin_table[285] = 10'h147;
assign sin_table[286] = 10'h141;
assign sin_table[287] = 10'h13b;
assign sin_table[288] = 10'h135;
assign sin_table[289] = 10'h130;
assign sin_table[290] = 10'h12a;
assign sin_table[291] = 10'h124;
assign sin_table[292] = 10'h11f;
assign sin_table[293] = 10'h119;
assign sin_table[294] = 10'h113;
assign sin_table[295] = 10'h10e;
assign sin_table[296] = 10'h108;
assign sin_table[297] = 10'h103;
assign sin_table[298] = 10'hfd;
assign sin_table[299] = 10'hf8;
assign sin_table[300] = 10'hf3;
assign sin_table[301] = 10'hed;
assign sin_table[302] = 10'he8;
assign sin_table[303] = 10'he3;
assign sin_table[304] = 10'hde;
assign sin_table[305] = 10'hd8;
assign sin_table[306] = 10'hd3;
assign sin_table[307] = 10'hce;
assign sin_table[308] = 10'hc9;
assign sin_table[309] = 10'hc4;
assign sin_table[310] = 10'hbf;
assign sin_table[311] = 10'hbb;
assign sin_table[312] = 10'hb6;
assign sin_table[313] = 10'hb1;
assign sin_table[314] = 10'hac;
assign sin_table[315] = 10'ha7;
assign sin_table[316] = 10'ha3;
assign sin_table[317] = 10'h9e;
assign sin_table[318] = 10'h9a;
assign sin_table[319] = 10'h95;
assign sin_table[320] = 10'h91;
assign sin_table[321] = 10'h8d;
assign sin_table[322] = 10'h88;
assign sin_table[323] = 10'h84;
assign sin_table[324] = 10'h80;
assign sin_table[325] = 10'h7c;
assign sin_table[326] = 10'h78;
assign sin_table[327] = 10'h74;
assign sin_table[328] = 10'h70;
assign sin_table[329] = 10'h6c;
assign sin_table[330] = 10'h68;
assign sin_table[331] = 10'h64;
assign sin_table[332] = 10'h60;
assign sin_table[333] = 10'h5d;
assign sin_table[334] = 10'h59;
assign sin_table[335] = 10'h56;
assign sin_table[336] = 10'h52;
assign sin_table[337] = 10'h4f;
assign sin_table[338] = 10'h4c;
assign sin_table[339] = 10'h48;
assign sin_table[340] = 10'h45;
assign sin_table[341] = 10'h42;
assign sin_table[342] = 10'h3f;
assign sin_table[343] = 10'h3c;
assign sin_table[344] = 10'h39;
assign sin_table[345] = 10'h36;
assign sin_table[346] = 10'h33;
assign sin_table[347] = 10'h31;
assign sin_table[348] = 10'h2e;
assign sin_table[349] = 10'h2b;
assign sin_table[350] = 10'h29;
assign sin_table[351] = 10'h26;
assign sin_table[352] = 10'h24;
assign sin_table[353] = 10'h22;
assign sin_table[354] = 10'h20;
assign sin_table[355] = 10'h1d;
assign sin_table[356] = 10'h1b;
assign sin_table[357] = 10'h19;
assign sin_table[358] = 10'h17;
assign sin_table[359] = 10'h16;
assign sin_table[360] = 10'h14;
assign sin_table[361] = 10'h12;
assign sin_table[362] = 10'h10;
assign sin_table[363] = 10'hf;
assign sin_table[364] = 10'hd;
assign sin_table[365] = 10'hc;
assign sin_table[366] = 10'hb;
assign sin_table[367] = 10'h9;
assign sin_table[368] = 10'h8;
assign sin_table[369] = 10'h7;
assign sin_table[370] = 10'h6;
assign sin_table[371] = 10'h5;
assign sin_table[372] = 10'h4;
assign sin_table[373] = 10'h3;
assign sin_table[374] = 10'h3;
assign sin_table[375] = 10'h2;
assign sin_table[376] = 10'h1;
assign sin_table[377] = 10'h1;
assign sin_table[378] = 10'h0;
assign sin_table[379] = 10'h0;
assign sin_table[380] = 10'h0;
assign sin_table[381] = 10'h0;
assign sin_table[382] = 10'h0;
assign sin_table[383] = 10'h0;
assign sin_table[384] = 10'h0;
assign sin_table[385] = 10'h0;
assign sin_table[386] = 10'h0;
assign sin_table[387] = 10'h0;
assign sin_table[388] = 10'h0;
assign sin_table[389] = 10'h1;
assign sin_table[390] = 10'h1;
assign sin_table[391] = 10'h2;
assign sin_table[392] = 10'h3;
assign sin_table[393] = 10'h3;
assign sin_table[394] = 10'h4;
assign sin_table[395] = 10'h5;
assign sin_table[396] = 10'h6;
assign sin_table[397] = 10'h7;
assign sin_table[398] = 10'h8;
assign sin_table[399] = 10'h9;
assign sin_table[400] = 10'hb;
assign sin_table[401] = 10'hc;
assign sin_table[402] = 10'hd;
assign sin_table[403] = 10'hf;
assign sin_table[404] = 10'h10;
assign sin_table[405] = 10'h12;
assign sin_table[406] = 10'h14;
assign sin_table[407] = 10'h16;
assign sin_table[408] = 10'h17;
assign sin_table[409] = 10'h19;
assign sin_table[410] = 10'h1b;
assign sin_table[411] = 10'h1d;
assign sin_table[412] = 10'h20;
assign sin_table[413] = 10'h22;
assign sin_table[414] = 10'h24;
assign sin_table[415] = 10'h26;
assign sin_table[416] = 10'h29;
assign sin_table[417] = 10'h2b;
assign sin_table[418] = 10'h2e;
assign sin_table[419] = 10'h31;
assign sin_table[420] = 10'h33;
assign sin_table[421] = 10'h36;
assign sin_table[422] = 10'h39;
assign sin_table[423] = 10'h3c;
assign sin_table[424] = 10'h3f;
assign sin_table[425] = 10'h42;
assign sin_table[426] = 10'h45;
assign sin_table[427] = 10'h48;
assign sin_table[428] = 10'h4c;
assign sin_table[429] = 10'h4f;
assign sin_table[430] = 10'h52;
assign sin_table[431] = 10'h56;
assign sin_table[432] = 10'h59;
assign sin_table[433] = 10'h5d;
assign sin_table[434] = 10'h60;
assign sin_table[435] = 10'h64;
assign sin_table[436] = 10'h68;
assign sin_table[437] = 10'h6c;
assign sin_table[438] = 10'h70;
assign sin_table[439] = 10'h74;
assign sin_table[440] = 10'h78;
assign sin_table[441] = 10'h7c;
assign sin_table[442] = 10'h80;
assign sin_table[443] = 10'h84;
assign sin_table[444] = 10'h88;
assign sin_table[445] = 10'h8d;
assign sin_table[446] = 10'h91;
assign sin_table[447] = 10'h95;
assign sin_table[448] = 10'h9a;
assign sin_table[449] = 10'h9e;
assign sin_table[450] = 10'ha3;
assign sin_table[451] = 10'ha7;
assign sin_table[452] = 10'hac;
assign sin_table[453] = 10'hb1;
assign sin_table[454] = 10'hb6;
assign sin_table[455] = 10'hbb;
assign sin_table[456] = 10'hbf;
assign sin_table[457] = 10'hc4;
assign sin_table[458] = 10'hc9;
assign sin_table[459] = 10'hce;
assign sin_table[460] = 10'hd3;
assign sin_table[461] = 10'hd8;
assign sin_table[462] = 10'hde;
assign sin_table[463] = 10'he3;
assign sin_table[464] = 10'he8;
assign sin_table[465] = 10'hed;
assign sin_table[466] = 10'hf3;
assign sin_table[467] = 10'hf8;
assign sin_table[468] = 10'hfd;
assign sin_table[469] = 10'h103;
assign sin_table[470] = 10'h108;
assign sin_table[471] = 10'h10e;
assign sin_table[472] = 10'h113;
assign sin_table[473] = 10'h119;
assign sin_table[474] = 10'h11f;
assign sin_table[475] = 10'h124;
assign sin_table[476] = 10'h12a;
assign sin_table[477] = 10'h130;
assign sin_table[478] = 10'h135;
assign sin_table[479] = 10'h13b;
assign sin_table[480] = 10'h141;
assign sin_table[481] = 10'h147;
assign sin_table[482] = 10'h14d;
assign sin_table[483] = 10'h153;
assign sin_table[484] = 10'h159;
assign sin_table[485] = 10'h15f;
assign sin_table[486] = 10'h165;
assign sin_table[487] = 10'h16b;
assign sin_table[488] = 10'h171;
assign sin_table[489] = 10'h177;
assign sin_table[490] = 10'h17d;
assign sin_table[491] = 10'h183;
assign sin_table[492] = 10'h189;
assign sin_table[493] = 10'h18f;
assign sin_table[494] = 10'h195;
assign sin_table[495] = 10'h19b;
assign sin_table[496] = 10'h1a1;
assign sin_table[497] = 10'h1a8;
assign sin_table[498] = 10'h1ae;
assign sin_table[499] = 10'h1b4;
assign sin_table[500] = 10'h1ba;
assign sin_table[501] = 10'h1c0;
assign sin_table[502] = 10'h1c7;
assign sin_table[503] = 10'h1cd;
assign sin_table[504] = 10'h1d3;
assign sin_table[505] = 10'h1d9;
assign sin_table[506] = 10'h1e0;
assign sin_table[507] = 10'h1e6;
assign sin_table[508] = 10'h1ec;
assign sin_table[509] = 10'h1f2;
assign sin_table[510] = 10'h1f9;
assign sin_table[511] = 10'h1ff;

reg [9:0] table_num = ENTRY_COUNT;

reg [n-1:0] input_register = 0;
reg [8:0] data_num = 0;
reg [7:0] sin_freq_cnt = 0;
reg [4:0] bit_number = 0;
reg start = 0, start_sclk = 0, inner_ldac = 1,
	inner_clr = 1, start_sync = 1, update = 0,
	hold_start = 0;
reg [2:0] start_clocks = 0;
	
assign sclk = start & clk;
assign din = input_register[n-1];
assign sync = ~start & start_sync;
assign ldac = inner_ldac;
assign clr = inner_clr;
always@(negedge clk)
begin
	if(sin_freq_cnt)
	begin
		sin_freq_cnt = sin_freq_cnt - 1;
		if(sin_freq_cnt == 0)
		begin
			hold_start <= 1;
			start_clocks <= 0;
		end
	end
	else
	if(hold_start)
	begin
		if(start_clocks < start_clks)
			start_clocks <= start_clocks + 1;
		else
		begin
			hold_start <= 0;
			start <= 1;
		end
	end
	else
	if(update)
	begin
		update <= 0;
		inner_ldac <= 0;
	end
	else
	if(~inner_ldac)
		inner_ldac <= 1;
	else
	if(bit_number == n)
	begin
		update <= 1;
		start <= 0;
	end
	else
	if(~start && ~hold_start)
		if(sin_freq == 0)
		begin
			hold_start <= 1;
			start_clocks <= 0;
		end
		else
			sin_freq_cnt <= sin_freq;
end
always@(posedge clk)
begin
	if(~start && hold_start)
	begin
		start_sync <= 1;
	end
	if(~start && ~hold_start)
	begin
		bit_number <= 0;
		start_sync <= 1;
	end
	else
	if(start && ~hold_start)
	begin
		if(bit_number == 0)
		begin
			if(table_num == ENTRY_COUNT)
				table_num = 0;
			input_register = (sin_table[table_num] << 1) | DACA | GAIN;
			table_num <= table_num + 1;
		end
	
		if(bit_number < (n-1))
		begin
			if(bit_number)
				input_register <= input_register << 1;
			bit_number <= bit_number + 1;
		end
		if(bit_number == (n-1))
		begin
			bit_number <= bit_number + 1;
			start_sync <= 0;
		end
	end
end
endmodule

module clk_divider (input clk, output out_clk);
parameter _30Mhz = 1;
reg [7:0] counter = 0;
reg out_clk_inner = 0;
assign out_clk = out_clk_inner;

always@ (posedge clk)
begin
	counter = counter + 1;
	if (counter == _30Mhz)
	begin
		counter = 0;
		out_clk_inner = ~out_clk_inner;
	end
end
endmodule