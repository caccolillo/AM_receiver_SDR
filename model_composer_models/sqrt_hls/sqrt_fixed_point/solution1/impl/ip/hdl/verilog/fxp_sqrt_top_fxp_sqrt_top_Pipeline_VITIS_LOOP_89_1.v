// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        zext_ln82,
        s_V_1_out,
        s_V_1_out_ap_vld,
        q_V_1_out,
        q_V_1_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [27:0] zext_ln82;
output  [30:0] s_V_1_out;
output   s_V_1_out_ap_vld;
output  [28:0] q_V_1_out;
output   q_V_1_out_ap_vld;

reg ap_idle;
reg s_V_1_out_ap_vld;
reg q_V_1_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln89_fu_121_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [4:0] sub_ln91_fu_133_p2;
reg   [4:0] sub_ln91_reg_316;
wire    ap_block_pp0_stage0_11001;
reg   [28:0] q_V_fu_58;
wire   [28:0] q_V_1_fu_254_p2;
wire    ap_block_pp0_stage0;
wire    ap_loop_init;
reg   [28:0] q_star_V_fu_62;
wire   [28:0] r_V_5_fu_246_p3;
reg   [30:0] s_V_fu_66;
wire   [30:0] s_V_3_fu_222_p3;
wire   [30:0] zext_ln82_cast_fu_94_p1;
reg   [4:0] i_fu_70;
wire   [4:0] i_2_fu_127_p2;
reg   [4:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage0_01001;
wire   [30:0] r_V_fu_170_p3;
wire   [30:0] ret_V_fu_178_p2;
wire   [30:0] zext_ln91_fu_167_p1;
wire   [30:0] shl_ln1496_fu_161_p2;
wire   [30:0] r_V_1_fu_184_p2;
wire   [30:0] r_V_2_fu_196_p3;
wire   [30:0] ret_V_1_fu_204_p2;
wire   [30:0] r_V_3_fu_210_p2;
wire   [0:0] tmp_fu_153_p3;
wire   [30:0] s_V_2_fu_216_p2;
wire   [30:0] s_V_1_fu_190_p2;
wire   [27:0] trunc_ln1031_fu_230_p1;
wire   [27:0] trunc_ln1031_1_fu_234_p1;
wire   [27:0] select_ln1031_fu_238_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fxp_sqrt_top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln89_fu_121_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_70 <= i_2_fu_127_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_70 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            q_V_fu_58 <= 29'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            q_V_fu_58 <= q_V_1_fu_254_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
                        q_star_V_fu_62[1] <= 1'b0;
            q_star_V_fu_62[2] <= 1'b0;
            q_star_V_fu_62[3] <= 1'b0;
            q_star_V_fu_62[4] <= 1'b0;
            q_star_V_fu_62[5] <= 1'b0;
            q_star_V_fu_62[6] <= 1'b0;
            q_star_V_fu_62[7] <= 1'b0;
            q_star_V_fu_62[8] <= 1'b0;
            q_star_V_fu_62[9] <= 1'b0;
            q_star_V_fu_62[10] <= 1'b0;
            q_star_V_fu_62[11] <= 1'b0;
            q_star_V_fu_62[12] <= 1'b0;
            q_star_V_fu_62[13] <= 1'b0;
            q_star_V_fu_62[14] <= 1'b0;
            q_star_V_fu_62[15] <= 1'b0;
            q_star_V_fu_62[16] <= 1'b0;
            q_star_V_fu_62[17] <= 1'b0;
            q_star_V_fu_62[18] <= 1'b0;
            q_star_V_fu_62[19] <= 1'b0;
            q_star_V_fu_62[20] <= 1'b0;
            q_star_V_fu_62[21] <= 1'b0;
            q_star_V_fu_62[22] <= 1'b0;
            q_star_V_fu_62[23] <= 1'b0;
            q_star_V_fu_62[24] <= 1'b0;
            q_star_V_fu_62[25] <= 1'b0;
            q_star_V_fu_62[26] <= 1'b0;
            q_star_V_fu_62[27] <= 1'b0;
            q_star_V_fu_62[28] <= 1'b0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
                        q_star_V_fu_62[28 : 1] <= r_V_5_fu_246_p3[28 : 1];
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            s_V_fu_66 <= zext_ln82_cast_fu_94_p1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            s_V_fu_66 <= s_V_3_fu_222_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln89_fu_121_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub_ln91_reg_316 <= sub_ln91_fu_133_p2;
    end
end

always @ (*) begin
    if (((icmp_ln89_fu_121_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 5'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_70;
    end
end

always @ (*) begin
    if (((icmp_ln89_fu_121_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        q_V_1_out_ap_vld = 1'b1;
    end else begin
        q_V_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln89_fu_121_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_V_1_out_ap_vld = 1'b1;
    end else begin
        s_V_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_2_fu_127_p2 = (ap_sig_allocacmp_i_1 + 5'd1);

assign icmp_ln89_fu_121_p2 = ((ap_sig_allocacmp_i_1 == 5'd30) ? 1'b1 : 1'b0);

assign q_V_1_fu_254_p2 = (r_V_5_fu_246_p3 | 29'd1);

assign q_V_1_out = q_V_fu_58;

assign r_V_1_fu_184_p2 = ret_V_fu_178_p2 << zext_ln91_fu_167_p1;

assign r_V_2_fu_196_p3 = {{q_star_V_fu_62}, {2'd0}};

assign r_V_3_fu_210_p2 = ret_V_1_fu_204_p2 << zext_ln91_fu_167_p1;

assign r_V_5_fu_246_p3 = {{select_ln1031_fu_238_p3}, {1'd0}};

assign r_V_fu_170_p3 = {{q_V_fu_58}, {2'd0}};

assign ret_V_1_fu_204_p2 = (r_V_2_fu_196_p3 | 31'd3);

assign ret_V_fu_178_p2 = (r_V_fu_170_p3 | 31'd1);

assign s_V_1_fu_190_p2 = (shl_ln1496_fu_161_p2 - r_V_1_fu_184_p2);

assign s_V_1_out = s_V_fu_66;

assign s_V_2_fu_216_p2 = (r_V_3_fu_210_p2 + shl_ln1496_fu_161_p2);

assign s_V_3_fu_222_p3 = ((tmp_fu_153_p3[0:0] == 1'b1) ? s_V_2_fu_216_p2 : s_V_1_fu_190_p2);

assign select_ln1031_fu_238_p3 = ((tmp_fu_153_p3[0:0] == 1'b1) ? trunc_ln1031_fu_230_p1 : trunc_ln1031_1_fu_234_p1);

assign shl_ln1496_fu_161_p2 = s_V_fu_66 << 31'd1;

assign sub_ln91_fu_133_p2 = ($signed(5'd29) - $signed(ap_sig_allocacmp_i_1));

assign tmp_fu_153_p3 = s_V_fu_66[32'd30];

assign trunc_ln1031_1_fu_234_p1 = q_V_fu_58[27:0];

assign trunc_ln1031_fu_230_p1 = q_star_V_fu_62[27:0];

assign zext_ln82_cast_fu_94_p1 = zext_ln82;

assign zext_ln91_fu_167_p1 = sub_ln91_reg_316;

always @ (posedge ap_clk) begin
    q_star_V_fu_62[0] <= 1'b0;
end

endmodule //fxp_sqrt_top_fxp_sqrt_top_Pipeline_VITIS_LOOP_89_1
