//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Tue Aug 30 19:03:59 2022
//Host        : simtool5-2 running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target zbd_wrapper.bd
//Design      : zbd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zbd_wrapper
   (channel_up_qsfp0,
    channel_up_qsfp1,
    ddr4_act_n,
    ddr4_adr,
    ddr4_ba,
    ddr4_bg,
    ddr4_ck_c,
    ddr4_ck_t,
    ddr4_cke,
    ddr4_cs_n,
    ddr4_dm_n,
    ddr4_dq,
    ddr4_dqs_c,
    ddr4_dqs_t,
    ddr4_odt,
    ddr4_refclk_clk_n,
    ddr4_refclk_clk_p,
    ddr4_reset_n,
    gt_pll_lock_qsfp0,
    gt_pll_lock_qsfp1,
    lane_up_qsfp0,
    lane_up_qsfp1,
    pb_resetn,
    pl_ddr4_init_calib_complete,
    qsfp0_gtrefclk_clk_n,
    qsfp0_gtrefclk_clk_p,
    qsfp0_rx_rxn,
    qsfp0_rx_rxp,
    qsfp0_tx_txn,
    qsfp0_tx_txp,
    qsfp1_gtrefclk_clk_n,
    qsfp1_gtrefclk_clk_p,
    qsfp1_rx_rxn,
    qsfp1_rx_rxp,
    qsfp1_tx_txn,
    qsfp1_tx_txp);
  output channel_up_qsfp0;
  output channel_up_qsfp1;
  output ddr4_act_n;
  output [16:0]ddr4_adr;
  output [1:0]ddr4_ba;
  output [1:0]ddr4_bg;
  output [1:0]ddr4_ck_c;
  output [1:0]ddr4_ck_t;
  output [1:0]ddr4_cke;
  output [1:0]ddr4_cs_n;
  inout [8:0]ddr4_dm_n;
  inout [71:0]ddr4_dq;
  inout [8:0]ddr4_dqs_c;
  inout [8:0]ddr4_dqs_t;
  output [1:0]ddr4_odt;
  input ddr4_refclk_clk_n;
  input ddr4_refclk_clk_p;
  output ddr4_reset_n;
  output gt_pll_lock_qsfp0;
  output gt_pll_lock_qsfp1;
  output [0:3]lane_up_qsfp0;
  output [0:3]lane_up_qsfp1;
  input pb_resetn;
  output pl_ddr4_init_calib_complete;
  input qsfp0_gtrefclk_clk_n;
  input qsfp0_gtrefclk_clk_p;
  input [0:3]qsfp0_rx_rxn;
  input [0:3]qsfp0_rx_rxp;
  output [0:3]qsfp0_tx_txn;
  output [0:3]qsfp0_tx_txp;
  input qsfp1_gtrefclk_clk_n;
  input qsfp1_gtrefclk_clk_p;
  input [0:3]qsfp1_rx_rxn;
  input [0:3]qsfp1_rx_rxp;
  output [0:3]qsfp1_tx_txn;
  output [0:3]qsfp1_tx_txp;

  wire channel_up_qsfp0;
  wire channel_up_qsfp1;
  wire ddr4_act_n;
  wire [16:0]ddr4_adr;
  wire [1:0]ddr4_ba;
  wire [1:0]ddr4_bg;
  wire [1:0]ddr4_ck_c;
  wire [1:0]ddr4_ck_t;
  wire [1:0]ddr4_cke;
  wire [1:0]ddr4_cs_n;
  wire [8:0]ddr4_dm_n;
  wire [71:0]ddr4_dq;
  wire [8:0]ddr4_dqs_c;
  wire [8:0]ddr4_dqs_t;
  wire [1:0]ddr4_odt;
  wire ddr4_refclk_clk_n;
  wire ddr4_refclk_clk_p;
  wire ddr4_reset_n;
  wire gt_pll_lock_qsfp0;
  wire gt_pll_lock_qsfp1;
  wire [0:3]lane_up_qsfp0;
  wire [0:3]lane_up_qsfp1;
  wire pb_resetn;
  wire pl_ddr4_init_calib_complete;
  wire qsfp0_gtrefclk_clk_n;
  wire qsfp0_gtrefclk_clk_p;
  wire [0:3]qsfp0_rx_rxn;
  wire [0:3]qsfp0_rx_rxp;
  wire [0:3]qsfp0_tx_txn;
  wire [0:3]qsfp0_tx_txp;
  wire qsfp1_gtrefclk_clk_n;
  wire qsfp1_gtrefclk_clk_p;
  wire [0:3]qsfp1_rx_rxn;
  wire [0:3]qsfp1_rx_rxp;
  wire [0:3]qsfp1_tx_txn;
  wire [0:3]qsfp1_tx_txp;

  zbd zbd_i
       (.channel_up_qsfp0(channel_up_qsfp0),
        .channel_up_qsfp1(channel_up_qsfp1),
        .ddr4_act_n(ddr4_act_n),
        .ddr4_adr(ddr4_adr),
        .ddr4_ba(ddr4_ba),
        .ddr4_bg(ddr4_bg),
        .ddr4_ck_c(ddr4_ck_c),
        .ddr4_ck_t(ddr4_ck_t),
        .ddr4_cke(ddr4_cke),
        .ddr4_cs_n(ddr4_cs_n),
        .ddr4_dm_n(ddr4_dm_n),
        .ddr4_dq(ddr4_dq),
        .ddr4_dqs_c(ddr4_dqs_c),
        .ddr4_dqs_t(ddr4_dqs_t),
        .ddr4_odt(ddr4_odt),
        .ddr4_refclk_clk_n(ddr4_refclk_clk_n),
        .ddr4_refclk_clk_p(ddr4_refclk_clk_p),
        .ddr4_reset_n(ddr4_reset_n),
        .gt_pll_lock_qsfp0(gt_pll_lock_qsfp0),
        .gt_pll_lock_qsfp1(gt_pll_lock_qsfp1),
        .lane_up_qsfp0(lane_up_qsfp0),
        .lane_up_qsfp1(lane_up_qsfp1),
        .pb_resetn(pb_resetn),
        .pl_ddr4_init_calib_complete(pl_ddr4_init_calib_complete),
        .qsfp0_gtrefclk_clk_n(qsfp0_gtrefclk_clk_n),
        .qsfp0_gtrefclk_clk_p(qsfp0_gtrefclk_clk_p),
        .qsfp0_rx_rxn(qsfp0_rx_rxn),
        .qsfp0_rx_rxp(qsfp0_rx_rxp),
        .qsfp0_tx_txn(qsfp0_tx_txn),
        .qsfp0_tx_txp(qsfp0_tx_txp),
        .qsfp1_gtrefclk_clk_n(qsfp1_gtrefclk_clk_n),
        .qsfp1_gtrefclk_clk_p(qsfp1_gtrefclk_clk_p),
        .qsfp1_rx_rxn(qsfp1_rx_rxn),
        .qsfp1_rx_rxp(qsfp1_rx_rxp),
        .qsfp1_tx_txn(qsfp1_tx_txn),
        .qsfp1_tx_txp(qsfp1_tx_txp));
endmodule
