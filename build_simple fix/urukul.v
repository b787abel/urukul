/* Machine-generated using Migen */
module urukul(
	inout clk_div,
	output clk_in_sel,
	output clk_mmcx_osc_sel,
	output clk_osc_en_n,
	input dds_sync_clk0,
	output dds_sync_clk_out_en,
	output dds_sync_sync_sel,
	output dds_sync_sync_out_en,
	output dds_common_master_reset,
	output dds_common_io_reset,
	input [3:0] ifc_mode,
	input variant,
	output att_clk,
	output att_rst_n,
	output [3:0] att_le,
	output reg [3:0] att_s_in,
	input [3:0] att_s_out,
	output fsen,
	output dds_rf_sw,
	output reg [1:0] dds_led,
	input dds_smp_err,
	input dds_pll_lock,
	output dds_io_update,
	output [2:0] dds_profile,
	output dds_osk,
	input dds_drover,
	output dds_drhold,
	output dds_drctl,
	output dds_reset,
	output dds_sck,
	input dds_sdo,
	output dds_sdi,
	output dds_cs_n,
	output dds_rf_sw_1,
	output reg [1:0] dds_led_1,
	input dds_smp_err_1,
	input dds_pll_lock_1,
	output dds_io_update_1,
	output [2:0] dds_profile_1,
	output dds_osk_1,
	input dds_drover_1,
	output dds_drhold_1,
	output dds_drctl_1,
	output dds_reset_1,
	output dds_sck_1,
	input dds_sdo_1,
	output dds_sdi_1,
	output dds_cs_n_1,
	output dds_rf_sw_2,
	output reg [1:0] dds_led_2,
	input dds_smp_err_2,
	input dds_pll_lock_2,
	output dds_io_update_2,
	output [2:0] dds_profile_2,
	output dds_osk_2,
	input dds_drover_2,
	output dds_drhold_2,
	output dds_drctl_2,
	output dds_reset_2,
	output dds_sck_2,
	input dds_sdo_2,
	output dds_sdi_2,
	output dds_cs_n_2,
	output dds_rf_sw_3,
	output reg [1:0] dds_led_3,
	input dds_smp_err_3,
	input dds_pll_lock_3,
	output dds_io_update_3,
	output [2:0] dds_profile_3,
	output dds_osk_3,
	input dds_drover_3,
	output dds_drhold_3,
	output dds_drctl_3,
	output dds_reset_3,
	output dds_sck_3,
	input dds_sdo_3,
	output dds_sdi_3,
	output dds_cs_n_3,
	inout eem_io,
	output eem_oe,
	inout eem_io_1,
	output eem_oe_1,
	inout eem_io_2,
	output eem_oe_2,
	inout eem_io_3,
	output eem_oe_3,
	inout eem_io_4,
	output eem_oe_4,
	inout eem_io_5,
	output eem_oe_5,
	inout eem_io_6,
	output eem_oe_6,
	inout eem_io_7,
	output eem_oe_7,
	inout eem_io_8,
	output eem_oe_8,
	inout eem_io_9,
	output eem_oe_9,
	inout eem_io_10,
	output eem_oe_10,
	inout eem_io_11,
	output eem_oe_11,
	input eem_io_12,
	output eem_oe_12,
	input eem_io_13,
	output eem_oe_13,
	input eem_io_14,
	output eem_oe_14,
	input eem_io_15,
	output eem_oe_15,
	output tp,
	output tp_1,
	output tp_2,
	output tp_3,
	output tp_4
);

wire o;
wire oe;
wire i;
reg tstriple0_o = 1'd0;
wire tstriple0_oe;
wire tstriple0_i;
reg tstriple1_o = 1'd0;
wire tstriple1_oe;
wire tstriple1_i;
wire tstriple2_o;
wire tstriple2_oe;
wire tstriple2_i;
reg tstriple3_o = 1'd0;
wire tstriple3_oe;
wire tstriple3_i;
reg tstriple4_o = 1'd0;
wire tstriple4_oe;
wire tstriple4_i;
reg tstriple5_o = 1'd0;
wire tstriple5_oe;
wire tstriple5_i;
reg tstriple6_o = 1'd0;
wire tstriple6_oe;
wire tstriple6_i;
reg tstriple7_o = 1'd0;
wire tstriple7_oe;
wire tstriple7_i;
reg tstriple8_o = 1'd0;
wire tstriple8_oe;
wire tstriple8_i;
reg tstriple9_o = 1'd0;
wire tstriple9_oe;
wire tstriple9_i;
wire tstriple10_o;
wire tstriple10_oe;
wire tstriple10_i;
reg tstriple11_o = 1'd0;
wire tstriple11_oe;
wire tstriple11_i;
wire sck0_clk;
wire sck1_clk;
wire en_9910;
wire en_nu;
wire en_eem1;
wire [3:0] cfg_data_rf_sw;
wire [3:0] cfg_data_led;
wire [2:0] cfg_data_profile;
wire cfg_data_dummy;
wire cfg_data_io_update;
wire [3:0] cfg_data_mask_nu;
wire cfg_data_clk_sel0;
wire cfg_data_sync_sel;
wire cfg_data_rst;
wire cfg_data_io_rst;
wire cfg_data_clk_sel1;
wire [1:0] cfg_data_div;
wire cfg_en_9910;
reg [3:0] stat_data_rf_sw;
reg [3:0] stat_data_smp_err;
reg [3:0] stat_data_pll_lock;
wire [3:0] stat_data_ifc_mode;
wire [6:0] stat_data_proto_rev;
reg stat_data_dummy = 1'd0;
wire sr_sdi;
reg sr_sdo = 1'd0;
wire sr_sel;
reg [23:0] sr_di = 24'd0;
wire [23:0] sr_do;
reg [23:0] sr_sr = 24'd0;
wire le_clk;
reg [7:0] sel;
wire [2:0] cs;
reg [7:0] miso;
wire sel_spi0;
wire sel_nu0;
wire sel_spi1;
wire sel_nu1;
wire sel_spi2;
wire sel_nu2;
wire sel_spi3;
wire sel_nu3;
wire lhs_array_muxed;
reg rhs_array_muxed0;
reg rhs_array_muxed1;
reg rhs_array_muxed2;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign eem_oe = tstriple0_oe;
assign eem_oe_1 = tstriple1_oe;
assign eem_oe_2 = tstriple2_oe;
assign eem_oe_3 = tstriple3_oe;
assign eem_oe_4 = tstriple4_oe;
assign eem_oe_5 = tstriple5_oe;
assign eem_oe_6 = tstriple6_oe;
assign eem_oe_7 = tstriple7_oe;
assign eem_oe_8 = tstriple8_oe;
assign eem_oe_9 = tstriple9_oe;
assign eem_oe_10 = tstriple10_oe;
assign eem_oe_11 = tstriple11_oe;
assign fsen = 1'd1;
assign en_9910 = (ifc_mode[0] | variant);
assign en_nu = ifc_mode[1];
assign en_eem1 = ifc_mode[2];
assign tstriple0_oe = 1'd0;
assign tstriple1_oe = 1'd0;
assign tstriple3_oe = 1'd0;
assign tstriple4_oe = 1'd0;
assign tstriple5_oe = 1'd0;
assign tstriple6_oe = 1'd0;
assign tstriple7_oe = 1'd0;
assign tstriple8_oe = 1'd0;
assign tstriple9_oe = 1'd0;
assign tstriple11_oe = 1'd0;
assign tstriple2_oe = (~en_nu);
assign tstriple10_oe = ((~en_nu) & en_eem1);
assign tstriple10_o = tstriple6_i;
assign sck0_clk = (~sck1_clk);
assign dds_sync_clk_out_en = (((~en_nu) & en_eem1) & en_9910);
assign dds_sync_sync_out_en = (((~en_nu) & en_eem1) & en_9910);
assign cfg_en_9910 = en_9910;
assign cs = {((~en_nu) & tstriple5_i), tstriple4_i, tstriple3_i};
assign lhs_array_muxed = 1'd1;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	sel <= 8'd0;
	case (cs)
		1'd0: begin
			sel[0] <= lhs_array_muxed;
		end
		1'd1: begin
			sel[1] <= lhs_array_muxed;
		end
		2'd2: begin
			sel[2] <= lhs_array_muxed;
		end
		2'd3: begin
			sel[3] <= lhs_array_muxed;
		end
		3'd4: begin
			sel[4] <= lhs_array_muxed;
		end
		3'd5: begin
			sel[5] <= lhs_array_muxed;
		end
		3'd6: begin
			sel[6] <= lhs_array_muxed;
		end
		default: begin
			sel[7] <= lhs_array_muxed;
		end
	endcase
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign tstriple2_o = rhs_array_muxed0;
assign att_clk = (sel[2] & sck1_clk);
assign sr_sel = sel[1];
assign sr_sdi = tstriple1_i;
assign {cfg_data_div, cfg_data_clk_sel1, cfg_data_io_rst, cfg_data_rst, cfg_data_sync_sel, cfg_data_clk_sel0, cfg_data_mask_nu, cfg_data_io_update, cfg_data_dummy, cfg_data_profile, cfg_data_led, cfg_data_rf_sw} = sr_di;
assign sr_do = {stat_data_dummy, stat_data_proto_rev, stat_data_ifc_mode, stat_data_pll_lock, stat_data_smp_err, stat_data_rf_sw};
assign oe = rhs_array_muxed1;
assign o = rhs_array_muxed2;
assign sel_spi0 = (sel[4] | (sel[3] & cfg_data_mask_nu[0]));
assign sel_nu0 = (en_nu & (~cfg_data_mask_nu[0]));
assign dds_cs_n = (~(sel_nu0 ? tstriple5_i : sel_spi0));
assign dds_sck = (sel_nu0 ? tstriple2_i : sck1_clk);
assign dds_sdi = (sel_nu0 ? tstriple8_i : tstriple1_i);
assign dds_io_update = (cfg_data_mask_nu[0] ? cfg_data_io_update : tstriple6_i);
assign dds_reset = (cfg_data_rst | ((~en_9910) & tstriple7_i));
assign sel_spi1 = (sel[5] | (sel[3] & cfg_data_mask_nu[1]));
assign sel_nu1 = (en_nu & (~cfg_data_mask_nu[1]));
assign dds_cs_n_1 = (~(sel_nu1 ? tstriple5_i : sel_spi1));
assign dds_sck_1 = (sel_nu1 ? tstriple2_i : sck1_clk);
assign dds_sdi_1 = (sel_nu1 ? tstriple9_i : tstriple1_i);
assign dds_io_update_1 = (cfg_data_mask_nu[1] ? cfg_data_io_update : tstriple6_i);
assign dds_reset_1 = (cfg_data_rst | ((~en_9910) & tstriple7_i));
assign sel_spi2 = (sel[6] | (sel[3] & cfg_data_mask_nu[2]));
assign sel_nu2 = (en_nu & (~cfg_data_mask_nu[2]));
assign dds_cs_n_2 = (~(sel_nu2 ? tstriple5_i : sel_spi2));
assign dds_sck_2 = (sel_nu2 ? tstriple2_i : sck1_clk);
assign dds_sdi_2 = (sel_nu2 ? tstriple10_i : tstriple1_i);
assign dds_io_update_2 = (cfg_data_mask_nu[2] ? cfg_data_io_update : tstriple6_i);
assign dds_reset_2 = (cfg_data_rst | ((~en_9910) & tstriple7_i));
assign sel_spi3 = (sel[7] | (sel[3] & cfg_data_mask_nu[3]));
assign sel_nu3 = (en_nu & (~cfg_data_mask_nu[3]));
assign dds_cs_n_3 = (~(sel_nu3 ? tstriple5_i : sel_spi3));
assign dds_sck_3 = (sel_nu3 ? tstriple2_i : sck1_clk);
assign dds_sdi_3 = (sel_nu3 ? tstriple11_i : tstriple1_i);

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	att_s_in <= 4'd0;
	miso <= 8'd0;
	miso[3] <= miso[4];
	{miso[2], att_s_in} <= {att_s_out, tstriple1_i};
	miso[1] <= sr_sdo;
	miso[4] <= dds_sdo;
	miso[5] <= dds_sdo_1;
	miso[6] <= dds_sdo_2;
	miso[7] <= dds_sdo_3;
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign dds_io_update_3 = (cfg_data_mask_nu[3] ? cfg_data_io_update : tstriple6_i);
assign dds_reset_3 = (cfg_data_rst | ((~en_9910) & tstriple7_i));
assign tp = dds_cs_n;
assign tp_1 = dds_sck;
assign tp_2 = dds_sdi;
assign tp_3 = dds_sdo;
assign tp_4 = dds_drover;
assign clk_in_sel = cfg_data_clk_sel0;
assign clk_mmcx_osc_sel = cfg_data_clk_sel1;
assign clk_osc_en_n = (clk_in_sel | clk_mmcx_osc_sel);
assign dds_sync_sync_sel = cfg_data_sync_sel;
assign dds_common_master_reset = cfg_data_rst;
assign dds_common_io_reset = cfg_data_io_rst;
assign att_rst_n = (~cfg_data_rst);
assign eem_oe_12 = 1'd0;
assign dds_rf_sw = (eem_io_12 | cfg_data_rf_sw[0]);

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	dds_led <= 2'd0;
	dds_led[0] <= dds_rf_sw;
	dds_led[1] <= (cfg_data_led[0] | (cfg_en_9910 & (dds_smp_err | (~dds_pll_lock))));
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign dds_profile = cfg_data_profile;
assign dds_osk = 1'd1;
assign dds_drhold = 1'd0;
assign dds_drctl = 1'd1;
assign eem_oe_13 = 1'd0;
assign dds_rf_sw_1 = (eem_io_13 | cfg_data_rf_sw[1]);

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	dds_led_1 <= 2'd0;
	dds_led_1[0] <= dds_rf_sw_1;
	dds_led_1[1] <= (cfg_data_led[1] | (cfg_en_9910 & (dds_smp_err_1 | (~dds_pll_lock_1))));
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end
assign dds_profile_1 = cfg_data_profile;
assign dds_osk_1 = 1'd1;
assign dds_drhold_1 = 1'd0;
assign dds_drctl_1 = 1'd1;
assign eem_oe_14 = 1'd0;
assign dds_rf_sw_2 = (eem_io_14 | cfg_data_rf_sw[2]);

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	dds_led_2 <= 2'd0;
	dds_led_2[0] <= dds_rf_sw_2;
	dds_led_2[1] <= (cfg_data_led[2] | (cfg_en_9910 & (dds_smp_err_2 | (~dds_pll_lock_2))));
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end
assign dds_profile_2 = cfg_data_profile;
assign dds_osk_2 = 1'd1;
assign dds_drhold_2 = 1'd0;
assign dds_drctl_2 = 1'd1;
assign eem_oe_15 = 1'd0;
assign dds_rf_sw_3 = (eem_io_15 | cfg_data_rf_sw[3]);

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	dds_led_3 <= 2'd0;
	dds_led_3[0] <= dds_rf_sw_3;
	dds_led_3[1] <= (cfg_data_led[3] | (cfg_en_9910 & (dds_smp_err_3 | (~dds_pll_lock_3))));
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign dds_profile_3 = cfg_data_profile;
assign dds_osk_3 = 1'd1;
assign dds_drhold_3 = 1'd0;
assign dds_drctl_3 = 1'd1;
assign stat_data_ifc_mode = ifc_mode;
assign stat_data_proto_rev = 4'd8;

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	stat_data_rf_sw <= 4'd0;
	stat_data_rf_sw[0] <= dds_rf_sw;
	stat_data_rf_sw[1] <= dds_rf_sw_1;
	stat_data_rf_sw[2] <= dds_rf_sw_2;
	stat_data_rf_sw[3] <= dds_rf_sw_3;
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	stat_data_smp_err <= 4'd0;
	stat_data_smp_err[0] <= dds_smp_err;
	stat_data_smp_err[1] <= dds_smp_err_1;
	stat_data_smp_err[2] <= dds_smp_err_2;
	stat_data_smp_err[3] <= dds_smp_err_3;
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	stat_data_pll_lock <= 4'd0;
	stat_data_pll_lock[0] <= dds_pll_lock;
	stat_data_pll_lock[1] <= dds_pll_lock_1;
	stat_data_pll_lock[2] <= dds_pll_lock_2;
	stat_data_pll_lock[3] <= dds_pll_lock_3;
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed0 <= 1'd0;
	case (cs)
		1'd0: begin
			rhs_array_muxed0 <= miso[0];
		end
		1'd1: begin
			rhs_array_muxed0 <= miso[1];
		end
		2'd2: begin
			rhs_array_muxed0 <= miso[2];
		end
		2'd3: begin
			rhs_array_muxed0 <= miso[3];
		end
		3'd4: begin
			rhs_array_muxed0 <= miso[4];
		end
		3'd5: begin
			rhs_array_muxed0 <= miso[5];
		end
		3'd6: begin
			rhs_array_muxed0 <= miso[6];
		end
		default: begin
			rhs_array_muxed0 <= miso[7];
		end
	endcase
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed1 <= 1'd0;
	case (cfg_data_div)
		1'd0: begin
			rhs_array_muxed1 <= en_9910;
		end
		1'd1: begin
			rhs_array_muxed1 <= 1'd0;
		end
		2'd2: begin
			rhs_array_muxed1 <= 1'd1;
		end
		default: begin
			rhs_array_muxed1 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed2 <= 1'd0;
	case (cfg_data_div)
		1'd0: begin
			rhs_array_muxed2 <= 1'd1;
		end
		1'd1: begin
			rhs_array_muxed2 <= 1'd1;
		end
		2'd2: begin
			rhs_array_muxed2 <= 1'd0;
		end
		default: begin
			rhs_array_muxed2 <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end

always @(posedge le_clk) begin
	sr_di <= sr_sr;
end

always @(posedge sck0_clk) begin
	if (sr_sel) begin
		sr_sdo <= sr_sr[23];
	end
end

always @(posedge sck1_clk) begin
	if (sr_sel) begin
		sr_sr[0] <= sr_sdi;
		if (le_clk) begin
			sr_sr[23:1] <= sr_do[22:0];
		end else begin
			sr_sr[23:1] <= sr_sr[22:0];
		end
	end
end

assign clk_div = oe ? o : 1'bz;
assign i = clk_div;

assign eem_io = tstriple0_oe ? tstriple0_o : 1'bz;
assign tstriple0_i = eem_io;

assign eem_io_1 = tstriple1_oe ? tstriple1_o : 1'bz;
assign tstriple1_i = eem_io_1;

assign eem_io_2 = tstriple2_oe ? tstriple2_o : 1'bz;
assign tstriple2_i = eem_io_2;

assign eem_io_3 = tstriple3_oe ? tstriple3_o : 1'bz;
assign tstriple3_i = eem_io_3;

assign eem_io_4 = tstriple4_oe ? tstriple4_o : 1'bz;
assign tstriple4_i = eem_io_4;

assign eem_io_5 = tstriple5_oe ? tstriple5_o : 1'bz;
assign tstriple5_i = eem_io_5;

assign eem_io_6 = tstriple6_oe ? tstriple6_o : 1'bz;
assign tstriple6_i = eem_io_6;

assign eem_io_7 = tstriple7_oe ? tstriple7_o : 1'bz;
assign tstriple7_i = eem_io_7;

assign eem_io_8 = tstriple8_oe ? tstriple8_o : 1'bz;
assign tstriple8_i = eem_io_8;

assign eem_io_9 = tstriple9_oe ? tstriple9_o : 1'bz;
assign tstriple9_i = eem_io_9;

assign eem_io_10 = tstriple10_oe ? tstriple10_o : 1'bz;
assign tstriple10_i = eem_io_10;

assign eem_io_11 = tstriple11_oe ? tstriple11_o : 1'bz;
assign tstriple11_i = eem_io_11;

BUFG BUFG(
	.I(tstriple0_i),
	.O(sck1_clk)
);

FDPE #(
	.INIT(1'd1)
) FDPE (
	.C(sck1_clk),
	.CE(sr_sel),
	.D(1'd0),
	.PRE((~sr_sel)),
	.Q(le_clk)
);

FDPE #(
	.INIT(1'd1)
) FDPE_1 (
	.C(sck1_clk),
	.CE(sel[2]),
	.D(1'd0),
	.PRE((~sel[2])),
	.Q(att_le[0])
);

FDPE #(
	.INIT(1'd1)
) FDPE_2 (
	.C(sck1_clk),
	.CE(sel[2]),
	.D(1'd0),
	.PRE((~sel[2])),
	.Q(att_le[1])
);

FDPE #(
	.INIT(1'd1)
) FDPE_3 (
	.C(sck1_clk),
	.CE(sel[2]),
	.D(1'd0),
	.PRE((~sel[2])),
	.Q(att_le[2])
);

FDPE #(
	.INIT(1'd1)
) FDPE_4 (
	.C(sck1_clk),
	.CE(sel[2]),
	.D(1'd0),
	.PRE((~sel[2])),
	.Q(att_le[3])
);

endmodule
