//---------------------------------------------------------------------------//
//
// Copyright (C) 2019 Fidus Systems Inc.
//
// Filename    : qsfp_ddr_top.sv
// Project     : -
// Author      : Jacob von Chorus
// Created     : Aug 23, 2019
// Description : Top level for Sidewinder QSFP and PL-DDR example design.
//
// Contains:
//      - Vivado IPI design.
//
//---------------------------------------------------------------------------//

module qsfp_ddr_top (
    // QSFP:
    // ---------------------------------
    // QSFP0 322.265625 MHz gtrefclk0
    input           clk_qsfp0_n,
    input           clk_qsfp0_p,

    // QSFP1 322.265625 MHz gtrefclk0
    input           clk_qsfp1_n,
    input           clk_qsfp1_p,

    // QSFP0 GTY
    input  [0:3]    qsfp0_rx_n,
    input  [0:3]    qsfp0_rx_p,
    output [0:3]    qsfp0_tx_n,
    output [0:3]    qsfp0_tx_p,

    // QSFP1 GTY
    input  [0:3]    qsfp1_rx_n,
    input  [0:3]    qsfp1_rx_p,
    output [0:3]    qsfp1_tx_n,
    output [0:3]    qsfp1_tx_p,

    // DDR:
    // ---------------------------------
    // PL DDR4 gtrefclk 333.33 MHz
    input           ddr4_refclk_n,
    input           ddr4_refclk_p,

    // DDR SODIMM interface.
    output          ddr4_act_n,
    output [16:0]   ddr4_a,
    output [1:0]    ddr4_ba,
    output [1:0]    ddr4_bg,
    output [1:0]    ddr4_ck_n,
    output [1:0]    ddr4_ck_p,
    output [1:0]    ddr4_cke,
    output [1:0]    ddr4_cs_n,
    inout  [8:0]    ddr4_dm,
    inout  [71:0]   ddr4_dq,
    inout  [8:0]    ddr4_dqs_n,
    inout  [8:0]    ddr4_dqs_p,
    output [1:0]    ddr4_odt,
    output          ddr4_rst_n,

    // Debug:
    // ---------------------------------
    input  [2:0]    pb_sw,             // User pushbuttons.
    output [9:0]    led                // Debug LEDs
    );

    //----------------------------------------------------------------
    // SIGNALS
    //----------------------------------------------------------------
    logic       channel_up_qsfp0;   // Asserted when Aurora is ready for data transmission.
    logic [0:3] lane_up_qsfp0;      // Asserted for each individual lane when functional.
    logic       gt_pll_lock_qsfp0;  // Asserted when GT PLL has locked.

    logic       channel_up_qsfp1;
    logic [0:3] lane_up_qsfp1;
    logic       gt_pll_lock_qsfp1;

    logic       pl_ddr4_init_calib_complete; // Asserted when PL ddr has finished calibration.

    //----------------------------------------------------------------
    // ASSIGNS
    //----------------------------------------------------------------
    assign led[0]   = channel_up_qsfp0;
    assign led[1]   = &lane_up_qsfp0;
    assign led[2]   = gt_pll_lock_qsfp0;
    assign led[4:3] = 'h0;

    assign led[5]   = channel_up_qsfp1;
    assign led[6]   = &lane_up_qsfp1;
    assign led[7]   = gt_pll_lock_qsfp1;
    assign led[8]   = 'h0;
    assign led[9]   = pl_ddr4_init_calib_complete;

    //----------------------------------------------------------------
    // MAIN BODY
    //----------------------------------------------------------------

    zbd zbd_i (
        // QSFP refclks
        .qsfp0_gtrefclk_clk_n          (clk_qsfp0_n),
        .qsfp0_gtrefclk_clk_p          (clk_qsfp0_p),

        .qsfp1_gtrefclk_clk_n          (clk_qsfp1_n),
        .qsfp1_gtrefclk_clk_p          (clk_qsfp1_p),

        // QSFP tx and rx data
        .qsfp0_rx_rxn                  (qsfp0_rx_n),
        .qsfp0_rx_rxp                  (qsfp0_rx_p),
        .qsfp0_tx_txn                  (qsfp0_tx_n),
        .qsfp0_tx_txp                  (qsfp0_tx_p),

        .qsfp1_rx_rxn                  (qsfp1_rx_n),
        .qsfp1_rx_rxp                  (qsfp1_rx_p),
        .qsfp1_tx_txn                  (qsfp1_tx_n),
        .qsfp1_tx_txp                  (qsfp1_tx_p),

        // Reset pushbutton.
        .pb_resetn                     (pb_sw[0]),

        // QSFP debug output
        .channel_up_qsfp0              (channel_up_qsfp0),
        .lane_up_qsfp0                 (lane_up_qsfp0),
        .gt_pll_lock_qsfp0             (gt_pll_lock_qsfp0),

        .channel_up_qsfp1              (channel_up_qsfp1),
        .lane_up_qsfp1                 (lane_up_qsfp1),
        .gt_pll_lock_qsfp1             (gt_pll_lock_qsfp1),

        // PL DDR4 gtrefclk 333.33 MHz
        .ddr4_refclk_clk_n             (ddr4_refclk_n),
        .ddr4_refclk_clk_p             (ddr4_refclk_p),

        // DDR SODIMM interface.
        .ddr4_act_n                    (ddr4_act_n),
        .ddr4_adr                      (ddr4_a),
        .ddr4_ba                       (ddr4_ba),
        .ddr4_bg                       (ddr4_bg),
        .ddr4_ck_c                     (ddr4_ck_n),
        .ddr4_ck_t                     (ddr4_ck_p),
        .ddr4_cke                      (ddr4_cke),
        .ddr4_cs_n                     (ddr4_cs_n),
        .ddr4_dm_n                     (ddr4_dm),
        .ddr4_dq                       (ddr4_dq),
        .ddr4_dqs_c                    (ddr4_dqs_n),
        .ddr4_dqs_t                    (ddr4_dqs_p),
        .ddr4_odt                      (ddr4_odt),
        .ddr4_reset_n                  (ddr4_rst_n),

        // DDR debug output.
        .pl_ddr4_init_calib_complete   (pl_ddr4_init_calib_complete)
        );

endmodule
