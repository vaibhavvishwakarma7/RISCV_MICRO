module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire \cfg_clk_ctrl1[0] ;
 wire \cfg_clk_ctrl1[10] ;
 wire \cfg_clk_ctrl1[11] ;
 wire \cfg_clk_ctrl1[12] ;
 wire \cfg_clk_ctrl1[13] ;
 wire \cfg_clk_ctrl1[14] ;
 wire \cfg_clk_ctrl1[15] ;
 wire \cfg_clk_ctrl1[16] ;
 wire \cfg_clk_ctrl1[17] ;
 wire \cfg_clk_ctrl1[18] ;
 wire \cfg_clk_ctrl1[19] ;
 wire \cfg_clk_ctrl1[1] ;
 wire \cfg_clk_ctrl1[20] ;
 wire \cfg_clk_ctrl1[21] ;
 wire \cfg_clk_ctrl1[22] ;
 wire \cfg_clk_ctrl1[23] ;
 wire \cfg_clk_ctrl1[24] ;
 wire \cfg_clk_ctrl1[25] ;
 wire \cfg_clk_ctrl1[26] ;
 wire \cfg_clk_ctrl1[27] ;
 wire \cfg_clk_ctrl1[28] ;
 wire \cfg_clk_ctrl1[29] ;
 wire \cfg_clk_ctrl1[2] ;
 wire \cfg_clk_ctrl1[30] ;
 wire \cfg_clk_ctrl1[31] ;
 wire \cfg_clk_ctrl1[3] ;
 wire \cfg_clk_ctrl1[4] ;
 wire \cfg_clk_ctrl1[5] ;
 wire \cfg_clk_ctrl1[6] ;
 wire \cfg_clk_ctrl1[7] ;
 wire \cfg_clk_ctrl1[8] ;
 wire \cfg_clk_ctrl1[9] ;
 wire \cfg_cska_pinmux_rp[0] ;
 wire \cfg_cska_pinmux_rp[1] ;
 wire \cfg_cska_pinmux_rp[2] ;
 wire \cfg_cska_pinmux_rp[3] ;
 wire \cfg_cska_qspi_co_rp[0] ;
 wire \cfg_cska_qspi_co_rp[1] ;
 wire \cfg_cska_qspi_co_rp[2] ;
 wire \cfg_cska_qspi_co_rp[3] ;
 wire \cfg_cska_qspi_rp[0] ;
 wire \cfg_cska_qspi_rp[1] ;
 wire \cfg_cska_qspi_rp[2] ;
 wire \cfg_cska_qspi_rp[3] ;
 wire \cfg_cska_uart_rp[0] ;
 wire \cfg_cska_uart_rp[1] ;
 wire \cfg_cska_uart_rp[2] ;
 wire \cfg_cska_uart_rp[3] ;
 wire \cfg_dc_trim[0] ;
 wire \cfg_dc_trim[10] ;
 wire \cfg_dc_trim[11] ;
 wire \cfg_dc_trim[12] ;
 wire \cfg_dc_trim[13] ;
 wire \cfg_dc_trim[14] ;
 wire \cfg_dc_trim[15] ;
 wire \cfg_dc_trim[16] ;
 wire \cfg_dc_trim[17] ;
 wire \cfg_dc_trim[18] ;
 wire \cfg_dc_trim[19] ;
 wire \cfg_dc_trim[1] ;
 wire \cfg_dc_trim[20] ;
 wire \cfg_dc_trim[21] ;
 wire \cfg_dc_trim[22] ;
 wire \cfg_dc_trim[23] ;
 wire \cfg_dc_trim[24] ;
 wire \cfg_dc_trim[25] ;
 wire \cfg_dc_trim[2] ;
 wire \cfg_dc_trim[3] ;
 wire \cfg_dc_trim[4] ;
 wire \cfg_dc_trim[5] ;
 wire \cfg_dc_trim[6] ;
 wire \cfg_dc_trim[7] ;
 wire \cfg_dc_trim[8] ;
 wire \cfg_dc_trim[9] ;
 wire cfg_dco_mode;
 wire cfg_pll_enb;
 wire \cfg_pll_fed_div[0] ;
 wire \cfg_pll_fed_div[1] ;
 wire \cfg_pll_fed_div[2] ;
 wire \cfg_pll_fed_div[3] ;
 wire \cfg_pll_fed_div[4] ;
 wire \cfg_riscv_ctrl[0] ;
 wire \cfg_riscv_ctrl[10] ;
 wire \cfg_riscv_ctrl[11] ;
 wire \cfg_riscv_ctrl[12] ;
 wire \cfg_riscv_ctrl[13] ;
 wire \cfg_riscv_ctrl[14] ;
 wire \cfg_riscv_ctrl[15] ;
 wire \cfg_riscv_ctrl[1] ;
 wire \cfg_riscv_ctrl[2] ;
 wire \cfg_riscv_ctrl[3] ;
 wire \cfg_riscv_ctrl[4] ;
 wire \cfg_riscv_ctrl[5] ;
 wire \cfg_riscv_ctrl[6] ;
 wire \cfg_riscv_ctrl[7] ;
 wire \cfg_riscv_ctrl[8] ;
 wire \cfg_riscv_ctrl[9] ;
 wire \cpu_core_rst_n[0] ;
 wire \cpu_core_rst_n[1] ;
 wire dbg_clk_mon;
 wire i2c_rst_n;
 wire i2cm_clk_i;
 wire i2cm_clk_o;
 wire i2cm_clk_oen;
 wire i2cm_data_i;
 wire i2cm_data_o;
 wire i2cm_data_oen;
 wire i2cm_intr_o;
 wire \irq_lines[0] ;
 wire \irq_lines[10] ;
 wire \irq_lines[11] ;
 wire \irq_lines[12] ;
 wire \irq_lines[13] ;
 wire \irq_lines[14] ;
 wire \irq_lines[15] ;
 wire \irq_lines[1] ;
 wire \irq_lines[2] ;
 wire \irq_lines[3] ;
 wire \irq_lines[4] ;
 wire \irq_lines[5] ;
 wire \irq_lines[6] ;
 wire \irq_lines[7] ;
 wire \irq_lines[8] ;
 wire \irq_lines[9] ;
 wire \pll_clk_out[0] ;
 wire \pll_clk_out[1] ;
 wire pll_ref_clk;
 wire pulse1m_mclk;
 wire qspim_rst_n;
 wire \sflash_di[0] ;
 wire \sflash_di[1] ;
 wire \sflash_di[2] ;
 wire \sflash_di[3] ;
 wire \sflash_do[0] ;
 wire \sflash_do[1] ;
 wire \sflash_do[2] ;
 wire \sflash_do[3] ;
 wire \sflash_oen[0] ;
 wire \sflash_oen[1] ;
 wire \sflash_oen[2] ;
 wire \sflash_oen[3] ;
 wire sflash_sck;
 wire soft_irq;
 wire \spi_csn[0] ;
 wire \spi_csn[1] ;
 wire \spi_csn[2] ;
 wire \spi_csn[3] ;
 wire sspim_rst_n;
 wire sspim_sck;
 wire sspim_si;
 wire sspim_so;
 wire \sspim_ssn[0] ;
 wire \sspim_ssn[1] ;
 wire \sspim_ssn[2] ;
 wire \sspim_ssn[3] ;
 wire \u_riscv_top.cfg_cska_riscv[0] ;
 wire \u_riscv_top.cfg_cska_riscv[1] ;
 wire \u_riscv_top.cfg_cska_riscv[2] ;
 wire \u_riscv_top.cfg_cska_riscv[3] ;
 wire \u_riscv_top.cfg_dcache_force_flush ;
 wire \u_riscv_top.core0_debug[0] ;
 wire \u_riscv_top.core0_debug[10] ;
 wire \u_riscv_top.core0_debug[11] ;
 wire \u_riscv_top.core0_debug[12] ;
 wire \u_riscv_top.core0_debug[13] ;
 wire \u_riscv_top.core0_debug[14] ;
 wire \u_riscv_top.core0_debug[15] ;
 wire \u_riscv_top.core0_debug[16] ;
 wire \u_riscv_top.core0_debug[17] ;
 wire \u_riscv_top.core0_debug[18] ;
 wire \u_riscv_top.core0_debug[19] ;
 wire \u_riscv_top.core0_debug[1] ;
 wire \u_riscv_top.core0_debug[20] ;
 wire \u_riscv_top.core0_debug[21] ;
 wire \u_riscv_top.core0_debug[22] ;
 wire \u_riscv_top.core0_debug[23] ;
 wire \u_riscv_top.core0_debug[24] ;
 wire \u_riscv_top.core0_debug[25] ;
 wire \u_riscv_top.core0_debug[26] ;
 wire \u_riscv_top.core0_debug[27] ;
 wire \u_riscv_top.core0_debug[28] ;
 wire \u_riscv_top.core0_debug[29] ;
 wire \u_riscv_top.core0_debug[2] ;
 wire \u_riscv_top.core0_debug[30] ;
 wire \u_riscv_top.core0_debug[31] ;
 wire \u_riscv_top.core0_debug[32] ;
 wire \u_riscv_top.core0_debug[33] ;
 wire \u_riscv_top.core0_debug[34] ;
 wire \u_riscv_top.core0_debug[35] ;
 wire \u_riscv_top.core0_debug[36] ;
 wire \u_riscv_top.core0_debug[37] ;
 wire \u_riscv_top.core0_debug[38] ;
 wire \u_riscv_top.core0_debug[39] ;
 wire \u_riscv_top.core0_debug[3] ;
 wire \u_riscv_top.core0_debug[40] ;
 wire \u_riscv_top.core0_debug[41] ;
 wire \u_riscv_top.core0_debug[42] ;
 wire \u_riscv_top.core0_debug[43] ;
 wire \u_riscv_top.core0_debug[44] ;
 wire \u_riscv_top.core0_debug[45] ;
 wire \u_riscv_top.core0_debug[46] ;
 wire \u_riscv_top.core0_debug[47] ;
 wire \u_riscv_top.core0_debug[48] ;
 wire \u_riscv_top.core0_debug[4] ;
 wire \u_riscv_top.core0_debug[5] ;
 wire \u_riscv_top.core0_debug[6] ;
 wire \u_riscv_top.core0_debug[7] ;
 wire \u_riscv_top.core0_debug[8] ;
 wire \u_riscv_top.core0_debug[9] ;
 wire \u_riscv_top.core0_dmem_addr[0] ;
 wire \u_riscv_top.core0_dmem_addr[10] ;
 wire \u_riscv_top.core0_dmem_addr[11] ;
 wire \u_riscv_top.core0_dmem_addr[12] ;
 wire \u_riscv_top.core0_dmem_addr[13] ;
 wire \u_riscv_top.core0_dmem_addr[14] ;
 wire \u_riscv_top.core0_dmem_addr[15] ;
 wire \u_riscv_top.core0_dmem_addr[16] ;
 wire \u_riscv_top.core0_dmem_addr[17] ;
 wire \u_riscv_top.core0_dmem_addr[18] ;
 wire \u_riscv_top.core0_dmem_addr[19] ;
 wire \u_riscv_top.core0_dmem_addr[1] ;
 wire \u_riscv_top.core0_dmem_addr[20] ;
 wire \u_riscv_top.core0_dmem_addr[21] ;
 wire \u_riscv_top.core0_dmem_addr[22] ;
 wire \u_riscv_top.core0_dmem_addr[23] ;
 wire \u_riscv_top.core0_dmem_addr[24] ;
 wire \u_riscv_top.core0_dmem_addr[25] ;
 wire \u_riscv_top.core0_dmem_addr[26] ;
 wire \u_riscv_top.core0_dmem_addr[27] ;
 wire \u_riscv_top.core0_dmem_addr[28] ;
 wire \u_riscv_top.core0_dmem_addr[29] ;
 wire \u_riscv_top.core0_dmem_addr[2] ;
 wire \u_riscv_top.core0_dmem_addr[30] ;
 wire \u_riscv_top.core0_dmem_addr[31] ;
 wire \u_riscv_top.core0_dmem_addr[3] ;
 wire \u_riscv_top.core0_dmem_addr[4] ;
 wire \u_riscv_top.core0_dmem_addr[5] ;
 wire \u_riscv_top.core0_dmem_addr[6] ;
 wire \u_riscv_top.core0_dmem_addr[7] ;
 wire \u_riscv_top.core0_dmem_addr[8] ;
 wire \u_riscv_top.core0_dmem_addr[9] ;
 wire \u_riscv_top.core0_dmem_cmd ;
 wire \u_riscv_top.core0_dmem_rdata[0] ;
 wire \u_riscv_top.core0_dmem_rdata[10] ;
 wire \u_riscv_top.core0_dmem_rdata[11] ;
 wire \u_riscv_top.core0_dmem_rdata[12] ;
 wire \u_riscv_top.core0_dmem_rdata[13] ;
 wire \u_riscv_top.core0_dmem_rdata[14] ;
 wire \u_riscv_top.core0_dmem_rdata[15] ;
 wire \u_riscv_top.core0_dmem_rdata[16] ;
 wire \u_riscv_top.core0_dmem_rdata[17] ;
 wire \u_riscv_top.core0_dmem_rdata[18] ;
 wire \u_riscv_top.core0_dmem_rdata[19] ;
 wire \u_riscv_top.core0_dmem_rdata[1] ;
 wire \u_riscv_top.core0_dmem_rdata[20] ;
 wire \u_riscv_top.core0_dmem_rdata[21] ;
 wire \u_riscv_top.core0_dmem_rdata[22] ;
 wire \u_riscv_top.core0_dmem_rdata[23] ;
 wire \u_riscv_top.core0_dmem_rdata[24] ;
 wire \u_riscv_top.core0_dmem_rdata[25] ;
 wire \u_riscv_top.core0_dmem_rdata[26] ;
 wire \u_riscv_top.core0_dmem_rdata[27] ;
 wire \u_riscv_top.core0_dmem_rdata[28] ;
 wire \u_riscv_top.core0_dmem_rdata[29] ;
 wire \u_riscv_top.core0_dmem_rdata[2] ;
 wire \u_riscv_top.core0_dmem_rdata[30] ;
 wire \u_riscv_top.core0_dmem_rdata[31] ;
 wire \u_riscv_top.core0_dmem_rdata[3] ;
 wire \u_riscv_top.core0_dmem_rdata[4] ;
 wire \u_riscv_top.core0_dmem_rdata[5] ;
 wire \u_riscv_top.core0_dmem_rdata[6] ;
 wire \u_riscv_top.core0_dmem_rdata[7] ;
 wire \u_riscv_top.core0_dmem_rdata[8] ;
 wire \u_riscv_top.core0_dmem_rdata[9] ;
 wire \u_riscv_top.core0_dmem_req ;
 wire \u_riscv_top.core0_dmem_req_ack ;
 wire \u_riscv_top.core0_dmem_resp[0] ;
 wire \u_riscv_top.core0_dmem_resp[1] ;
 wire \u_riscv_top.core0_dmem_wdata[0] ;
 wire \u_riscv_top.core0_dmem_wdata[10] ;
 wire \u_riscv_top.core0_dmem_wdata[11] ;
 wire \u_riscv_top.core0_dmem_wdata[12] ;
 wire \u_riscv_top.core0_dmem_wdata[13] ;
 wire \u_riscv_top.core0_dmem_wdata[14] ;
 wire \u_riscv_top.core0_dmem_wdata[15] ;
 wire \u_riscv_top.core0_dmem_wdata[16] ;
 wire \u_riscv_top.core0_dmem_wdata[17] ;
 wire \u_riscv_top.core0_dmem_wdata[18] ;
 wire \u_riscv_top.core0_dmem_wdata[19] ;
 wire \u_riscv_top.core0_dmem_wdata[1] ;
 wire \u_riscv_top.core0_dmem_wdata[20] ;
 wire \u_riscv_top.core0_dmem_wdata[21] ;
 wire \u_riscv_top.core0_dmem_wdata[22] ;
 wire \u_riscv_top.core0_dmem_wdata[23] ;
 wire \u_riscv_top.core0_dmem_wdata[24] ;
 wire \u_riscv_top.core0_dmem_wdata[25] ;
 wire \u_riscv_top.core0_dmem_wdata[26] ;
 wire \u_riscv_top.core0_dmem_wdata[27] ;
 wire \u_riscv_top.core0_dmem_wdata[28] ;
 wire \u_riscv_top.core0_dmem_wdata[29] ;
 wire \u_riscv_top.core0_dmem_wdata[2] ;
 wire \u_riscv_top.core0_dmem_wdata[30] ;
 wire \u_riscv_top.core0_dmem_wdata[31] ;
 wire \u_riscv_top.core0_dmem_wdata[3] ;
 wire \u_riscv_top.core0_dmem_wdata[4] ;
 wire \u_riscv_top.core0_dmem_wdata[5] ;
 wire \u_riscv_top.core0_dmem_wdata[6] ;
 wire \u_riscv_top.core0_dmem_wdata[7] ;
 wire \u_riscv_top.core0_dmem_wdata[8] ;
 wire \u_riscv_top.core0_dmem_wdata[9] ;
 wire \u_riscv_top.core0_dmem_width[0] ;
 wire \u_riscv_top.core0_dmem_width[1] ;
 wire \u_riscv_top.core0_imem_addr[0] ;
 wire \u_riscv_top.core0_imem_addr[10] ;
 wire \u_riscv_top.core0_imem_addr[11] ;
 wire \u_riscv_top.core0_imem_addr[12] ;
 wire \u_riscv_top.core0_imem_addr[13] ;
 wire \u_riscv_top.core0_imem_addr[14] ;
 wire \u_riscv_top.core0_imem_addr[15] ;
 wire \u_riscv_top.core0_imem_addr[16] ;
 wire \u_riscv_top.core0_imem_addr[17] ;
 wire \u_riscv_top.core0_imem_addr[18] ;
 wire \u_riscv_top.core0_imem_addr[19] ;
 wire \u_riscv_top.core0_imem_addr[1] ;
 wire \u_riscv_top.core0_imem_addr[20] ;
 wire \u_riscv_top.core0_imem_addr[21] ;
 wire \u_riscv_top.core0_imem_addr[22] ;
 wire \u_riscv_top.core0_imem_addr[23] ;
 wire \u_riscv_top.core0_imem_addr[24] ;
 wire \u_riscv_top.core0_imem_addr[25] ;
 wire \u_riscv_top.core0_imem_addr[26] ;
 wire \u_riscv_top.core0_imem_addr[27] ;
 wire \u_riscv_top.core0_imem_addr[28] ;
 wire \u_riscv_top.core0_imem_addr[29] ;
 wire \u_riscv_top.core0_imem_addr[2] ;
 wire \u_riscv_top.core0_imem_addr[30] ;
 wire \u_riscv_top.core0_imem_addr[31] ;
 wire \u_riscv_top.core0_imem_addr[3] ;
 wire \u_riscv_top.core0_imem_addr[4] ;
 wire \u_riscv_top.core0_imem_addr[5] ;
 wire \u_riscv_top.core0_imem_addr[6] ;
 wire \u_riscv_top.core0_imem_addr[7] ;
 wire \u_riscv_top.core0_imem_addr[8] ;
 wire \u_riscv_top.core0_imem_addr[9] ;
 wire \u_riscv_top.core0_imem_bl[0] ;
 wire \u_riscv_top.core0_imem_bl[1] ;
 wire \u_riscv_top.core0_imem_bl[2] ;
 wire \u_riscv_top.core0_imem_cmd ;
 wire \u_riscv_top.core0_imem_rdata[0] ;
 wire \u_riscv_top.core0_imem_rdata[10] ;
 wire \u_riscv_top.core0_imem_rdata[11] ;
 wire \u_riscv_top.core0_imem_rdata[12] ;
 wire \u_riscv_top.core0_imem_rdata[13] ;
 wire \u_riscv_top.core0_imem_rdata[14] ;
 wire \u_riscv_top.core0_imem_rdata[15] ;
 wire \u_riscv_top.core0_imem_rdata[16] ;
 wire \u_riscv_top.core0_imem_rdata[17] ;
 wire \u_riscv_top.core0_imem_rdata[18] ;
 wire \u_riscv_top.core0_imem_rdata[19] ;
 wire \u_riscv_top.core0_imem_rdata[1] ;
 wire \u_riscv_top.core0_imem_rdata[20] ;
 wire \u_riscv_top.core0_imem_rdata[21] ;
 wire \u_riscv_top.core0_imem_rdata[22] ;
 wire \u_riscv_top.core0_imem_rdata[23] ;
 wire \u_riscv_top.core0_imem_rdata[24] ;
 wire \u_riscv_top.core0_imem_rdata[25] ;
 wire \u_riscv_top.core0_imem_rdata[26] ;
 wire \u_riscv_top.core0_imem_rdata[27] ;
 wire \u_riscv_top.core0_imem_rdata[28] ;
 wire \u_riscv_top.core0_imem_rdata[29] ;
 wire \u_riscv_top.core0_imem_rdata[2] ;
 wire \u_riscv_top.core0_imem_rdata[30] ;
 wire \u_riscv_top.core0_imem_rdata[31] ;
 wire \u_riscv_top.core0_imem_rdata[3] ;
 wire \u_riscv_top.core0_imem_rdata[4] ;
 wire \u_riscv_top.core0_imem_rdata[5] ;
 wire \u_riscv_top.core0_imem_rdata[6] ;
 wire \u_riscv_top.core0_imem_rdata[7] ;
 wire \u_riscv_top.core0_imem_rdata[8] ;
 wire \u_riscv_top.core0_imem_rdata[9] ;
 wire \u_riscv_top.core0_imem_req ;
 wire \u_riscv_top.core0_imem_req_ack ;
 wire \u_riscv_top.core0_imem_resp[0] ;
 wire \u_riscv_top.core0_imem_resp[1] ;
 wire \u_riscv_top.core0_irq_lines[0] ;
 wire \u_riscv_top.core0_irq_lines[10] ;
 wire \u_riscv_top.core0_irq_lines[11] ;
 wire \u_riscv_top.core0_irq_lines[12] ;
 wire \u_riscv_top.core0_irq_lines[13] ;
 wire \u_riscv_top.core0_irq_lines[14] ;
 wire \u_riscv_top.core0_irq_lines[15] ;
 wire \u_riscv_top.core0_irq_lines[1] ;
 wire \u_riscv_top.core0_irq_lines[2] ;
 wire \u_riscv_top.core0_irq_lines[3] ;
 wire \u_riscv_top.core0_irq_lines[4] ;
 wire \u_riscv_top.core0_irq_lines[5] ;
 wire \u_riscv_top.core0_irq_lines[6] ;
 wire \u_riscv_top.core0_irq_lines[7] ;
 wire \u_riscv_top.core0_irq_lines[8] ;
 wire \u_riscv_top.core0_irq_lines[9] ;
 wire \u_riscv_top.core0_soft_irq ;
 wire \u_riscv_top.core0_timer_irq ;
 wire \u_riscv_top.core0_timer_val[0] ;
 wire \u_riscv_top.core0_timer_val[10] ;
 wire \u_riscv_top.core0_timer_val[11] ;
 wire \u_riscv_top.core0_timer_val[12] ;
 wire \u_riscv_top.core0_timer_val[13] ;
 wire \u_riscv_top.core0_timer_val[14] ;
 wire \u_riscv_top.core0_timer_val[15] ;
 wire \u_riscv_top.core0_timer_val[16] ;
 wire \u_riscv_top.core0_timer_val[17] ;
 wire \u_riscv_top.core0_timer_val[18] ;
 wire \u_riscv_top.core0_timer_val[19] ;
 wire \u_riscv_top.core0_timer_val[1] ;
 wire \u_riscv_top.core0_timer_val[20] ;
 wire \u_riscv_top.core0_timer_val[21] ;
 wire \u_riscv_top.core0_timer_val[22] ;
 wire \u_riscv_top.core0_timer_val[23] ;
 wire \u_riscv_top.core0_timer_val[24] ;
 wire \u_riscv_top.core0_timer_val[25] ;
 wire \u_riscv_top.core0_timer_val[26] ;
 wire \u_riscv_top.core0_timer_val[27] ;
 wire \u_riscv_top.core0_timer_val[28] ;
 wire \u_riscv_top.core0_timer_val[29] ;
 wire \u_riscv_top.core0_timer_val[2] ;
 wire \u_riscv_top.core0_timer_val[30] ;
 wire \u_riscv_top.core0_timer_val[31] ;
 wire \u_riscv_top.core0_timer_val[32] ;
 wire \u_riscv_top.core0_timer_val[33] ;
 wire \u_riscv_top.core0_timer_val[34] ;
 wire \u_riscv_top.core0_timer_val[35] ;
 wire \u_riscv_top.core0_timer_val[36] ;
 wire \u_riscv_top.core0_timer_val[37] ;
 wire \u_riscv_top.core0_timer_val[38] ;
 wire \u_riscv_top.core0_timer_val[39] ;
 wire \u_riscv_top.core0_timer_val[3] ;
 wire \u_riscv_top.core0_timer_val[40] ;
 wire \u_riscv_top.core0_timer_val[41] ;
 wire \u_riscv_top.core0_timer_val[42] ;
 wire \u_riscv_top.core0_timer_val[43] ;
 wire \u_riscv_top.core0_timer_val[44] ;
 wire \u_riscv_top.core0_timer_val[45] ;
 wire \u_riscv_top.core0_timer_val[46] ;
 wire \u_riscv_top.core0_timer_val[47] ;
 wire \u_riscv_top.core0_timer_val[48] ;
 wire \u_riscv_top.core0_timer_val[49] ;
 wire \u_riscv_top.core0_timer_val[4] ;
 wire \u_riscv_top.core0_timer_val[50] ;
 wire \u_riscv_top.core0_timer_val[51] ;
 wire \u_riscv_top.core0_timer_val[52] ;
 wire \u_riscv_top.core0_timer_val[53] ;
 wire \u_riscv_top.core0_timer_val[54] ;
 wire \u_riscv_top.core0_timer_val[55] ;
 wire \u_riscv_top.core0_timer_val[56] ;
 wire \u_riscv_top.core0_timer_val[57] ;
 wire \u_riscv_top.core0_timer_val[58] ;
 wire \u_riscv_top.core0_timer_val[59] ;
 wire \u_riscv_top.core0_timer_val[5] ;
 wire \u_riscv_top.core0_timer_val[60] ;
 wire \u_riscv_top.core0_timer_val[61] ;
 wire \u_riscv_top.core0_timer_val[62] ;
 wire \u_riscv_top.core0_timer_val[63] ;
 wire \u_riscv_top.core0_timer_val[6] ;
 wire \u_riscv_top.core0_timer_val[7] ;
 wire \u_riscv_top.core0_timer_val[8] ;
 wire \u_riscv_top.core0_timer_val[9] ;
 wire \u_riscv_top.core0_uid[0] ;
 wire \u_riscv_top.core0_uid[1] ;
 wire \u_riscv_top.core_clk ;
 wire \u_riscv_top.core_clk_out ;
 wire \u_riscv_top.core_dcache_addr[0] ;
 wire \u_riscv_top.core_dcache_addr[10] ;
 wire \u_riscv_top.core_dcache_addr[11] ;
 wire \u_riscv_top.core_dcache_addr[12] ;
 wire \u_riscv_top.core_dcache_addr[13] ;
 wire \u_riscv_top.core_dcache_addr[14] ;
 wire \u_riscv_top.core_dcache_addr[15] ;
 wire \u_riscv_top.core_dcache_addr[16] ;
 wire \u_riscv_top.core_dcache_addr[17] ;
 wire \u_riscv_top.core_dcache_addr[18] ;
 wire \u_riscv_top.core_dcache_addr[19] ;
 wire \u_riscv_top.core_dcache_addr[1] ;
 wire \u_riscv_top.core_dcache_addr[20] ;
 wire \u_riscv_top.core_dcache_addr[21] ;
 wire \u_riscv_top.core_dcache_addr[22] ;
 wire \u_riscv_top.core_dcache_addr[23] ;
 wire \u_riscv_top.core_dcache_addr[24] ;
 wire \u_riscv_top.core_dcache_addr[25] ;
 wire \u_riscv_top.core_dcache_addr[26] ;
 wire \u_riscv_top.core_dcache_addr[27] ;
 wire \u_riscv_top.core_dcache_addr[28] ;
 wire \u_riscv_top.core_dcache_addr[29] ;
 wire \u_riscv_top.core_dcache_addr[2] ;
 wire \u_riscv_top.core_dcache_addr[30] ;
 wire \u_riscv_top.core_dcache_addr[31] ;
 wire \u_riscv_top.core_dcache_addr[3] ;
 wire \u_riscv_top.core_dcache_addr[4] ;
 wire \u_riscv_top.core_dcache_addr[5] ;
 wire \u_riscv_top.core_dcache_addr[6] ;
 wire \u_riscv_top.core_dcache_addr[7] ;
 wire \u_riscv_top.core_dcache_addr[8] ;
 wire \u_riscv_top.core_dcache_addr[9] ;
 wire \u_riscv_top.core_dcache_cmd ;
 wire \u_riscv_top.core_dcache_rdata[0] ;
 wire \u_riscv_top.core_dcache_rdata[10] ;
 wire \u_riscv_top.core_dcache_rdata[11] ;
 wire \u_riscv_top.core_dcache_rdata[12] ;
 wire \u_riscv_top.core_dcache_rdata[13] ;
 wire \u_riscv_top.core_dcache_rdata[14] ;
 wire \u_riscv_top.core_dcache_rdata[15] ;
 wire \u_riscv_top.core_dcache_rdata[16] ;
 wire \u_riscv_top.core_dcache_rdata[17] ;
 wire \u_riscv_top.core_dcache_rdata[18] ;
 wire \u_riscv_top.core_dcache_rdata[19] ;
 wire \u_riscv_top.core_dcache_rdata[1] ;
 wire \u_riscv_top.core_dcache_rdata[20] ;
 wire \u_riscv_top.core_dcache_rdata[21] ;
 wire \u_riscv_top.core_dcache_rdata[22] ;
 wire \u_riscv_top.core_dcache_rdata[23] ;
 wire \u_riscv_top.core_dcache_rdata[24] ;
 wire \u_riscv_top.core_dcache_rdata[25] ;
 wire \u_riscv_top.core_dcache_rdata[26] ;
 wire \u_riscv_top.core_dcache_rdata[27] ;
 wire \u_riscv_top.core_dcache_rdata[28] ;
 wire \u_riscv_top.core_dcache_rdata[29] ;
 wire \u_riscv_top.core_dcache_rdata[2] ;
 wire \u_riscv_top.core_dcache_rdata[30] ;
 wire \u_riscv_top.core_dcache_rdata[31] ;
 wire \u_riscv_top.core_dcache_rdata[3] ;
 wire \u_riscv_top.core_dcache_rdata[4] ;
 wire \u_riscv_top.core_dcache_rdata[5] ;
 wire \u_riscv_top.core_dcache_rdata[6] ;
 wire \u_riscv_top.core_dcache_rdata[7] ;
 wire \u_riscv_top.core_dcache_rdata[8] ;
 wire \u_riscv_top.core_dcache_rdata[9] ;
 wire \u_riscv_top.core_dcache_req ;
 wire \u_riscv_top.core_dcache_req_ack ;
 wire \u_riscv_top.core_dcache_resp[0] ;
 wire \u_riscv_top.core_dcache_resp[1] ;
 wire \u_riscv_top.core_dcache_wdata[0] ;
 wire \u_riscv_top.core_dcache_wdata[10] ;
 wire \u_riscv_top.core_dcache_wdata[11] ;
 wire \u_riscv_top.core_dcache_wdata[12] ;
 wire \u_riscv_top.core_dcache_wdata[13] ;
 wire \u_riscv_top.core_dcache_wdata[14] ;
 wire \u_riscv_top.core_dcache_wdata[15] ;
 wire \u_riscv_top.core_dcache_wdata[16] ;
 wire \u_riscv_top.core_dcache_wdata[17] ;
 wire \u_riscv_top.core_dcache_wdata[18] ;
 wire \u_riscv_top.core_dcache_wdata[19] ;
 wire \u_riscv_top.core_dcache_wdata[1] ;
 wire \u_riscv_top.core_dcache_wdata[20] ;
 wire \u_riscv_top.core_dcache_wdata[21] ;
 wire \u_riscv_top.core_dcache_wdata[22] ;
 wire \u_riscv_top.core_dcache_wdata[23] ;
 wire \u_riscv_top.core_dcache_wdata[24] ;
 wire \u_riscv_top.core_dcache_wdata[25] ;
 wire \u_riscv_top.core_dcache_wdata[26] ;
 wire \u_riscv_top.core_dcache_wdata[27] ;
 wire \u_riscv_top.core_dcache_wdata[28] ;
 wire \u_riscv_top.core_dcache_wdata[29] ;
 wire \u_riscv_top.core_dcache_wdata[2] ;
 wire \u_riscv_top.core_dcache_wdata[30] ;
 wire \u_riscv_top.core_dcache_wdata[31] ;
 wire \u_riscv_top.core_dcache_wdata[3] ;
 wire \u_riscv_top.core_dcache_wdata[4] ;
 wire \u_riscv_top.core_dcache_wdata[5] ;
 wire \u_riscv_top.core_dcache_wdata[6] ;
 wire \u_riscv_top.core_dcache_wdata[7] ;
 wire \u_riscv_top.core_dcache_wdata[8] ;
 wire \u_riscv_top.core_dcache_wdata[9] ;
 wire \u_riscv_top.core_dcache_width[0] ;
 wire \u_riscv_top.core_dcache_width[1] ;
 wire \u_riscv_top.core_dmem_addr[0] ;
 wire \u_riscv_top.core_dmem_addr[10] ;
 wire \u_riscv_top.core_dmem_addr[11] ;
 wire \u_riscv_top.core_dmem_addr[12] ;
 wire \u_riscv_top.core_dmem_addr[13] ;
 wire \u_riscv_top.core_dmem_addr[14] ;
 wire \u_riscv_top.core_dmem_addr[15] ;
 wire \u_riscv_top.core_dmem_addr[16] ;
 wire \u_riscv_top.core_dmem_addr[17] ;
 wire \u_riscv_top.core_dmem_addr[18] ;
 wire \u_riscv_top.core_dmem_addr[19] ;
 wire \u_riscv_top.core_dmem_addr[1] ;
 wire \u_riscv_top.core_dmem_addr[20] ;
 wire \u_riscv_top.core_dmem_addr[21] ;
 wire \u_riscv_top.core_dmem_addr[22] ;
 wire \u_riscv_top.core_dmem_addr[23] ;
 wire \u_riscv_top.core_dmem_addr[24] ;
 wire \u_riscv_top.core_dmem_addr[25] ;
 wire \u_riscv_top.core_dmem_addr[26] ;
 wire \u_riscv_top.core_dmem_addr[27] ;
 wire \u_riscv_top.core_dmem_addr[28] ;
 wire \u_riscv_top.core_dmem_addr[29] ;
 wire \u_riscv_top.core_dmem_addr[2] ;
 wire \u_riscv_top.core_dmem_addr[30] ;
 wire \u_riscv_top.core_dmem_addr[31] ;
 wire \u_riscv_top.core_dmem_addr[3] ;
 wire \u_riscv_top.core_dmem_addr[4] ;
 wire \u_riscv_top.core_dmem_addr[5] ;
 wire \u_riscv_top.core_dmem_addr[6] ;
 wire \u_riscv_top.core_dmem_addr[7] ;
 wire \u_riscv_top.core_dmem_addr[8] ;
 wire \u_riscv_top.core_dmem_addr[9] ;
 wire \u_riscv_top.core_dmem_bl[0] ;
 wire \u_riscv_top.core_dmem_bl[1] ;
 wire \u_riscv_top.core_dmem_bl[2] ;
 wire \u_riscv_top.core_dmem_cmd ;
 wire \u_riscv_top.core_dmem_rdata[0] ;
 wire \u_riscv_top.core_dmem_rdata[10] ;
 wire \u_riscv_top.core_dmem_rdata[11] ;
 wire \u_riscv_top.core_dmem_rdata[12] ;
 wire \u_riscv_top.core_dmem_rdata[13] ;
 wire \u_riscv_top.core_dmem_rdata[14] ;
 wire \u_riscv_top.core_dmem_rdata[15] ;
 wire \u_riscv_top.core_dmem_rdata[16] ;
 wire \u_riscv_top.core_dmem_rdata[17] ;
 wire \u_riscv_top.core_dmem_rdata[18] ;
 wire \u_riscv_top.core_dmem_rdata[19] ;
 wire \u_riscv_top.core_dmem_rdata[1] ;
 wire \u_riscv_top.core_dmem_rdata[20] ;
 wire \u_riscv_top.core_dmem_rdata[21] ;
 wire \u_riscv_top.core_dmem_rdata[22] ;
 wire \u_riscv_top.core_dmem_rdata[23] ;
 wire \u_riscv_top.core_dmem_rdata[24] ;
 wire \u_riscv_top.core_dmem_rdata[25] ;
 wire \u_riscv_top.core_dmem_rdata[26] ;
 wire \u_riscv_top.core_dmem_rdata[27] ;
 wire \u_riscv_top.core_dmem_rdata[28] ;
 wire \u_riscv_top.core_dmem_rdata[29] ;
 wire \u_riscv_top.core_dmem_rdata[2] ;
 wire \u_riscv_top.core_dmem_rdata[30] ;
 wire \u_riscv_top.core_dmem_rdata[31] ;
 wire \u_riscv_top.core_dmem_rdata[3] ;
 wire \u_riscv_top.core_dmem_rdata[4] ;
 wire \u_riscv_top.core_dmem_rdata[5] ;
 wire \u_riscv_top.core_dmem_rdata[6] ;
 wire \u_riscv_top.core_dmem_rdata[7] ;
 wire \u_riscv_top.core_dmem_rdata[8] ;
 wire \u_riscv_top.core_dmem_rdata[9] ;
 wire \u_riscv_top.core_dmem_req ;
 wire \u_riscv_top.core_dmem_req_ack ;
 wire \u_riscv_top.core_dmem_resp[0] ;
 wire \u_riscv_top.core_dmem_resp[1] ;
 wire \u_riscv_top.core_dmem_wdata[0] ;
 wire \u_riscv_top.core_dmem_wdata[10] ;
 wire \u_riscv_top.core_dmem_wdata[11] ;
 wire \u_riscv_top.core_dmem_wdata[12] ;
 wire \u_riscv_top.core_dmem_wdata[13] ;
 wire \u_riscv_top.core_dmem_wdata[14] ;
 wire \u_riscv_top.core_dmem_wdata[15] ;
 wire \u_riscv_top.core_dmem_wdata[16] ;
 wire \u_riscv_top.core_dmem_wdata[17] ;
 wire \u_riscv_top.core_dmem_wdata[18] ;
 wire \u_riscv_top.core_dmem_wdata[19] ;
 wire \u_riscv_top.core_dmem_wdata[1] ;
 wire \u_riscv_top.core_dmem_wdata[20] ;
 wire \u_riscv_top.core_dmem_wdata[21] ;
 wire \u_riscv_top.core_dmem_wdata[22] ;
 wire \u_riscv_top.core_dmem_wdata[23] ;
 wire \u_riscv_top.core_dmem_wdata[24] ;
 wire \u_riscv_top.core_dmem_wdata[25] ;
 wire \u_riscv_top.core_dmem_wdata[26] ;
 wire \u_riscv_top.core_dmem_wdata[27] ;
 wire \u_riscv_top.core_dmem_wdata[28] ;
 wire \u_riscv_top.core_dmem_wdata[29] ;
 wire \u_riscv_top.core_dmem_wdata[2] ;
 wire \u_riscv_top.core_dmem_wdata[30] ;
 wire \u_riscv_top.core_dmem_wdata[31] ;
 wire \u_riscv_top.core_dmem_wdata[3] ;
 wire \u_riscv_top.core_dmem_wdata[4] ;
 wire \u_riscv_top.core_dmem_wdata[5] ;
 wire \u_riscv_top.core_dmem_wdata[6] ;
 wire \u_riscv_top.core_dmem_wdata[7] ;
 wire \u_riscv_top.core_dmem_wdata[8] ;
 wire \u_riscv_top.core_dmem_wdata[9] ;
 wire \u_riscv_top.core_dmem_width[0] ;
 wire \u_riscv_top.core_dmem_width[1] ;
 wire \u_riscv_top.core_icache_addr[0] ;
 wire \u_riscv_top.core_icache_addr[10] ;
 wire \u_riscv_top.core_icache_addr[11] ;
 wire \u_riscv_top.core_icache_addr[12] ;
 wire \u_riscv_top.core_icache_addr[13] ;
 wire \u_riscv_top.core_icache_addr[14] ;
 wire \u_riscv_top.core_icache_addr[15] ;
 wire \u_riscv_top.core_icache_addr[16] ;
 wire \u_riscv_top.core_icache_addr[17] ;
 wire \u_riscv_top.core_icache_addr[18] ;
 wire \u_riscv_top.core_icache_addr[19] ;
 wire \u_riscv_top.core_icache_addr[1] ;
 wire \u_riscv_top.core_icache_addr[20] ;
 wire \u_riscv_top.core_icache_addr[21] ;
 wire \u_riscv_top.core_icache_addr[22] ;
 wire \u_riscv_top.core_icache_addr[23] ;
 wire \u_riscv_top.core_icache_addr[24] ;
 wire \u_riscv_top.core_icache_addr[25] ;
 wire \u_riscv_top.core_icache_addr[26] ;
 wire \u_riscv_top.core_icache_addr[27] ;
 wire \u_riscv_top.core_icache_addr[28] ;
 wire \u_riscv_top.core_icache_addr[29] ;
 wire \u_riscv_top.core_icache_addr[2] ;
 wire \u_riscv_top.core_icache_addr[30] ;
 wire \u_riscv_top.core_icache_addr[31] ;
 wire \u_riscv_top.core_icache_addr[3] ;
 wire \u_riscv_top.core_icache_addr[4] ;
 wire \u_riscv_top.core_icache_addr[5] ;
 wire \u_riscv_top.core_icache_addr[6] ;
 wire \u_riscv_top.core_icache_addr[7] ;
 wire \u_riscv_top.core_icache_addr[8] ;
 wire \u_riscv_top.core_icache_addr[9] ;
 wire \u_riscv_top.core_icache_bl[0] ;
 wire \u_riscv_top.core_icache_bl[1] ;
 wire \u_riscv_top.core_icache_bl[2] ;
 wire \u_riscv_top.core_icache_cmd ;
 wire \u_riscv_top.core_icache_rdata[0] ;
 wire \u_riscv_top.core_icache_rdata[10] ;
 wire \u_riscv_top.core_icache_rdata[11] ;
 wire \u_riscv_top.core_icache_rdata[12] ;
 wire \u_riscv_top.core_icache_rdata[13] ;
 wire \u_riscv_top.core_icache_rdata[14] ;
 wire \u_riscv_top.core_icache_rdata[15] ;
 wire \u_riscv_top.core_icache_rdata[16] ;
 wire \u_riscv_top.core_icache_rdata[17] ;
 wire \u_riscv_top.core_icache_rdata[18] ;
 wire \u_riscv_top.core_icache_rdata[19] ;
 wire \u_riscv_top.core_icache_rdata[1] ;
 wire \u_riscv_top.core_icache_rdata[20] ;
 wire \u_riscv_top.core_icache_rdata[21] ;
 wire \u_riscv_top.core_icache_rdata[22] ;
 wire \u_riscv_top.core_icache_rdata[23] ;
 wire \u_riscv_top.core_icache_rdata[24] ;
 wire \u_riscv_top.core_icache_rdata[25] ;
 wire \u_riscv_top.core_icache_rdata[26] ;
 wire \u_riscv_top.core_icache_rdata[27] ;
 wire \u_riscv_top.core_icache_rdata[28] ;
 wire \u_riscv_top.core_icache_rdata[29] ;
 wire \u_riscv_top.core_icache_rdata[2] ;
 wire \u_riscv_top.core_icache_rdata[30] ;
 wire \u_riscv_top.core_icache_rdata[31] ;
 wire \u_riscv_top.core_icache_rdata[3] ;
 wire \u_riscv_top.core_icache_rdata[4] ;
 wire \u_riscv_top.core_icache_rdata[5] ;
 wire \u_riscv_top.core_icache_rdata[6] ;
 wire \u_riscv_top.core_icache_rdata[7] ;
 wire \u_riscv_top.core_icache_rdata[8] ;
 wire \u_riscv_top.core_icache_rdata[9] ;
 wire \u_riscv_top.core_icache_req ;
 wire \u_riscv_top.core_icache_req_ack ;
 wire \u_riscv_top.core_icache_resp[0] ;
 wire \u_riscv_top.core_icache_resp[1] ;
 wire \u_riscv_top.core_icache_width[0] ;
 wire \u_riscv_top.core_icache_width[1] ;
 wire \u_riscv_top.cpu_intf_rst_n ;
 wire \u_riscv_top.dcache_mem_addr0[0] ;
 wire \u_riscv_top.dcache_mem_addr0[1] ;
 wire \u_riscv_top.dcache_mem_addr0[2] ;
 wire \u_riscv_top.dcache_mem_addr0[3] ;
 wire \u_riscv_top.dcache_mem_addr0[4] ;
 wire \u_riscv_top.dcache_mem_addr0[5] ;
 wire \u_riscv_top.dcache_mem_addr0[6] ;
 wire \u_riscv_top.dcache_mem_addr0[7] ;
 wire \u_riscv_top.dcache_mem_addr0[8] ;
 wire \u_riscv_top.dcache_mem_addr1[0] ;
 wire \u_riscv_top.dcache_mem_addr1[1] ;
 wire \u_riscv_top.dcache_mem_addr1[2] ;
 wire \u_riscv_top.dcache_mem_addr1[3] ;
 wire \u_riscv_top.dcache_mem_addr1[4] ;
 wire \u_riscv_top.dcache_mem_addr1[5] ;
 wire \u_riscv_top.dcache_mem_addr1[6] ;
 wire \u_riscv_top.dcache_mem_addr1[7] ;
 wire \u_riscv_top.dcache_mem_addr1[8] ;
 wire \u_riscv_top.dcache_mem_clk0 ;
 wire \u_riscv_top.dcache_mem_clk1 ;
 wire \u_riscv_top.dcache_mem_csb0 ;
 wire \u_riscv_top.dcache_mem_csb1 ;
 wire \u_riscv_top.dcache_mem_din0[0] ;
 wire \u_riscv_top.dcache_mem_din0[10] ;
 wire \u_riscv_top.dcache_mem_din0[11] ;
 wire \u_riscv_top.dcache_mem_din0[12] ;
 wire \u_riscv_top.dcache_mem_din0[13] ;
 wire \u_riscv_top.dcache_mem_din0[14] ;
 wire \u_riscv_top.dcache_mem_din0[15] ;
 wire \u_riscv_top.dcache_mem_din0[16] ;
 wire \u_riscv_top.dcache_mem_din0[17] ;
 wire \u_riscv_top.dcache_mem_din0[18] ;
 wire \u_riscv_top.dcache_mem_din0[19] ;
 wire \u_riscv_top.dcache_mem_din0[1] ;
 wire \u_riscv_top.dcache_mem_din0[20] ;
 wire \u_riscv_top.dcache_mem_din0[21] ;
 wire \u_riscv_top.dcache_mem_din0[22] ;
 wire \u_riscv_top.dcache_mem_din0[23] ;
 wire \u_riscv_top.dcache_mem_din0[24] ;
 wire \u_riscv_top.dcache_mem_din0[25] ;
 wire \u_riscv_top.dcache_mem_din0[26] ;
 wire \u_riscv_top.dcache_mem_din0[27] ;
 wire \u_riscv_top.dcache_mem_din0[28] ;
 wire \u_riscv_top.dcache_mem_din0[29] ;
 wire \u_riscv_top.dcache_mem_din0[2] ;
 wire \u_riscv_top.dcache_mem_din0[30] ;
 wire \u_riscv_top.dcache_mem_din0[31] ;
 wire \u_riscv_top.dcache_mem_din0[3] ;
 wire \u_riscv_top.dcache_mem_din0[4] ;
 wire \u_riscv_top.dcache_mem_din0[5] ;
 wire \u_riscv_top.dcache_mem_din0[6] ;
 wire \u_riscv_top.dcache_mem_din0[7] ;
 wire \u_riscv_top.dcache_mem_din0[8] ;
 wire \u_riscv_top.dcache_mem_din0[9] ;
 wire \u_riscv_top.dcache_mem_dout0[0] ;
 wire \u_riscv_top.dcache_mem_dout0[10] ;
 wire \u_riscv_top.dcache_mem_dout0[11] ;
 wire \u_riscv_top.dcache_mem_dout0[12] ;
 wire \u_riscv_top.dcache_mem_dout0[13] ;
 wire \u_riscv_top.dcache_mem_dout0[14] ;
 wire \u_riscv_top.dcache_mem_dout0[15] ;
 wire \u_riscv_top.dcache_mem_dout0[16] ;
 wire \u_riscv_top.dcache_mem_dout0[17] ;
 wire \u_riscv_top.dcache_mem_dout0[18] ;
 wire \u_riscv_top.dcache_mem_dout0[19] ;
 wire \u_riscv_top.dcache_mem_dout0[1] ;
 wire \u_riscv_top.dcache_mem_dout0[20] ;
 wire \u_riscv_top.dcache_mem_dout0[21] ;
 wire \u_riscv_top.dcache_mem_dout0[22] ;
 wire \u_riscv_top.dcache_mem_dout0[23] ;
 wire \u_riscv_top.dcache_mem_dout0[24] ;
 wire \u_riscv_top.dcache_mem_dout0[25] ;
 wire \u_riscv_top.dcache_mem_dout0[26] ;
 wire \u_riscv_top.dcache_mem_dout0[27] ;
 wire \u_riscv_top.dcache_mem_dout0[28] ;
 wire \u_riscv_top.dcache_mem_dout0[29] ;
 wire \u_riscv_top.dcache_mem_dout0[2] ;
 wire \u_riscv_top.dcache_mem_dout0[30] ;
 wire \u_riscv_top.dcache_mem_dout0[31] ;
 wire \u_riscv_top.dcache_mem_dout0[3] ;
 wire \u_riscv_top.dcache_mem_dout0[4] ;
 wire \u_riscv_top.dcache_mem_dout0[5] ;
 wire \u_riscv_top.dcache_mem_dout0[6] ;
 wire \u_riscv_top.dcache_mem_dout0[7] ;
 wire \u_riscv_top.dcache_mem_dout0[8] ;
 wire \u_riscv_top.dcache_mem_dout0[9] ;
 wire \u_riscv_top.dcache_mem_dout1[0] ;
 wire \u_riscv_top.dcache_mem_dout1[10] ;
 wire \u_riscv_top.dcache_mem_dout1[11] ;
 wire \u_riscv_top.dcache_mem_dout1[12] ;
 wire \u_riscv_top.dcache_mem_dout1[13] ;
 wire \u_riscv_top.dcache_mem_dout1[14] ;
 wire \u_riscv_top.dcache_mem_dout1[15] ;
 wire \u_riscv_top.dcache_mem_dout1[16] ;
 wire \u_riscv_top.dcache_mem_dout1[17] ;
 wire \u_riscv_top.dcache_mem_dout1[18] ;
 wire \u_riscv_top.dcache_mem_dout1[19] ;
 wire \u_riscv_top.dcache_mem_dout1[1] ;
 wire \u_riscv_top.dcache_mem_dout1[20] ;
 wire \u_riscv_top.dcache_mem_dout1[21] ;
 wire \u_riscv_top.dcache_mem_dout1[22] ;
 wire \u_riscv_top.dcache_mem_dout1[23] ;
 wire \u_riscv_top.dcache_mem_dout1[24] ;
 wire \u_riscv_top.dcache_mem_dout1[25] ;
 wire \u_riscv_top.dcache_mem_dout1[26] ;
 wire \u_riscv_top.dcache_mem_dout1[27] ;
 wire \u_riscv_top.dcache_mem_dout1[28] ;
 wire \u_riscv_top.dcache_mem_dout1[29] ;
 wire \u_riscv_top.dcache_mem_dout1[2] ;
 wire \u_riscv_top.dcache_mem_dout1[30] ;
 wire \u_riscv_top.dcache_mem_dout1[31] ;
 wire \u_riscv_top.dcache_mem_dout1[3] ;
 wire \u_riscv_top.dcache_mem_dout1[4] ;
 wire \u_riscv_top.dcache_mem_dout1[5] ;
 wire \u_riscv_top.dcache_mem_dout1[6] ;
 wire \u_riscv_top.dcache_mem_dout1[7] ;
 wire \u_riscv_top.dcache_mem_dout1[8] ;
 wire \u_riscv_top.dcache_mem_dout1[9] ;
 wire \u_riscv_top.dcache_mem_web0 ;
 wire \u_riscv_top.dcache_mem_wmask0[0] ;
 wire \u_riscv_top.dcache_mem_wmask0[1] ;
 wire \u_riscv_top.dcache_mem_wmask0[2] ;
 wire \u_riscv_top.dcache_mem_wmask0[3] ;
 wire \u_riscv_top.icache_mem_addr0[0] ;
 wire \u_riscv_top.icache_mem_addr0[1] ;
 wire \u_riscv_top.icache_mem_addr0[2] ;
 wire \u_riscv_top.icache_mem_addr0[3] ;
 wire \u_riscv_top.icache_mem_addr0[4] ;
 wire \u_riscv_top.icache_mem_addr0[5] ;
 wire \u_riscv_top.icache_mem_addr0[6] ;
 wire \u_riscv_top.icache_mem_addr0[7] ;
 wire \u_riscv_top.icache_mem_addr0[8] ;
 wire \u_riscv_top.icache_mem_addr1[0] ;
 wire \u_riscv_top.icache_mem_addr1[1] ;
 wire \u_riscv_top.icache_mem_addr1[2] ;
 wire \u_riscv_top.icache_mem_addr1[3] ;
 wire \u_riscv_top.icache_mem_addr1[4] ;
 wire \u_riscv_top.icache_mem_addr1[5] ;
 wire \u_riscv_top.icache_mem_addr1[6] ;
 wire \u_riscv_top.icache_mem_addr1[7] ;
 wire \u_riscv_top.icache_mem_addr1[8] ;
 wire \u_riscv_top.icache_mem_clk0 ;
 wire \u_riscv_top.icache_mem_clk1 ;
 wire \u_riscv_top.icache_mem_csb0 ;
 wire \u_riscv_top.icache_mem_csb1 ;
 wire \u_riscv_top.icache_mem_din0[0] ;
 wire \u_riscv_top.icache_mem_din0[10] ;
 wire \u_riscv_top.icache_mem_din0[11] ;
 wire \u_riscv_top.icache_mem_din0[12] ;
 wire \u_riscv_top.icache_mem_din0[13] ;
 wire \u_riscv_top.icache_mem_din0[14] ;
 wire \u_riscv_top.icache_mem_din0[15] ;
 wire \u_riscv_top.icache_mem_din0[16] ;
 wire \u_riscv_top.icache_mem_din0[17] ;
 wire \u_riscv_top.icache_mem_din0[18] ;
 wire \u_riscv_top.icache_mem_din0[19] ;
 wire \u_riscv_top.icache_mem_din0[1] ;
 wire \u_riscv_top.icache_mem_din0[20] ;
 wire \u_riscv_top.icache_mem_din0[21] ;
 wire \u_riscv_top.icache_mem_din0[22] ;
 wire \u_riscv_top.icache_mem_din0[23] ;
 wire \u_riscv_top.icache_mem_din0[24] ;
 wire \u_riscv_top.icache_mem_din0[25] ;
 wire \u_riscv_top.icache_mem_din0[26] ;
 wire \u_riscv_top.icache_mem_din0[27] ;
 wire \u_riscv_top.icache_mem_din0[28] ;
 wire \u_riscv_top.icache_mem_din0[29] ;
 wire \u_riscv_top.icache_mem_din0[2] ;
 wire \u_riscv_top.icache_mem_din0[30] ;
 wire \u_riscv_top.icache_mem_din0[31] ;
 wire \u_riscv_top.icache_mem_din0[3] ;
 wire \u_riscv_top.icache_mem_din0[4] ;
 wire \u_riscv_top.icache_mem_din0[5] ;
 wire \u_riscv_top.icache_mem_din0[6] ;
 wire \u_riscv_top.icache_mem_din0[7] ;
 wire \u_riscv_top.icache_mem_din0[8] ;
 wire \u_riscv_top.icache_mem_din0[9] ;
 wire \u_riscv_top.icache_mem_dout1[0] ;
 wire \u_riscv_top.icache_mem_dout1[10] ;
 wire \u_riscv_top.icache_mem_dout1[11] ;
 wire \u_riscv_top.icache_mem_dout1[12] ;
 wire \u_riscv_top.icache_mem_dout1[13] ;
 wire \u_riscv_top.icache_mem_dout1[14] ;
 wire \u_riscv_top.icache_mem_dout1[15] ;
 wire \u_riscv_top.icache_mem_dout1[16] ;
 wire \u_riscv_top.icache_mem_dout1[17] ;
 wire \u_riscv_top.icache_mem_dout1[18] ;
 wire \u_riscv_top.icache_mem_dout1[19] ;
 wire \u_riscv_top.icache_mem_dout1[1] ;
 wire \u_riscv_top.icache_mem_dout1[20] ;
 wire \u_riscv_top.icache_mem_dout1[21] ;
 wire \u_riscv_top.icache_mem_dout1[22] ;
 wire \u_riscv_top.icache_mem_dout1[23] ;
 wire \u_riscv_top.icache_mem_dout1[24] ;
 wire \u_riscv_top.icache_mem_dout1[25] ;
 wire \u_riscv_top.icache_mem_dout1[26] ;
 wire \u_riscv_top.icache_mem_dout1[27] ;
 wire \u_riscv_top.icache_mem_dout1[28] ;
 wire \u_riscv_top.icache_mem_dout1[29] ;
 wire \u_riscv_top.icache_mem_dout1[2] ;
 wire \u_riscv_top.icache_mem_dout1[30] ;
 wire \u_riscv_top.icache_mem_dout1[31] ;
 wire \u_riscv_top.icache_mem_dout1[3] ;
 wire \u_riscv_top.icache_mem_dout1[4] ;
 wire \u_riscv_top.icache_mem_dout1[5] ;
 wire \u_riscv_top.icache_mem_dout1[6] ;
 wire \u_riscv_top.icache_mem_dout1[7] ;
 wire \u_riscv_top.icache_mem_dout1[8] ;
 wire \u_riscv_top.icache_mem_dout1[9] ;
 wire \u_riscv_top.icache_mem_web0 ;
 wire \u_riscv_top.icache_mem_wmask0[0] ;
 wire \u_riscv_top.icache_mem_wmask0[1] ;
 wire \u_riscv_top.icache_mem_wmask0[2] ;
 wire \u_riscv_top.icache_mem_wmask0[3] ;
 wire \u_riscv_top.irq_lines[0] ;
 wire \u_riscv_top.irq_lines[10] ;
 wire \u_riscv_top.irq_lines[11] ;
 wire \u_riscv_top.irq_lines[12] ;
 wire \u_riscv_top.irq_lines[13] ;
 wire \u_riscv_top.irq_lines[14] ;
 wire \u_riscv_top.irq_lines[15] ;
 wire \u_riscv_top.irq_lines[1] ;
 wire \u_riscv_top.irq_lines[2] ;
 wire \u_riscv_top.irq_lines[3] ;
 wire \u_riscv_top.irq_lines[4] ;
 wire \u_riscv_top.irq_lines[5] ;
 wire \u_riscv_top.irq_lines[6] ;
 wire \u_riscv_top.irq_lines[7] ;
 wire \u_riscv_top.irq_lines[8] ;
 wire \u_riscv_top.irq_lines[9] ;
 wire \u_riscv_top.pwrup_rst_n ;
 wire \u_riscv_top.rtc_clk ;
 wire \u_riscv_top.soft_irq ;
 wire \u_riscv_top.sram0_addr0[0] ;
 wire \u_riscv_top.sram0_addr0[1] ;
 wire \u_riscv_top.sram0_addr0[2] ;
 wire \u_riscv_top.sram0_addr0[3] ;
 wire \u_riscv_top.sram0_addr0[4] ;
 wire \u_riscv_top.sram0_addr0[5] ;
 wire \u_riscv_top.sram0_addr0[6] ;
 wire \u_riscv_top.sram0_addr0[7] ;
 wire \u_riscv_top.sram0_addr0[8] ;
 wire \u_riscv_top.sram0_addr1[0] ;
 wire \u_riscv_top.sram0_addr1[1] ;
 wire \u_riscv_top.sram0_addr1[2] ;
 wire \u_riscv_top.sram0_addr1[3] ;
 wire \u_riscv_top.sram0_addr1[4] ;
 wire \u_riscv_top.sram0_addr1[5] ;
 wire \u_riscv_top.sram0_addr1[6] ;
 wire \u_riscv_top.sram0_addr1[7] ;
 wire \u_riscv_top.sram0_addr1[8] ;
 wire \u_riscv_top.sram0_clk0 ;
 wire \u_riscv_top.sram0_clk1 ;
 wire \u_riscv_top.sram0_csb0 ;
 wire \u_riscv_top.sram0_csb1 ;
 wire \u_riscv_top.sram0_din0[0] ;
 wire \u_riscv_top.sram0_din0[10] ;
 wire \u_riscv_top.sram0_din0[11] ;
 wire \u_riscv_top.sram0_din0[12] ;
 wire \u_riscv_top.sram0_din0[13] ;
 wire \u_riscv_top.sram0_din0[14] ;
 wire \u_riscv_top.sram0_din0[15] ;
 wire \u_riscv_top.sram0_din0[16] ;
 wire \u_riscv_top.sram0_din0[17] ;
 wire \u_riscv_top.sram0_din0[18] ;
 wire \u_riscv_top.sram0_din0[19] ;
 wire \u_riscv_top.sram0_din0[1] ;
 wire \u_riscv_top.sram0_din0[20] ;
 wire \u_riscv_top.sram0_din0[21] ;
 wire \u_riscv_top.sram0_din0[22] ;
 wire \u_riscv_top.sram0_din0[23] ;
 wire \u_riscv_top.sram0_din0[24] ;
 wire \u_riscv_top.sram0_din0[25] ;
 wire \u_riscv_top.sram0_din0[26] ;
 wire \u_riscv_top.sram0_din0[27] ;
 wire \u_riscv_top.sram0_din0[28] ;
 wire \u_riscv_top.sram0_din0[29] ;
 wire \u_riscv_top.sram0_din0[2] ;
 wire \u_riscv_top.sram0_din0[30] ;
 wire \u_riscv_top.sram0_din0[31] ;
 wire \u_riscv_top.sram0_din0[3] ;
 wire \u_riscv_top.sram0_din0[4] ;
 wire \u_riscv_top.sram0_din0[5] ;
 wire \u_riscv_top.sram0_din0[6] ;
 wire \u_riscv_top.sram0_din0[7] ;
 wire \u_riscv_top.sram0_din0[8] ;
 wire \u_riscv_top.sram0_din0[9] ;
 wire \u_riscv_top.sram0_dout0[0] ;
 wire \u_riscv_top.sram0_dout0[10] ;
 wire \u_riscv_top.sram0_dout0[11] ;
 wire \u_riscv_top.sram0_dout0[12] ;
 wire \u_riscv_top.sram0_dout0[13] ;
 wire \u_riscv_top.sram0_dout0[14] ;
 wire \u_riscv_top.sram0_dout0[15] ;
 wire \u_riscv_top.sram0_dout0[16] ;
 wire \u_riscv_top.sram0_dout0[17] ;
 wire \u_riscv_top.sram0_dout0[18] ;
 wire \u_riscv_top.sram0_dout0[19] ;
 wire \u_riscv_top.sram0_dout0[1] ;
 wire \u_riscv_top.sram0_dout0[20] ;
 wire \u_riscv_top.sram0_dout0[21] ;
 wire \u_riscv_top.sram0_dout0[22] ;
 wire \u_riscv_top.sram0_dout0[23] ;
 wire \u_riscv_top.sram0_dout0[24] ;
 wire \u_riscv_top.sram0_dout0[25] ;
 wire \u_riscv_top.sram0_dout0[26] ;
 wire \u_riscv_top.sram0_dout0[27] ;
 wire \u_riscv_top.sram0_dout0[28] ;
 wire \u_riscv_top.sram0_dout0[29] ;
 wire \u_riscv_top.sram0_dout0[2] ;
 wire \u_riscv_top.sram0_dout0[30] ;
 wire \u_riscv_top.sram0_dout0[31] ;
 wire \u_riscv_top.sram0_dout0[3] ;
 wire \u_riscv_top.sram0_dout0[4] ;
 wire \u_riscv_top.sram0_dout0[5] ;
 wire \u_riscv_top.sram0_dout0[6] ;
 wire \u_riscv_top.sram0_dout0[7] ;
 wire \u_riscv_top.sram0_dout0[8] ;
 wire \u_riscv_top.sram0_dout0[9] ;
 wire \u_riscv_top.sram0_dout1[0] ;
 wire \u_riscv_top.sram0_dout1[10] ;
 wire \u_riscv_top.sram0_dout1[11] ;
 wire \u_riscv_top.sram0_dout1[12] ;
 wire \u_riscv_top.sram0_dout1[13] ;
 wire \u_riscv_top.sram0_dout1[14] ;
 wire \u_riscv_top.sram0_dout1[15] ;
 wire \u_riscv_top.sram0_dout1[16] ;
 wire \u_riscv_top.sram0_dout1[17] ;
 wire \u_riscv_top.sram0_dout1[18] ;
 wire \u_riscv_top.sram0_dout1[19] ;
 wire \u_riscv_top.sram0_dout1[1] ;
 wire \u_riscv_top.sram0_dout1[20] ;
 wire \u_riscv_top.sram0_dout1[21] ;
 wire \u_riscv_top.sram0_dout1[22] ;
 wire \u_riscv_top.sram0_dout1[23] ;
 wire \u_riscv_top.sram0_dout1[24] ;
 wire \u_riscv_top.sram0_dout1[25] ;
 wire \u_riscv_top.sram0_dout1[26] ;
 wire \u_riscv_top.sram0_dout1[27] ;
 wire \u_riscv_top.sram0_dout1[28] ;
 wire \u_riscv_top.sram0_dout1[29] ;
 wire \u_riscv_top.sram0_dout1[2] ;
 wire \u_riscv_top.sram0_dout1[30] ;
 wire \u_riscv_top.sram0_dout1[31] ;
 wire \u_riscv_top.sram0_dout1[3] ;
 wire \u_riscv_top.sram0_dout1[4] ;
 wire \u_riscv_top.sram0_dout1[5] ;
 wire \u_riscv_top.sram0_dout1[6] ;
 wire \u_riscv_top.sram0_dout1[7] ;
 wire \u_riscv_top.sram0_dout1[8] ;
 wire \u_riscv_top.sram0_dout1[9] ;
 wire \u_riscv_top.sram0_web0 ;
 wire \u_riscv_top.sram0_wmask0[0] ;
 wire \u_riscv_top.sram0_wmask0[1] ;
 wire \u_riscv_top.sram0_wmask0[2] ;
 wire \u_riscv_top.sram0_wmask0[3] ;
 wire \u_riscv_top.wb_clk ;
 wire \u_riscv_top.wb_dcache_ack_i ;
 wire \u_riscv_top.wb_dcache_adr_o[0] ;
 wire \u_riscv_top.wb_dcache_adr_o[10] ;
 wire \u_riscv_top.wb_dcache_adr_o[11] ;
 wire \u_riscv_top.wb_dcache_adr_o[12] ;
 wire \u_riscv_top.wb_dcache_adr_o[13] ;
 wire \u_riscv_top.wb_dcache_adr_o[14] ;
 wire \u_riscv_top.wb_dcache_adr_o[15] ;
 wire \u_riscv_top.wb_dcache_adr_o[16] ;
 wire \u_riscv_top.wb_dcache_adr_o[17] ;
 wire \u_riscv_top.wb_dcache_adr_o[18] ;
 wire \u_riscv_top.wb_dcache_adr_o[19] ;
 wire \u_riscv_top.wb_dcache_adr_o[1] ;
 wire \u_riscv_top.wb_dcache_adr_o[20] ;
 wire \u_riscv_top.wb_dcache_adr_o[21] ;
 wire \u_riscv_top.wb_dcache_adr_o[22] ;
 wire \u_riscv_top.wb_dcache_adr_o[23] ;
 wire \u_riscv_top.wb_dcache_adr_o[24] ;
 wire \u_riscv_top.wb_dcache_adr_o[25] ;
 wire \u_riscv_top.wb_dcache_adr_o[26] ;
 wire \u_riscv_top.wb_dcache_adr_o[27] ;
 wire \u_riscv_top.wb_dcache_adr_o[28] ;
 wire \u_riscv_top.wb_dcache_adr_o[29] ;
 wire \u_riscv_top.wb_dcache_adr_o[2] ;
 wire \u_riscv_top.wb_dcache_adr_o[30] ;
 wire \u_riscv_top.wb_dcache_adr_o[31] ;
 wire \u_riscv_top.wb_dcache_adr_o[3] ;
 wire \u_riscv_top.wb_dcache_adr_o[4] ;
 wire \u_riscv_top.wb_dcache_adr_o[5] ;
 wire \u_riscv_top.wb_dcache_adr_o[6] ;
 wire \u_riscv_top.wb_dcache_adr_o[7] ;
 wire \u_riscv_top.wb_dcache_adr_o[8] ;
 wire \u_riscv_top.wb_dcache_adr_o[9] ;
 wire \u_riscv_top.wb_dcache_bl_o[0] ;
 wire \u_riscv_top.wb_dcache_bl_o[1] ;
 wire \u_riscv_top.wb_dcache_bl_o[2] ;
 wire \u_riscv_top.wb_dcache_bl_o[3] ;
 wire \u_riscv_top.wb_dcache_bl_o[4] ;
 wire \u_riscv_top.wb_dcache_bl_o[5] ;
 wire \u_riscv_top.wb_dcache_bl_o[6] ;
 wire \u_riscv_top.wb_dcache_bl_o[7] ;
 wire \u_riscv_top.wb_dcache_bl_o[8] ;
 wire \u_riscv_top.wb_dcache_bl_o[9] ;
 wire \u_riscv_top.wb_dcache_bry_o ;
 wire \u_riscv_top.wb_dcache_cyc_o ;
 wire \u_riscv_top.wb_dcache_dat_i[0] ;
 wire \u_riscv_top.wb_dcache_dat_i[10] ;
 wire \u_riscv_top.wb_dcache_dat_i[11] ;
 wire \u_riscv_top.wb_dcache_dat_i[12] ;
 wire \u_riscv_top.wb_dcache_dat_i[13] ;
 wire \u_riscv_top.wb_dcache_dat_i[14] ;
 wire \u_riscv_top.wb_dcache_dat_i[15] ;
 wire \u_riscv_top.wb_dcache_dat_i[16] ;
 wire \u_riscv_top.wb_dcache_dat_i[17] ;
 wire \u_riscv_top.wb_dcache_dat_i[18] ;
 wire \u_riscv_top.wb_dcache_dat_i[19] ;
 wire \u_riscv_top.wb_dcache_dat_i[1] ;
 wire \u_riscv_top.wb_dcache_dat_i[20] ;
 wire \u_riscv_top.wb_dcache_dat_i[21] ;
 wire \u_riscv_top.wb_dcache_dat_i[22] ;
 wire \u_riscv_top.wb_dcache_dat_i[23] ;
 wire \u_riscv_top.wb_dcache_dat_i[24] ;
 wire \u_riscv_top.wb_dcache_dat_i[25] ;
 wire \u_riscv_top.wb_dcache_dat_i[26] ;
 wire \u_riscv_top.wb_dcache_dat_i[27] ;
 wire \u_riscv_top.wb_dcache_dat_i[28] ;
 wire \u_riscv_top.wb_dcache_dat_i[29] ;
 wire \u_riscv_top.wb_dcache_dat_i[2] ;
 wire \u_riscv_top.wb_dcache_dat_i[30] ;
 wire \u_riscv_top.wb_dcache_dat_i[31] ;
 wire \u_riscv_top.wb_dcache_dat_i[3] ;
 wire \u_riscv_top.wb_dcache_dat_i[4] ;
 wire \u_riscv_top.wb_dcache_dat_i[5] ;
 wire \u_riscv_top.wb_dcache_dat_i[6] ;
 wire \u_riscv_top.wb_dcache_dat_i[7] ;
 wire \u_riscv_top.wb_dcache_dat_i[8] ;
 wire \u_riscv_top.wb_dcache_dat_i[9] ;
 wire \u_riscv_top.wb_dcache_dat_o[0] ;
 wire \u_riscv_top.wb_dcache_dat_o[10] ;
 wire \u_riscv_top.wb_dcache_dat_o[11] ;
 wire \u_riscv_top.wb_dcache_dat_o[12] ;
 wire \u_riscv_top.wb_dcache_dat_o[13] ;
 wire \u_riscv_top.wb_dcache_dat_o[14] ;
 wire \u_riscv_top.wb_dcache_dat_o[15] ;
 wire \u_riscv_top.wb_dcache_dat_o[16] ;
 wire \u_riscv_top.wb_dcache_dat_o[17] ;
 wire \u_riscv_top.wb_dcache_dat_o[18] ;
 wire \u_riscv_top.wb_dcache_dat_o[19] ;
 wire \u_riscv_top.wb_dcache_dat_o[1] ;
 wire \u_riscv_top.wb_dcache_dat_o[20] ;
 wire \u_riscv_top.wb_dcache_dat_o[21] ;
 wire \u_riscv_top.wb_dcache_dat_o[22] ;
 wire \u_riscv_top.wb_dcache_dat_o[23] ;
 wire \u_riscv_top.wb_dcache_dat_o[24] ;
 wire \u_riscv_top.wb_dcache_dat_o[25] ;
 wire \u_riscv_top.wb_dcache_dat_o[26] ;
 wire \u_riscv_top.wb_dcache_dat_o[27] ;
 wire \u_riscv_top.wb_dcache_dat_o[28] ;
 wire \u_riscv_top.wb_dcache_dat_o[29] ;
 wire \u_riscv_top.wb_dcache_dat_o[2] ;
 wire \u_riscv_top.wb_dcache_dat_o[30] ;
 wire \u_riscv_top.wb_dcache_dat_o[31] ;
 wire \u_riscv_top.wb_dcache_dat_o[3] ;
 wire \u_riscv_top.wb_dcache_dat_o[4] ;
 wire \u_riscv_top.wb_dcache_dat_o[5] ;
 wire \u_riscv_top.wb_dcache_dat_o[6] ;
 wire \u_riscv_top.wb_dcache_dat_o[7] ;
 wire \u_riscv_top.wb_dcache_dat_o[8] ;
 wire \u_riscv_top.wb_dcache_dat_o[9] ;
 wire \u_riscv_top.wb_dcache_err_i ;
 wire \u_riscv_top.wb_dcache_lack_i ;
 wire \u_riscv_top.wb_dcache_sel_o[0] ;
 wire \u_riscv_top.wb_dcache_sel_o[1] ;
 wire \u_riscv_top.wb_dcache_sel_o[2] ;
 wire \u_riscv_top.wb_dcache_sel_o[3] ;
 wire \u_riscv_top.wb_dcache_stb_o ;
 wire \u_riscv_top.wb_dcache_we_o ;
 wire \u_riscv_top.wb_icache_ack_i ;
 wire \u_riscv_top.wb_icache_adr_o[0] ;
 wire \u_riscv_top.wb_icache_adr_o[10] ;
 wire \u_riscv_top.wb_icache_adr_o[11] ;
 wire \u_riscv_top.wb_icache_adr_o[12] ;
 wire \u_riscv_top.wb_icache_adr_o[13] ;
 wire \u_riscv_top.wb_icache_adr_o[14] ;
 wire \u_riscv_top.wb_icache_adr_o[15] ;
 wire \u_riscv_top.wb_icache_adr_o[16] ;
 wire \u_riscv_top.wb_icache_adr_o[17] ;
 wire \u_riscv_top.wb_icache_adr_o[18] ;
 wire \u_riscv_top.wb_icache_adr_o[19] ;
 wire \u_riscv_top.wb_icache_adr_o[1] ;
 wire \u_riscv_top.wb_icache_adr_o[20] ;
 wire \u_riscv_top.wb_icache_adr_o[21] ;
 wire \u_riscv_top.wb_icache_adr_o[22] ;
 wire \u_riscv_top.wb_icache_adr_o[23] ;
 wire \u_riscv_top.wb_icache_adr_o[24] ;
 wire \u_riscv_top.wb_icache_adr_o[25] ;
 wire \u_riscv_top.wb_icache_adr_o[26] ;
 wire \u_riscv_top.wb_icache_adr_o[27] ;
 wire \u_riscv_top.wb_icache_adr_o[28] ;
 wire \u_riscv_top.wb_icache_adr_o[29] ;
 wire \u_riscv_top.wb_icache_adr_o[2] ;
 wire \u_riscv_top.wb_icache_adr_o[30] ;
 wire \u_riscv_top.wb_icache_adr_o[31] ;
 wire \u_riscv_top.wb_icache_adr_o[3] ;
 wire \u_riscv_top.wb_icache_adr_o[4] ;
 wire \u_riscv_top.wb_icache_adr_o[5] ;
 wire \u_riscv_top.wb_icache_adr_o[6] ;
 wire \u_riscv_top.wb_icache_adr_o[7] ;
 wire \u_riscv_top.wb_icache_adr_o[8] ;
 wire \u_riscv_top.wb_icache_adr_o[9] ;
 wire \u_riscv_top.wb_icache_bl_o[0] ;
 wire \u_riscv_top.wb_icache_bl_o[1] ;
 wire \u_riscv_top.wb_icache_bl_o[2] ;
 wire \u_riscv_top.wb_icache_bl_o[3] ;
 wire \u_riscv_top.wb_icache_bl_o[4] ;
 wire \u_riscv_top.wb_icache_bl_o[5] ;
 wire \u_riscv_top.wb_icache_bl_o[6] ;
 wire \u_riscv_top.wb_icache_bl_o[7] ;
 wire \u_riscv_top.wb_icache_bl_o[8] ;
 wire \u_riscv_top.wb_icache_bl_o[9] ;
 wire \u_riscv_top.wb_icache_bry_o ;
 wire \u_riscv_top.wb_icache_cyc_o ;
 wire \u_riscv_top.wb_icache_dat_i[0] ;
 wire \u_riscv_top.wb_icache_dat_i[10] ;
 wire \u_riscv_top.wb_icache_dat_i[11] ;
 wire \u_riscv_top.wb_icache_dat_i[12] ;
 wire \u_riscv_top.wb_icache_dat_i[13] ;
 wire \u_riscv_top.wb_icache_dat_i[14] ;
 wire \u_riscv_top.wb_icache_dat_i[15] ;
 wire \u_riscv_top.wb_icache_dat_i[16] ;
 wire \u_riscv_top.wb_icache_dat_i[17] ;
 wire \u_riscv_top.wb_icache_dat_i[18] ;
 wire \u_riscv_top.wb_icache_dat_i[19] ;
 wire \u_riscv_top.wb_icache_dat_i[1] ;
 wire \u_riscv_top.wb_icache_dat_i[20] ;
 wire \u_riscv_top.wb_icache_dat_i[21] ;
 wire \u_riscv_top.wb_icache_dat_i[22] ;
 wire \u_riscv_top.wb_icache_dat_i[23] ;
 wire \u_riscv_top.wb_icache_dat_i[24] ;
 wire \u_riscv_top.wb_icache_dat_i[25] ;
 wire \u_riscv_top.wb_icache_dat_i[26] ;
 wire \u_riscv_top.wb_icache_dat_i[27] ;
 wire \u_riscv_top.wb_icache_dat_i[28] ;
 wire \u_riscv_top.wb_icache_dat_i[29] ;
 wire \u_riscv_top.wb_icache_dat_i[2] ;
 wire \u_riscv_top.wb_icache_dat_i[30] ;
 wire \u_riscv_top.wb_icache_dat_i[31] ;
 wire \u_riscv_top.wb_icache_dat_i[3] ;
 wire \u_riscv_top.wb_icache_dat_i[4] ;
 wire \u_riscv_top.wb_icache_dat_i[5] ;
 wire \u_riscv_top.wb_icache_dat_i[6] ;
 wire \u_riscv_top.wb_icache_dat_i[7] ;
 wire \u_riscv_top.wb_icache_dat_i[8] ;
 wire \u_riscv_top.wb_icache_dat_i[9] ;
 wire \u_riscv_top.wb_icache_err_i ;
 wire \u_riscv_top.wb_icache_lack_i ;
 wire \u_riscv_top.wb_icache_sel_o[0] ;
 wire \u_riscv_top.wb_icache_sel_o[1] ;
 wire \u_riscv_top.wb_icache_sel_o[2] ;
 wire \u_riscv_top.wb_icache_sel_o[3] ;
 wire \u_riscv_top.wb_icache_stb_o ;
 wire \u_riscv_top.wb_icache_we_o ;
 wire \u_riscv_top.wbd_clk_int ;
 wire \u_riscv_top.wbd_dmem_ack_i ;
 wire \u_riscv_top.wbd_dmem_adr_o[0] ;
 wire \u_riscv_top.wbd_dmem_adr_o[10] ;
 wire \u_riscv_top.wbd_dmem_adr_o[11] ;
 wire \u_riscv_top.wbd_dmem_adr_o[12] ;
 wire \u_riscv_top.wbd_dmem_adr_o[13] ;
 wire \u_riscv_top.wbd_dmem_adr_o[14] ;
 wire \u_riscv_top.wbd_dmem_adr_o[15] ;
 wire \u_riscv_top.wbd_dmem_adr_o[16] ;
 wire \u_riscv_top.wbd_dmem_adr_o[17] ;
 wire \u_riscv_top.wbd_dmem_adr_o[18] ;
 wire \u_riscv_top.wbd_dmem_adr_o[19] ;
 wire \u_riscv_top.wbd_dmem_adr_o[1] ;
 wire \u_riscv_top.wbd_dmem_adr_o[20] ;
 wire \u_riscv_top.wbd_dmem_adr_o[21] ;
 wire \u_riscv_top.wbd_dmem_adr_o[22] ;
 wire \u_riscv_top.wbd_dmem_adr_o[23] ;
 wire \u_riscv_top.wbd_dmem_adr_o[24] ;
 wire \u_riscv_top.wbd_dmem_adr_o[25] ;
 wire \u_riscv_top.wbd_dmem_adr_o[26] ;
 wire \u_riscv_top.wbd_dmem_adr_o[27] ;
 wire \u_riscv_top.wbd_dmem_adr_o[28] ;
 wire \u_riscv_top.wbd_dmem_adr_o[29] ;
 wire \u_riscv_top.wbd_dmem_adr_o[2] ;
 wire \u_riscv_top.wbd_dmem_adr_o[30] ;
 wire \u_riscv_top.wbd_dmem_adr_o[31] ;
 wire \u_riscv_top.wbd_dmem_adr_o[3] ;
 wire \u_riscv_top.wbd_dmem_adr_o[4] ;
 wire \u_riscv_top.wbd_dmem_adr_o[5] ;
 wire \u_riscv_top.wbd_dmem_adr_o[6] ;
 wire \u_riscv_top.wbd_dmem_adr_o[7] ;
 wire \u_riscv_top.wbd_dmem_adr_o[8] ;
 wire \u_riscv_top.wbd_dmem_adr_o[9] ;
 wire \u_riscv_top.wbd_dmem_bl_o[0] ;
 wire \u_riscv_top.wbd_dmem_bl_o[1] ;
 wire \u_riscv_top.wbd_dmem_bl_o[2] ;
 wire \u_riscv_top.wbd_dmem_bry_o ;
 wire \u_riscv_top.wbd_dmem_dat_i[0] ;
 wire \u_riscv_top.wbd_dmem_dat_i[10] ;
 wire \u_riscv_top.wbd_dmem_dat_i[11] ;
 wire \u_riscv_top.wbd_dmem_dat_i[12] ;
 wire \u_riscv_top.wbd_dmem_dat_i[13] ;
 wire \u_riscv_top.wbd_dmem_dat_i[14] ;
 wire \u_riscv_top.wbd_dmem_dat_i[15] ;
 wire \u_riscv_top.wbd_dmem_dat_i[16] ;
 wire \u_riscv_top.wbd_dmem_dat_i[17] ;
 wire \u_riscv_top.wbd_dmem_dat_i[18] ;
 wire \u_riscv_top.wbd_dmem_dat_i[19] ;
 wire \u_riscv_top.wbd_dmem_dat_i[1] ;
 wire \u_riscv_top.wbd_dmem_dat_i[20] ;
 wire \u_riscv_top.wbd_dmem_dat_i[21] ;
 wire \u_riscv_top.wbd_dmem_dat_i[22] ;
 wire \u_riscv_top.wbd_dmem_dat_i[23] ;
 wire \u_riscv_top.wbd_dmem_dat_i[24] ;
 wire \u_riscv_top.wbd_dmem_dat_i[25] ;
 wire \u_riscv_top.wbd_dmem_dat_i[26] ;
 wire \u_riscv_top.wbd_dmem_dat_i[27] ;
 wire \u_riscv_top.wbd_dmem_dat_i[28] ;
 wire \u_riscv_top.wbd_dmem_dat_i[29] ;
 wire \u_riscv_top.wbd_dmem_dat_i[2] ;
 wire \u_riscv_top.wbd_dmem_dat_i[30] ;
 wire \u_riscv_top.wbd_dmem_dat_i[31] ;
 wire \u_riscv_top.wbd_dmem_dat_i[3] ;
 wire \u_riscv_top.wbd_dmem_dat_i[4] ;
 wire \u_riscv_top.wbd_dmem_dat_i[5] ;
 wire \u_riscv_top.wbd_dmem_dat_i[6] ;
 wire \u_riscv_top.wbd_dmem_dat_i[7] ;
 wire \u_riscv_top.wbd_dmem_dat_i[8] ;
 wire \u_riscv_top.wbd_dmem_dat_i[9] ;
 wire \u_riscv_top.wbd_dmem_dat_o[0] ;
 wire \u_riscv_top.wbd_dmem_dat_o[10] ;
 wire \u_riscv_top.wbd_dmem_dat_o[11] ;
 wire \u_riscv_top.wbd_dmem_dat_o[12] ;
 wire \u_riscv_top.wbd_dmem_dat_o[13] ;
 wire \u_riscv_top.wbd_dmem_dat_o[14] ;
 wire \u_riscv_top.wbd_dmem_dat_o[15] ;
 wire \u_riscv_top.wbd_dmem_dat_o[16] ;
 wire \u_riscv_top.wbd_dmem_dat_o[17] ;
 wire \u_riscv_top.wbd_dmem_dat_o[18] ;
 wire \u_riscv_top.wbd_dmem_dat_o[19] ;
 wire \u_riscv_top.wbd_dmem_dat_o[1] ;
 wire \u_riscv_top.wbd_dmem_dat_o[20] ;
 wire \u_riscv_top.wbd_dmem_dat_o[21] ;
 wire \u_riscv_top.wbd_dmem_dat_o[22] ;
 wire \u_riscv_top.wbd_dmem_dat_o[23] ;
 wire \u_riscv_top.wbd_dmem_dat_o[24] ;
 wire \u_riscv_top.wbd_dmem_dat_o[25] ;
 wire \u_riscv_top.wbd_dmem_dat_o[26] ;
 wire \u_riscv_top.wbd_dmem_dat_o[27] ;
 wire \u_riscv_top.wbd_dmem_dat_o[28] ;
 wire \u_riscv_top.wbd_dmem_dat_o[29] ;
 wire \u_riscv_top.wbd_dmem_dat_o[2] ;
 wire \u_riscv_top.wbd_dmem_dat_o[30] ;
 wire \u_riscv_top.wbd_dmem_dat_o[31] ;
 wire \u_riscv_top.wbd_dmem_dat_o[3] ;
 wire \u_riscv_top.wbd_dmem_dat_o[4] ;
 wire \u_riscv_top.wbd_dmem_dat_o[5] ;
 wire \u_riscv_top.wbd_dmem_dat_o[6] ;
 wire \u_riscv_top.wbd_dmem_dat_o[7] ;
 wire \u_riscv_top.wbd_dmem_dat_o[8] ;
 wire \u_riscv_top.wbd_dmem_dat_o[9] ;
 wire \u_riscv_top.wbd_dmem_err_i ;
 wire \u_riscv_top.wbd_dmem_lack_i ;
 wire \u_riscv_top.wbd_dmem_sel_o[0] ;
 wire \u_riscv_top.wbd_dmem_sel_o[1] ;
 wire \u_riscv_top.wbd_dmem_sel_o[2] ;
 wire \u_riscv_top.wbd_dmem_sel_o[3] ;
 wire \u_riscv_top.wbd_dmem_stb_o ;
 wire \u_riscv_top.wbd_dmem_we_o ;
 wire \uart_rst_n[0] ;
 wire \uart_rst_n[1] ;
 wire \uart_rxd[0] ;
 wire \uart_rxd[1] ;
 wire \uart_txd[0] ;
 wire \uart_txd[1] ;
 wire uartm_rxd;
 wire uartm_txd;
 wire usb_clk;
 wire usb_dn_i;
 wire usb_dn_o;
 wire usb_dp_i;
 wire usb_dp_o;
 wire usb_intr_o;
 wire usb_oen;
 wire usb_rst_n;
 wire wbd_clk_int;
 wire wbd_clk_pinmux_rp;
 wire wbd_clk_pinmux_skew;
 wire wbd_clk_qspi_rp;
 wire wbd_clk_spi;
 wire wbd_clk_uart_rp;
 wire wbd_clk_uart_skew;
 wire wbd_clk_wh;
 wire wbd_clk_wi_skew;
 wire wbd_glbl_ack_i;
 wire \wbd_glbl_adr_o[0] ;
 wire \wbd_glbl_adr_o[1] ;
 wire \wbd_glbl_adr_o[2] ;
 wire \wbd_glbl_adr_o[3] ;
 wire \wbd_glbl_adr_o[4] ;
 wire \wbd_glbl_adr_o[5] ;
 wire \wbd_glbl_adr_o[6] ;
 wire \wbd_glbl_adr_o[7] ;
 wire wbd_glbl_cyc_o;
 wire \wbd_glbl_dat_i[0] ;
 wire \wbd_glbl_dat_i[10] ;
 wire \wbd_glbl_dat_i[11] ;
 wire \wbd_glbl_dat_i[12] ;
 wire \wbd_glbl_dat_i[13] ;
 wire \wbd_glbl_dat_i[14] ;
 wire \wbd_glbl_dat_i[15] ;
 wire \wbd_glbl_dat_i[16] ;
 wire \wbd_glbl_dat_i[17] ;
 wire \wbd_glbl_dat_i[18] ;
 wire \wbd_glbl_dat_i[19] ;
 wire \wbd_glbl_dat_i[1] ;
 wire \wbd_glbl_dat_i[20] ;
 wire \wbd_glbl_dat_i[21] ;
 wire \wbd_glbl_dat_i[22] ;
 wire \wbd_glbl_dat_i[23] ;
 wire \wbd_glbl_dat_i[24] ;
 wire \wbd_glbl_dat_i[25] ;
 wire \wbd_glbl_dat_i[26] ;
 wire \wbd_glbl_dat_i[27] ;
 wire \wbd_glbl_dat_i[28] ;
 wire \wbd_glbl_dat_i[29] ;
 wire \wbd_glbl_dat_i[2] ;
 wire \wbd_glbl_dat_i[30] ;
 wire \wbd_glbl_dat_i[31] ;
 wire \wbd_glbl_dat_i[3] ;
 wire \wbd_glbl_dat_i[4] ;
 wire \wbd_glbl_dat_i[5] ;
 wire \wbd_glbl_dat_i[6] ;
 wire \wbd_glbl_dat_i[7] ;
 wire \wbd_glbl_dat_i[8] ;
 wire \wbd_glbl_dat_i[9] ;
 wire \wbd_glbl_dat_o[0] ;
 wire \wbd_glbl_dat_o[10] ;
 wire \wbd_glbl_dat_o[11] ;
 wire \wbd_glbl_dat_o[12] ;
 wire \wbd_glbl_dat_o[13] ;
 wire \wbd_glbl_dat_o[14] ;
 wire \wbd_glbl_dat_o[15] ;
 wire \wbd_glbl_dat_o[16] ;
 wire \wbd_glbl_dat_o[17] ;
 wire \wbd_glbl_dat_o[18] ;
 wire \wbd_glbl_dat_o[19] ;
 wire \wbd_glbl_dat_o[1] ;
 wire \wbd_glbl_dat_o[20] ;
 wire \wbd_glbl_dat_o[21] ;
 wire \wbd_glbl_dat_o[22] ;
 wire \wbd_glbl_dat_o[23] ;
 wire \wbd_glbl_dat_o[24] ;
 wire \wbd_glbl_dat_o[25] ;
 wire \wbd_glbl_dat_o[26] ;
 wire \wbd_glbl_dat_o[27] ;
 wire \wbd_glbl_dat_o[28] ;
 wire \wbd_glbl_dat_o[29] ;
 wire \wbd_glbl_dat_o[2] ;
 wire \wbd_glbl_dat_o[30] ;
 wire \wbd_glbl_dat_o[31] ;
 wire \wbd_glbl_dat_o[3] ;
 wire \wbd_glbl_dat_o[4] ;
 wire \wbd_glbl_dat_o[5] ;
 wire \wbd_glbl_dat_o[6] ;
 wire \wbd_glbl_dat_o[7] ;
 wire \wbd_glbl_dat_o[8] ;
 wire \wbd_glbl_dat_o[9] ;
 wire \wbd_glbl_sel_o[0] ;
 wire \wbd_glbl_sel_o[1] ;
 wire \wbd_glbl_sel_o[2] ;
 wire \wbd_glbl_sel_o[3] ;
 wire wbd_glbl_stb_o;
 wire wbd_glbl_we_o;
 wire wbd_int_ack_o;
 wire \wbd_int_adr_i[0] ;
 wire \wbd_int_adr_i[10] ;
 wire \wbd_int_adr_i[11] ;
 wire \wbd_int_adr_i[12] ;
 wire \wbd_int_adr_i[13] ;
 wire \wbd_int_adr_i[14] ;
 wire \wbd_int_adr_i[15] ;
 wire \wbd_int_adr_i[16] ;
 wire \wbd_int_adr_i[17] ;
 wire \wbd_int_adr_i[18] ;
 wire \wbd_int_adr_i[19] ;
 wire \wbd_int_adr_i[1] ;
 wire \wbd_int_adr_i[20] ;
 wire \wbd_int_adr_i[21] ;
 wire \wbd_int_adr_i[22] ;
 wire \wbd_int_adr_i[23] ;
 wire \wbd_int_adr_i[24] ;
 wire \wbd_int_adr_i[25] ;
 wire \wbd_int_adr_i[26] ;
 wire \wbd_int_adr_i[27] ;
 wire \wbd_int_adr_i[28] ;
 wire \wbd_int_adr_i[29] ;
 wire \wbd_int_adr_i[2] ;
 wire \wbd_int_adr_i[30] ;
 wire \wbd_int_adr_i[31] ;
 wire \wbd_int_adr_i[3] ;
 wire \wbd_int_adr_i[4] ;
 wire \wbd_int_adr_i[5] ;
 wire \wbd_int_adr_i[6] ;
 wire \wbd_int_adr_i[7] ;
 wire \wbd_int_adr_i[8] ;
 wire \wbd_int_adr_i[9] ;
 wire wbd_int_cyc_i;
 wire \wbd_int_dat_i[0] ;
 wire \wbd_int_dat_i[10] ;
 wire \wbd_int_dat_i[11] ;
 wire \wbd_int_dat_i[12] ;
 wire \wbd_int_dat_i[13] ;
 wire \wbd_int_dat_i[14] ;
 wire \wbd_int_dat_i[15] ;
 wire \wbd_int_dat_i[16] ;
 wire \wbd_int_dat_i[17] ;
 wire \wbd_int_dat_i[18] ;
 wire \wbd_int_dat_i[19] ;
 wire \wbd_int_dat_i[1] ;
 wire \wbd_int_dat_i[20] ;
 wire \wbd_int_dat_i[21] ;
 wire \wbd_int_dat_i[22] ;
 wire \wbd_int_dat_i[23] ;
 wire \wbd_int_dat_i[24] ;
 wire \wbd_int_dat_i[25] ;
 wire \wbd_int_dat_i[26] ;
 wire \wbd_int_dat_i[27] ;
 wire \wbd_int_dat_i[28] ;
 wire \wbd_int_dat_i[29] ;
 wire \wbd_int_dat_i[2] ;
 wire \wbd_int_dat_i[30] ;
 wire \wbd_int_dat_i[31] ;
 wire \wbd_int_dat_i[3] ;
 wire \wbd_int_dat_i[4] ;
 wire \wbd_int_dat_i[5] ;
 wire \wbd_int_dat_i[6] ;
 wire \wbd_int_dat_i[7] ;
 wire \wbd_int_dat_i[8] ;
 wire \wbd_int_dat_i[9] ;
 wire \wbd_int_dat_o[0] ;
 wire \wbd_int_dat_o[10] ;
 wire \wbd_int_dat_o[11] ;
 wire \wbd_int_dat_o[12] ;
 wire \wbd_int_dat_o[13] ;
 wire \wbd_int_dat_o[14] ;
 wire \wbd_int_dat_o[15] ;
 wire \wbd_int_dat_o[16] ;
 wire \wbd_int_dat_o[17] ;
 wire \wbd_int_dat_o[18] ;
 wire \wbd_int_dat_o[19] ;
 wire \wbd_int_dat_o[1] ;
 wire \wbd_int_dat_o[20] ;
 wire \wbd_int_dat_o[21] ;
 wire \wbd_int_dat_o[22] ;
 wire \wbd_int_dat_o[23] ;
 wire \wbd_int_dat_o[24] ;
 wire \wbd_int_dat_o[25] ;
 wire \wbd_int_dat_o[26] ;
 wire \wbd_int_dat_o[27] ;
 wire \wbd_int_dat_o[28] ;
 wire \wbd_int_dat_o[29] ;
 wire \wbd_int_dat_o[2] ;
 wire \wbd_int_dat_o[30] ;
 wire \wbd_int_dat_o[31] ;
 wire \wbd_int_dat_o[3] ;
 wire \wbd_int_dat_o[4] ;
 wire \wbd_int_dat_o[5] ;
 wire \wbd_int_dat_o[6] ;
 wire \wbd_int_dat_o[7] ;
 wire \wbd_int_dat_o[8] ;
 wire \wbd_int_dat_o[9] ;
 wire wbd_int_err_o;
 wire \wbd_int_sel_i[0] ;
 wire \wbd_int_sel_i[1] ;
 wire \wbd_int_sel_i[2] ;
 wire \wbd_int_sel_i[3] ;
 wire wbd_int_stb_i;
 wire wbd_int_we_i;
 wire wbd_pll_rst_n;
 wire wbd_spim_ack_i;
 wire \wbd_spim_adr_o[0] ;
 wire \wbd_spim_adr_o[10] ;
 wire \wbd_spim_adr_o[11] ;
 wire \wbd_spim_adr_o[12] ;
 wire \wbd_spim_adr_o[13] ;
 wire \wbd_spim_adr_o[14] ;
 wire \wbd_spim_adr_o[15] ;
 wire \wbd_spim_adr_o[16] ;
 wire \wbd_spim_adr_o[17] ;
 wire \wbd_spim_adr_o[18] ;
 wire \wbd_spim_adr_o[19] ;
 wire \wbd_spim_adr_o[1] ;
 wire \wbd_spim_adr_o[20] ;
 wire \wbd_spim_adr_o[21] ;
 wire \wbd_spim_adr_o[22] ;
 wire \wbd_spim_adr_o[23] ;
 wire \wbd_spim_adr_o[24] ;
 wire \wbd_spim_adr_o[25] ;
 wire \wbd_spim_adr_o[26] ;
 wire \wbd_spim_adr_o[27] ;
 wire \wbd_spim_adr_o[28] ;
 wire \wbd_spim_adr_o[29] ;
 wire \wbd_spim_adr_o[2] ;
 wire \wbd_spim_adr_o[30] ;
 wire \wbd_spim_adr_o[31] ;
 wire \wbd_spim_adr_o[3] ;
 wire \wbd_spim_adr_o[4] ;
 wire \wbd_spim_adr_o[5] ;
 wire \wbd_spim_adr_o[6] ;
 wire \wbd_spim_adr_o[7] ;
 wire \wbd_spim_adr_o[8] ;
 wire \wbd_spim_adr_o[9] ;
 wire \wbd_spim_bl_o[0] ;
 wire \wbd_spim_bl_o[1] ;
 wire \wbd_spim_bl_o[2] ;
 wire \wbd_spim_bl_o[3] ;
 wire \wbd_spim_bl_o[4] ;
 wire \wbd_spim_bl_o[5] ;
 wire \wbd_spim_bl_o[6] ;
 wire \wbd_spim_bl_o[7] ;
 wire \wbd_spim_bl_o[8] ;
 wire \wbd_spim_bl_o[9] ;
 wire wbd_spim_bry_o;
 wire wbd_spim_cyc_o;
 wire \wbd_spim_dat_i[0] ;
 wire \wbd_spim_dat_i[10] ;
 wire \wbd_spim_dat_i[11] ;
 wire \wbd_spim_dat_i[12] ;
 wire \wbd_spim_dat_i[13] ;
 wire \wbd_spim_dat_i[14] ;
 wire \wbd_spim_dat_i[15] ;
 wire \wbd_spim_dat_i[16] ;
 wire \wbd_spim_dat_i[17] ;
 wire \wbd_spim_dat_i[18] ;
 wire \wbd_spim_dat_i[19] ;
 wire \wbd_spim_dat_i[1] ;
 wire \wbd_spim_dat_i[20] ;
 wire \wbd_spim_dat_i[21] ;
 wire \wbd_spim_dat_i[22] ;
 wire \wbd_spim_dat_i[23] ;
 wire \wbd_spim_dat_i[24] ;
 wire \wbd_spim_dat_i[25] ;
 wire \wbd_spim_dat_i[26] ;
 wire \wbd_spim_dat_i[27] ;
 wire \wbd_spim_dat_i[28] ;
 wire \wbd_spim_dat_i[29] ;
 wire \wbd_spim_dat_i[2] ;
 wire \wbd_spim_dat_i[30] ;
 wire \wbd_spim_dat_i[31] ;
 wire \wbd_spim_dat_i[3] ;
 wire \wbd_spim_dat_i[4] ;
 wire \wbd_spim_dat_i[5] ;
 wire \wbd_spim_dat_i[6] ;
 wire \wbd_spim_dat_i[7] ;
 wire \wbd_spim_dat_i[8] ;
 wire \wbd_spim_dat_i[9] ;
 wire \wbd_spim_dat_o[0] ;
 wire \wbd_spim_dat_o[10] ;
 wire \wbd_spim_dat_o[11] ;
 wire \wbd_spim_dat_o[12] ;
 wire \wbd_spim_dat_o[13] ;
 wire \wbd_spim_dat_o[14] ;
 wire \wbd_spim_dat_o[15] ;
 wire \wbd_spim_dat_o[16] ;
 wire \wbd_spim_dat_o[17] ;
 wire \wbd_spim_dat_o[18] ;
 wire \wbd_spim_dat_o[19] ;
 wire \wbd_spim_dat_o[1] ;
 wire \wbd_spim_dat_o[20] ;
 wire \wbd_spim_dat_o[21] ;
 wire \wbd_spim_dat_o[22] ;
 wire \wbd_spim_dat_o[23] ;
 wire \wbd_spim_dat_o[24] ;
 wire \wbd_spim_dat_o[25] ;
 wire \wbd_spim_dat_o[26] ;
 wire \wbd_spim_dat_o[27] ;
 wire \wbd_spim_dat_o[28] ;
 wire \wbd_spim_dat_o[29] ;
 wire \wbd_spim_dat_o[2] ;
 wire \wbd_spim_dat_o[30] ;
 wire \wbd_spim_dat_o[31] ;
 wire \wbd_spim_dat_o[3] ;
 wire \wbd_spim_dat_o[4] ;
 wire \wbd_spim_dat_o[5] ;
 wire \wbd_spim_dat_o[6] ;
 wire \wbd_spim_dat_o[7] ;
 wire \wbd_spim_dat_o[8] ;
 wire \wbd_spim_dat_o[9] ;
 wire wbd_spim_err_i;
 wire wbd_spim_lack_i;
 wire \wbd_spim_sel_o[0] ;
 wire \wbd_spim_sel_o[1] ;
 wire \wbd_spim_sel_o[2] ;
 wire \wbd_spim_sel_o[3] ;
 wire wbd_spim_stb_o;
 wire wbd_spim_we_o;
 wire wbd_uart_ack_i;
 wire \wbd_uart_adr_o[0] ;
 wire \wbd_uart_adr_o[1] ;
 wire \wbd_uart_adr_o[2] ;
 wire \wbd_uart_adr_o[3] ;
 wire \wbd_uart_adr_o[4] ;
 wire \wbd_uart_adr_o[5] ;
 wire \wbd_uart_adr_o[6] ;
 wire \wbd_uart_adr_o[7] ;
 wire \wbd_uart_adr_o[8] ;
 wire wbd_uart_cyc_o;
 wire \wbd_uart_dat_i[0] ;
 wire \wbd_uart_dat_i[10] ;
 wire \wbd_uart_dat_i[11] ;
 wire \wbd_uart_dat_i[12] ;
 wire \wbd_uart_dat_i[13] ;
 wire \wbd_uart_dat_i[14] ;
 wire \wbd_uart_dat_i[15] ;
 wire \wbd_uart_dat_i[16] ;
 wire \wbd_uart_dat_i[17] ;
 wire \wbd_uart_dat_i[18] ;
 wire \wbd_uart_dat_i[19] ;
 wire \wbd_uart_dat_i[1] ;
 wire \wbd_uart_dat_i[20] ;
 wire \wbd_uart_dat_i[21] ;
 wire \wbd_uart_dat_i[22] ;
 wire \wbd_uart_dat_i[23] ;
 wire \wbd_uart_dat_i[24] ;
 wire \wbd_uart_dat_i[25] ;
 wire \wbd_uart_dat_i[26] ;
 wire \wbd_uart_dat_i[27] ;
 wire \wbd_uart_dat_i[28] ;
 wire \wbd_uart_dat_i[29] ;
 wire \wbd_uart_dat_i[2] ;
 wire \wbd_uart_dat_i[30] ;
 wire \wbd_uart_dat_i[31] ;
 wire \wbd_uart_dat_i[3] ;
 wire \wbd_uart_dat_i[4] ;
 wire \wbd_uart_dat_i[5] ;
 wire \wbd_uart_dat_i[6] ;
 wire \wbd_uart_dat_i[7] ;
 wire \wbd_uart_dat_i[8] ;
 wire \wbd_uart_dat_i[9] ;
 wire \wbd_uart_dat_o[0] ;
 wire \wbd_uart_dat_o[10] ;
 wire \wbd_uart_dat_o[11] ;
 wire \wbd_uart_dat_o[12] ;
 wire \wbd_uart_dat_o[13] ;
 wire \wbd_uart_dat_o[14] ;
 wire \wbd_uart_dat_o[15] ;
 wire \wbd_uart_dat_o[16] ;
 wire \wbd_uart_dat_o[17] ;
 wire \wbd_uart_dat_o[18] ;
 wire \wbd_uart_dat_o[19] ;
 wire \wbd_uart_dat_o[1] ;
 wire \wbd_uart_dat_o[20] ;
 wire \wbd_uart_dat_o[21] ;
 wire \wbd_uart_dat_o[22] ;
 wire \wbd_uart_dat_o[23] ;
 wire \wbd_uart_dat_o[24] ;
 wire \wbd_uart_dat_o[25] ;
 wire \wbd_uart_dat_o[26] ;
 wire \wbd_uart_dat_o[27] ;
 wire \wbd_uart_dat_o[28] ;
 wire \wbd_uart_dat_o[29] ;
 wire \wbd_uart_dat_o[2] ;
 wire \wbd_uart_dat_o[30] ;
 wire \wbd_uart_dat_o[31] ;
 wire \wbd_uart_dat_o[3] ;
 wire \wbd_uart_dat_o[4] ;
 wire \wbd_uart_dat_o[5] ;
 wire \wbd_uart_dat_o[6] ;
 wire \wbd_uart_dat_o[7] ;
 wire \wbd_uart_dat_o[8] ;
 wire \wbd_uart_dat_o[9] ;
 wire \wbd_uart_sel_o[0] ;
 wire \wbd_uart_sel_o[1] ;
 wire \wbd_uart_sel_o[2] ;
 wire \wbd_uart_sel_o[3] ;
 wire wbd_uart_stb_o;
 wire wbd_uart_we_o;

 sky130_sram_2kbyte_1rw1r_32x512_8 u_dcache_2kb (.csb0(\u_riscv_top.dcache_mem_csb0 ),
    .csb1(\u_riscv_top.dcache_mem_csb1 ),
    .web0(\u_riscv_top.dcache_mem_web0 ),
    .clk0(\u_riscv_top.dcache_mem_clk0 ),
    .clk1(\u_riscv_top.dcache_mem_clk1 ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\u_riscv_top.dcache_mem_addr0[8] ,
    \u_riscv_top.dcache_mem_addr0[7] ,
    \u_riscv_top.dcache_mem_addr0[6] ,
    \u_riscv_top.dcache_mem_addr0[5] ,
    \u_riscv_top.dcache_mem_addr0[4] ,
    \u_riscv_top.dcache_mem_addr0[3] ,
    \u_riscv_top.dcache_mem_addr0[2] ,
    \u_riscv_top.dcache_mem_addr0[1] ,
    \u_riscv_top.dcache_mem_addr0[0] }),
    .addr1({\u_riscv_top.dcache_mem_addr1[8] ,
    \u_riscv_top.dcache_mem_addr1[7] ,
    \u_riscv_top.dcache_mem_addr1[6] ,
    \u_riscv_top.dcache_mem_addr1[5] ,
    \u_riscv_top.dcache_mem_addr1[4] ,
    \u_riscv_top.dcache_mem_addr1[3] ,
    \u_riscv_top.dcache_mem_addr1[2] ,
    \u_riscv_top.dcache_mem_addr1[1] ,
    \u_riscv_top.dcache_mem_addr1[0] }),
    .din0({\u_riscv_top.dcache_mem_din0[31] ,
    \u_riscv_top.dcache_mem_din0[30] ,
    \u_riscv_top.dcache_mem_din0[29] ,
    \u_riscv_top.dcache_mem_din0[28] ,
    \u_riscv_top.dcache_mem_din0[27] ,
    \u_riscv_top.dcache_mem_din0[26] ,
    \u_riscv_top.dcache_mem_din0[25] ,
    \u_riscv_top.dcache_mem_din0[24] ,
    \u_riscv_top.dcache_mem_din0[23] ,
    \u_riscv_top.dcache_mem_din0[22] ,
    \u_riscv_top.dcache_mem_din0[21] ,
    \u_riscv_top.dcache_mem_din0[20] ,
    \u_riscv_top.dcache_mem_din0[19] ,
    \u_riscv_top.dcache_mem_din0[18] ,
    \u_riscv_top.dcache_mem_din0[17] ,
    \u_riscv_top.dcache_mem_din0[16] ,
    \u_riscv_top.dcache_mem_din0[15] ,
    \u_riscv_top.dcache_mem_din0[14] ,
    \u_riscv_top.dcache_mem_din0[13] ,
    \u_riscv_top.dcache_mem_din0[12] ,
    \u_riscv_top.dcache_mem_din0[11] ,
    \u_riscv_top.dcache_mem_din0[10] ,
    \u_riscv_top.dcache_mem_din0[9] ,
    \u_riscv_top.dcache_mem_din0[8] ,
    \u_riscv_top.dcache_mem_din0[7] ,
    \u_riscv_top.dcache_mem_din0[6] ,
    \u_riscv_top.dcache_mem_din0[5] ,
    \u_riscv_top.dcache_mem_din0[4] ,
    \u_riscv_top.dcache_mem_din0[3] ,
    \u_riscv_top.dcache_mem_din0[2] ,
    \u_riscv_top.dcache_mem_din0[1] ,
    \u_riscv_top.dcache_mem_din0[0] }),
    .dout0({\u_riscv_top.dcache_mem_dout0[31] ,
    \u_riscv_top.dcache_mem_dout0[30] ,
    \u_riscv_top.dcache_mem_dout0[29] ,
    \u_riscv_top.dcache_mem_dout0[28] ,
    \u_riscv_top.dcache_mem_dout0[27] ,
    \u_riscv_top.dcache_mem_dout0[26] ,
    \u_riscv_top.dcache_mem_dout0[25] ,
    \u_riscv_top.dcache_mem_dout0[24] ,
    \u_riscv_top.dcache_mem_dout0[23] ,
    \u_riscv_top.dcache_mem_dout0[22] ,
    \u_riscv_top.dcache_mem_dout0[21] ,
    \u_riscv_top.dcache_mem_dout0[20] ,
    \u_riscv_top.dcache_mem_dout0[19] ,
    \u_riscv_top.dcache_mem_dout0[18] ,
    \u_riscv_top.dcache_mem_dout0[17] ,
    \u_riscv_top.dcache_mem_dout0[16] ,
    \u_riscv_top.dcache_mem_dout0[15] ,
    \u_riscv_top.dcache_mem_dout0[14] ,
    \u_riscv_top.dcache_mem_dout0[13] ,
    \u_riscv_top.dcache_mem_dout0[12] ,
    \u_riscv_top.dcache_mem_dout0[11] ,
    \u_riscv_top.dcache_mem_dout0[10] ,
    \u_riscv_top.dcache_mem_dout0[9] ,
    \u_riscv_top.dcache_mem_dout0[8] ,
    \u_riscv_top.dcache_mem_dout0[7] ,
    \u_riscv_top.dcache_mem_dout0[6] ,
    \u_riscv_top.dcache_mem_dout0[5] ,
    \u_riscv_top.dcache_mem_dout0[4] ,
    \u_riscv_top.dcache_mem_dout0[3] ,
    \u_riscv_top.dcache_mem_dout0[2] ,
    \u_riscv_top.dcache_mem_dout0[1] ,
    \u_riscv_top.dcache_mem_dout0[0] }),
    .dout1({\u_riscv_top.dcache_mem_dout1[31] ,
    \u_riscv_top.dcache_mem_dout1[30] ,
    \u_riscv_top.dcache_mem_dout1[29] ,
    \u_riscv_top.dcache_mem_dout1[28] ,
    \u_riscv_top.dcache_mem_dout1[27] ,
    \u_riscv_top.dcache_mem_dout1[26] ,
    \u_riscv_top.dcache_mem_dout1[25] ,
    \u_riscv_top.dcache_mem_dout1[24] ,
    \u_riscv_top.dcache_mem_dout1[23] ,
    \u_riscv_top.dcache_mem_dout1[22] ,
    \u_riscv_top.dcache_mem_dout1[21] ,
    \u_riscv_top.dcache_mem_dout1[20] ,
    \u_riscv_top.dcache_mem_dout1[19] ,
    \u_riscv_top.dcache_mem_dout1[18] ,
    \u_riscv_top.dcache_mem_dout1[17] ,
    \u_riscv_top.dcache_mem_dout1[16] ,
    \u_riscv_top.dcache_mem_dout1[15] ,
    \u_riscv_top.dcache_mem_dout1[14] ,
    \u_riscv_top.dcache_mem_dout1[13] ,
    \u_riscv_top.dcache_mem_dout1[12] ,
    \u_riscv_top.dcache_mem_dout1[11] ,
    \u_riscv_top.dcache_mem_dout1[10] ,
    \u_riscv_top.dcache_mem_dout1[9] ,
    \u_riscv_top.dcache_mem_dout1[8] ,
    \u_riscv_top.dcache_mem_dout1[7] ,
    \u_riscv_top.dcache_mem_dout1[6] ,
    \u_riscv_top.dcache_mem_dout1[5] ,
    \u_riscv_top.dcache_mem_dout1[4] ,
    \u_riscv_top.dcache_mem_dout1[3] ,
    \u_riscv_top.dcache_mem_dout1[2] ,
    \u_riscv_top.dcache_mem_dout1[1] ,
    \u_riscv_top.dcache_mem_dout1[0] }),
    .wmask0({\u_riscv_top.dcache_mem_wmask0[3] ,
    \u_riscv_top.dcache_mem_wmask0[2] ,
    \u_riscv_top.dcache_mem_wmask0[1] ,
    \u_riscv_top.dcache_mem_wmask0[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 u_icache_2kb (.csb0(\u_riscv_top.icache_mem_csb0 ),
    .csb1(\u_riscv_top.icache_mem_csb1 ),
    .web0(\u_riscv_top.icache_mem_web0 ),
    .clk0(\u_riscv_top.icache_mem_clk0 ),
    .clk1(\u_riscv_top.icache_mem_clk1 ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\u_riscv_top.icache_mem_addr0[8] ,
    \u_riscv_top.icache_mem_addr0[7] ,
    \u_riscv_top.icache_mem_addr0[6] ,
    \u_riscv_top.icache_mem_addr0[5] ,
    \u_riscv_top.icache_mem_addr0[4] ,
    \u_riscv_top.icache_mem_addr0[3] ,
    \u_riscv_top.icache_mem_addr0[2] ,
    \u_riscv_top.icache_mem_addr0[1] ,
    \u_riscv_top.icache_mem_addr0[0] }),
    .addr1({\u_riscv_top.icache_mem_addr1[8] ,
    \u_riscv_top.icache_mem_addr1[7] ,
    \u_riscv_top.icache_mem_addr1[6] ,
    \u_riscv_top.icache_mem_addr1[5] ,
    \u_riscv_top.icache_mem_addr1[4] ,
    \u_riscv_top.icache_mem_addr1[3] ,
    \u_riscv_top.icache_mem_addr1[2] ,
    \u_riscv_top.icache_mem_addr1[1] ,
    \u_riscv_top.icache_mem_addr1[0] }),
    .din0({\u_riscv_top.icache_mem_din0[31] ,
    \u_riscv_top.icache_mem_din0[30] ,
    \u_riscv_top.icache_mem_din0[29] ,
    \u_riscv_top.icache_mem_din0[28] ,
    \u_riscv_top.icache_mem_din0[27] ,
    \u_riscv_top.icache_mem_din0[26] ,
    \u_riscv_top.icache_mem_din0[25] ,
    \u_riscv_top.icache_mem_din0[24] ,
    \u_riscv_top.icache_mem_din0[23] ,
    \u_riscv_top.icache_mem_din0[22] ,
    \u_riscv_top.icache_mem_din0[21] ,
    \u_riscv_top.icache_mem_din0[20] ,
    \u_riscv_top.icache_mem_din0[19] ,
    \u_riscv_top.icache_mem_din0[18] ,
    \u_riscv_top.icache_mem_din0[17] ,
    \u_riscv_top.icache_mem_din0[16] ,
    \u_riscv_top.icache_mem_din0[15] ,
    \u_riscv_top.icache_mem_din0[14] ,
    \u_riscv_top.icache_mem_din0[13] ,
    \u_riscv_top.icache_mem_din0[12] ,
    \u_riscv_top.icache_mem_din0[11] ,
    \u_riscv_top.icache_mem_din0[10] ,
    \u_riscv_top.icache_mem_din0[9] ,
    \u_riscv_top.icache_mem_din0[8] ,
    \u_riscv_top.icache_mem_din0[7] ,
    \u_riscv_top.icache_mem_din0[6] ,
    \u_riscv_top.icache_mem_din0[5] ,
    \u_riscv_top.icache_mem_din0[4] ,
    \u_riscv_top.icache_mem_din0[3] ,
    \u_riscv_top.icache_mem_din0[2] ,
    \u_riscv_top.icache_mem_din0[1] ,
    \u_riscv_top.icache_mem_din0[0] }),
    .dout0({_NC1,
    _NC2,
    _NC3,
    _NC4,
    _NC5,
    _NC6,
    _NC7,
    _NC8,
    _NC9,
    _NC10,
    _NC11,
    _NC12,
    _NC13,
    _NC14,
    _NC15,
    _NC16,
    _NC17,
    _NC18,
    _NC19,
    _NC20,
    _NC21,
    _NC22,
    _NC23,
    _NC24,
    _NC25,
    _NC26,
    _NC27,
    _NC28,
    _NC29,
    _NC30,
    _NC31,
    _NC32}),
    .dout1({\u_riscv_top.icache_mem_dout1[31] ,
    \u_riscv_top.icache_mem_dout1[30] ,
    \u_riscv_top.icache_mem_dout1[29] ,
    \u_riscv_top.icache_mem_dout1[28] ,
    \u_riscv_top.icache_mem_dout1[27] ,
    \u_riscv_top.icache_mem_dout1[26] ,
    \u_riscv_top.icache_mem_dout1[25] ,
    \u_riscv_top.icache_mem_dout1[24] ,
    \u_riscv_top.icache_mem_dout1[23] ,
    \u_riscv_top.icache_mem_dout1[22] ,
    \u_riscv_top.icache_mem_dout1[21] ,
    \u_riscv_top.icache_mem_dout1[20] ,
    \u_riscv_top.icache_mem_dout1[19] ,
    \u_riscv_top.icache_mem_dout1[18] ,
    \u_riscv_top.icache_mem_dout1[17] ,
    \u_riscv_top.icache_mem_dout1[16] ,
    \u_riscv_top.icache_mem_dout1[15] ,
    \u_riscv_top.icache_mem_dout1[14] ,
    \u_riscv_top.icache_mem_dout1[13] ,
    \u_riscv_top.icache_mem_dout1[12] ,
    \u_riscv_top.icache_mem_dout1[11] ,
    \u_riscv_top.icache_mem_dout1[10] ,
    \u_riscv_top.icache_mem_dout1[9] ,
    \u_riscv_top.icache_mem_dout1[8] ,
    \u_riscv_top.icache_mem_dout1[7] ,
    \u_riscv_top.icache_mem_dout1[6] ,
    \u_riscv_top.icache_mem_dout1[5] ,
    \u_riscv_top.icache_mem_dout1[4] ,
    \u_riscv_top.icache_mem_dout1[3] ,
    \u_riscv_top.icache_mem_dout1[2] ,
    \u_riscv_top.icache_mem_dout1[1] ,
    \u_riscv_top.icache_mem_dout1[0] }),
    .wmask0({\u_riscv_top.icache_mem_wmask0[3] ,
    \u_riscv_top.icache_mem_wmask0[2] ,
    \u_riscv_top.icache_mem_wmask0[1] ,
    \u_riscv_top.icache_mem_wmask0[0] }));
 wb_interconnect u_intercon (.clk_i(wbd_clk_wi_skew),
    .m0_wbd_ack_o(wbd_int_ack_o),
    .m0_wbd_cyc_i(wbd_int_cyc_i),
    .m0_wbd_err_o(wbd_int_err_o),
    .m0_wbd_stb_i(wbd_int_stb_i),
    .m0_wbd_we_i(wbd_int_we_i),
    .m1_wbd_ack_o(\u_riscv_top.wbd_dmem_ack_i ),
    .m1_wbd_bry_i(\u_riscv_top.wbd_dmem_bry_o ),
    .m1_wbd_cyc_i(\u_riscv_top.wbd_dmem_stb_o ),
    .m1_wbd_err_o(\u_riscv_top.wbd_dmem_err_i ),
    .m1_wbd_lack_o(\u_riscv_top.wbd_dmem_lack_i ),
    .m1_wbd_stb_i(\u_riscv_top.wbd_dmem_stb_o ),
    .m1_wbd_we_i(\u_riscv_top.wbd_dmem_we_o ),
    .m2_wbd_ack_o(\u_riscv_top.wb_dcache_ack_i ),
    .m2_wbd_bry_i(\u_riscv_top.wb_dcache_bry_o ),
    .m2_wbd_cyc_i(\u_riscv_top.wb_dcache_stb_o ),
    .m2_wbd_err_o(\u_riscv_top.wb_dcache_err_i ),
    .m2_wbd_lack_o(\u_riscv_top.wb_dcache_lack_i ),
    .m2_wbd_stb_i(\u_riscv_top.wb_dcache_stb_o ),
    .m2_wbd_we_i(\u_riscv_top.wb_dcache_we_o ),
    .m3_wbd_ack_o(\u_riscv_top.wb_icache_ack_i ),
    .m3_wbd_bry_i(\u_riscv_top.wb_icache_bry_o ),
    .m3_wbd_cyc_i(\u_riscv_top.wb_icache_stb_o ),
    .m3_wbd_err_o(\u_riscv_top.wb_icache_err_i ),
    .m3_wbd_lack_o(\u_riscv_top.wb_icache_lack_i ),
    .m3_wbd_stb_i(\u_riscv_top.wb_icache_stb_o ),
    .m3_wbd_we_i(\u_riscv_top.wb_icache_we_o ),
    .rst_n(\u_riscv_top.pwrup_rst_n ),
    .s0_wbd_ack_i(wbd_spim_ack_i),
    .s0_wbd_bry_o(wbd_spim_bry_o),
    .s0_wbd_cyc_o(wbd_spim_cyc_o),
    .s0_wbd_lack_i(wbd_spim_lack_i),
    .s0_wbd_stb_o(wbd_spim_stb_o),
    .s0_wbd_we_o(wbd_spim_we_o),
    .s1_wbd_ack_i(wbd_uart_ack_i),
    .s1_wbd_cyc_o(wbd_uart_cyc_o),
    .s1_wbd_stb_o(wbd_uart_stb_o),
    .s1_wbd_we_o(wbd_uart_we_o),
    .s2_wbd_ack_i(wbd_glbl_ack_i),
    .s2_wbd_cyc_o(wbd_glbl_cyc_o),
    .s2_wbd_stb_o(wbd_glbl_stb_o),
    .s2_wbd_we_o(wbd_glbl_we_o),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_clk_int(wbd_clk_int),
    .wbd_clk_wi(wbd_clk_wi_skew),
    .cfg_cska_wi({\cfg_clk_ctrl1[3] ,
    \cfg_clk_ctrl1[2] ,
    \cfg_clk_ctrl1[1] ,
    \cfg_clk_ctrl1[0] }),
    .ch_clk_in({wbd_clk_int,
    wbd_clk_int,
    wbd_clk_int,
    wbd_clk_int}),
    .ch_clk_out({wbd_clk_pinmux_rp,
    wbd_clk_uart_rp,
    wbd_clk_qspi_rp,
    \u_riscv_top.wbd_clk_int }),
    .ch_data_in({soft_irq,
    \irq_lines[15] ,
    \irq_lines[14] ,
    \irq_lines[13] ,
    \irq_lines[12] ,
    \irq_lines[11] ,
    \irq_lines[10] ,
    \irq_lines[9] ,
    \irq_lines[8] ,
    \irq_lines[7] ,
    \irq_lines[6] ,
    \irq_lines[5] ,
    \irq_lines[4] ,
    \irq_lines[3] ,
    \irq_lines[2] ,
    \irq_lines[1] ,
    \irq_lines[0] ,
    \cfg_clk_ctrl1[27] ,
    \cfg_clk_ctrl1[26] ,
    \cfg_clk_ctrl1[25] ,
    \cfg_clk_ctrl1[24] ,
    \cfg_clk_ctrl1[23] ,
    \cfg_clk_ctrl1[22] ,
    \cfg_clk_ctrl1[21] ,
    \cfg_clk_ctrl1[20] ,
    \cfg_clk_ctrl1[19] ,
    \cfg_clk_ctrl1[18] ,
    \cfg_clk_ctrl1[17] ,
    \cfg_clk_ctrl1[16] ,
    \cfg_clk_ctrl1[15] ,
    \cfg_clk_ctrl1[14] ,
    \cfg_clk_ctrl1[13] ,
    \cfg_clk_ctrl1[12] ,
    \cfg_clk_ctrl1[11] ,
    \cfg_clk_ctrl1[10] ,
    \cfg_clk_ctrl1[9] ,
    \cfg_clk_ctrl1[8] }),
    .ch_data_out({\u_riscv_top.soft_irq ,
    \u_riscv_top.irq_lines[15] ,
    \u_riscv_top.irq_lines[14] ,
    \u_riscv_top.irq_lines[13] ,
    \u_riscv_top.irq_lines[12] ,
    \u_riscv_top.irq_lines[11] ,
    \u_riscv_top.irq_lines[10] ,
    \u_riscv_top.irq_lines[9] ,
    \u_riscv_top.irq_lines[8] ,
    \u_riscv_top.irq_lines[7] ,
    \u_riscv_top.irq_lines[6] ,
    \u_riscv_top.irq_lines[5] ,
    \u_riscv_top.irq_lines[4] ,
    \u_riscv_top.irq_lines[3] ,
    \u_riscv_top.irq_lines[2] ,
    \u_riscv_top.irq_lines[1] ,
    \u_riscv_top.irq_lines[0] ,
    \cfg_cska_qspi_co_rp[3] ,
    \cfg_cska_qspi_co_rp[2] ,
    \cfg_cska_qspi_co_rp[1] ,
    \cfg_cska_qspi_co_rp[0] ,
    \cfg_cska_pinmux_rp[3] ,
    \cfg_cska_pinmux_rp[2] ,
    \cfg_cska_pinmux_rp[1] ,
    \cfg_cska_pinmux_rp[0] ,
    \cfg_cska_uart_rp[3] ,
    \cfg_cska_uart_rp[2] ,
    \cfg_cska_uart_rp[1] ,
    \cfg_cska_uart_rp[0] ,
    \cfg_cska_qspi_rp[3] ,
    \cfg_cska_qspi_rp[2] ,
    \cfg_cska_qspi_rp[1] ,
    \cfg_cska_qspi_rp[0] ,
    \u_riscv_top.cfg_cska_riscv[3] ,
    \u_riscv_top.cfg_cska_riscv[2] ,
    \u_riscv_top.cfg_cska_riscv[1] ,
    \u_riscv_top.cfg_cska_riscv[0] }),
    .m0_wbd_adr_i({\wbd_int_adr_i[31] ,
    \wbd_int_adr_i[30] ,
    \wbd_int_adr_i[29] ,
    \wbd_int_adr_i[28] ,
    \wbd_int_adr_i[27] ,
    \wbd_int_adr_i[26] ,
    \wbd_int_adr_i[25] ,
    \wbd_int_adr_i[24] ,
    \wbd_int_adr_i[23] ,
    \wbd_int_adr_i[22] ,
    \wbd_int_adr_i[21] ,
    \wbd_int_adr_i[20] ,
    \wbd_int_adr_i[19] ,
    \wbd_int_adr_i[18] ,
    \wbd_int_adr_i[17] ,
    \wbd_int_adr_i[16] ,
    \wbd_int_adr_i[15] ,
    \wbd_int_adr_i[14] ,
    \wbd_int_adr_i[13] ,
    \wbd_int_adr_i[12] ,
    \wbd_int_adr_i[11] ,
    \wbd_int_adr_i[10] ,
    \wbd_int_adr_i[9] ,
    \wbd_int_adr_i[8] ,
    \wbd_int_adr_i[7] ,
    \wbd_int_adr_i[6] ,
    \wbd_int_adr_i[5] ,
    \wbd_int_adr_i[4] ,
    \wbd_int_adr_i[3] ,
    \wbd_int_adr_i[2] ,
    \wbd_int_adr_i[1] ,
    \wbd_int_adr_i[0] }),
    .m0_wbd_dat_i({\wbd_int_dat_i[31] ,
    \wbd_int_dat_i[30] ,
    \wbd_int_dat_i[29] ,
    \wbd_int_dat_i[28] ,
    \wbd_int_dat_i[27] ,
    \wbd_int_dat_i[26] ,
    \wbd_int_dat_i[25] ,
    \wbd_int_dat_i[24] ,
    \wbd_int_dat_i[23] ,
    \wbd_int_dat_i[22] ,
    \wbd_int_dat_i[21] ,
    \wbd_int_dat_i[20] ,
    \wbd_int_dat_i[19] ,
    \wbd_int_dat_i[18] ,
    \wbd_int_dat_i[17] ,
    \wbd_int_dat_i[16] ,
    \wbd_int_dat_i[15] ,
    \wbd_int_dat_i[14] ,
    \wbd_int_dat_i[13] ,
    \wbd_int_dat_i[12] ,
    \wbd_int_dat_i[11] ,
    \wbd_int_dat_i[10] ,
    \wbd_int_dat_i[9] ,
    \wbd_int_dat_i[8] ,
    \wbd_int_dat_i[7] ,
    \wbd_int_dat_i[6] ,
    \wbd_int_dat_i[5] ,
    \wbd_int_dat_i[4] ,
    \wbd_int_dat_i[3] ,
    \wbd_int_dat_i[2] ,
    \wbd_int_dat_i[1] ,
    \wbd_int_dat_i[0] }),
    .m0_wbd_dat_o({\wbd_int_dat_o[31] ,
    \wbd_int_dat_o[30] ,
    \wbd_int_dat_o[29] ,
    \wbd_int_dat_o[28] ,
    \wbd_int_dat_o[27] ,
    \wbd_int_dat_o[26] ,
    \wbd_int_dat_o[25] ,
    \wbd_int_dat_o[24] ,
    \wbd_int_dat_o[23] ,
    \wbd_int_dat_o[22] ,
    \wbd_int_dat_o[21] ,
    \wbd_int_dat_o[20] ,
    \wbd_int_dat_o[19] ,
    \wbd_int_dat_o[18] ,
    \wbd_int_dat_o[17] ,
    \wbd_int_dat_o[16] ,
    \wbd_int_dat_o[15] ,
    \wbd_int_dat_o[14] ,
    \wbd_int_dat_o[13] ,
    \wbd_int_dat_o[12] ,
    \wbd_int_dat_o[11] ,
    \wbd_int_dat_o[10] ,
    \wbd_int_dat_o[9] ,
    \wbd_int_dat_o[8] ,
    \wbd_int_dat_o[7] ,
    \wbd_int_dat_o[6] ,
    \wbd_int_dat_o[5] ,
    \wbd_int_dat_o[4] ,
    \wbd_int_dat_o[3] ,
    \wbd_int_dat_o[2] ,
    \wbd_int_dat_o[1] ,
    \wbd_int_dat_o[0] }),
    .m0_wbd_sel_i({\wbd_int_sel_i[3] ,
    \wbd_int_sel_i[2] ,
    \wbd_int_sel_i[1] ,
    \wbd_int_sel_i[0] }),
    .m1_wbd_adr_i({\u_riscv_top.wbd_dmem_adr_o[31] ,
    \u_riscv_top.wbd_dmem_adr_o[30] ,
    \u_riscv_top.wbd_dmem_adr_o[29] ,
    \u_riscv_top.wbd_dmem_adr_o[28] ,
    \u_riscv_top.wbd_dmem_adr_o[27] ,
    \u_riscv_top.wbd_dmem_adr_o[26] ,
    \u_riscv_top.wbd_dmem_adr_o[25] ,
    \u_riscv_top.wbd_dmem_adr_o[24] ,
    \u_riscv_top.wbd_dmem_adr_o[23] ,
    \u_riscv_top.wbd_dmem_adr_o[22] ,
    \u_riscv_top.wbd_dmem_adr_o[21] ,
    \u_riscv_top.wbd_dmem_adr_o[20] ,
    \u_riscv_top.wbd_dmem_adr_o[19] ,
    \u_riscv_top.wbd_dmem_adr_o[18] ,
    \u_riscv_top.wbd_dmem_adr_o[17] ,
    \u_riscv_top.wbd_dmem_adr_o[16] ,
    \u_riscv_top.wbd_dmem_adr_o[15] ,
    \u_riscv_top.wbd_dmem_adr_o[14] ,
    \u_riscv_top.wbd_dmem_adr_o[13] ,
    \u_riscv_top.wbd_dmem_adr_o[12] ,
    \u_riscv_top.wbd_dmem_adr_o[11] ,
    \u_riscv_top.wbd_dmem_adr_o[10] ,
    \u_riscv_top.wbd_dmem_adr_o[9] ,
    \u_riscv_top.wbd_dmem_adr_o[8] ,
    \u_riscv_top.wbd_dmem_adr_o[7] ,
    \u_riscv_top.wbd_dmem_adr_o[6] ,
    \u_riscv_top.wbd_dmem_adr_o[5] ,
    \u_riscv_top.wbd_dmem_adr_o[4] ,
    \u_riscv_top.wbd_dmem_adr_o[3] ,
    \u_riscv_top.wbd_dmem_adr_o[2] ,
    \u_riscv_top.wbd_dmem_adr_o[1] ,
    \u_riscv_top.wbd_dmem_adr_o[0] }),
    .m1_wbd_bl_i({\u_riscv_top.wbd_dmem_bl_o[2] ,
    \u_riscv_top.wbd_dmem_bl_o[1] ,
    \u_riscv_top.wbd_dmem_bl_o[0] }),
    .m1_wbd_dat_i({\u_riscv_top.wbd_dmem_dat_o[31] ,
    \u_riscv_top.wbd_dmem_dat_o[30] ,
    \u_riscv_top.wbd_dmem_dat_o[29] ,
    \u_riscv_top.wbd_dmem_dat_o[28] ,
    \u_riscv_top.wbd_dmem_dat_o[27] ,
    \u_riscv_top.wbd_dmem_dat_o[26] ,
    \u_riscv_top.wbd_dmem_dat_o[25] ,
    \u_riscv_top.wbd_dmem_dat_o[24] ,
    \u_riscv_top.wbd_dmem_dat_o[23] ,
    \u_riscv_top.wbd_dmem_dat_o[22] ,
    \u_riscv_top.wbd_dmem_dat_o[21] ,
    \u_riscv_top.wbd_dmem_dat_o[20] ,
    \u_riscv_top.wbd_dmem_dat_o[19] ,
    \u_riscv_top.wbd_dmem_dat_o[18] ,
    \u_riscv_top.wbd_dmem_dat_o[17] ,
    \u_riscv_top.wbd_dmem_dat_o[16] ,
    \u_riscv_top.wbd_dmem_dat_o[15] ,
    \u_riscv_top.wbd_dmem_dat_o[14] ,
    \u_riscv_top.wbd_dmem_dat_o[13] ,
    \u_riscv_top.wbd_dmem_dat_o[12] ,
    \u_riscv_top.wbd_dmem_dat_o[11] ,
    \u_riscv_top.wbd_dmem_dat_o[10] ,
    \u_riscv_top.wbd_dmem_dat_o[9] ,
    \u_riscv_top.wbd_dmem_dat_o[8] ,
    \u_riscv_top.wbd_dmem_dat_o[7] ,
    \u_riscv_top.wbd_dmem_dat_o[6] ,
    \u_riscv_top.wbd_dmem_dat_o[5] ,
    \u_riscv_top.wbd_dmem_dat_o[4] ,
    \u_riscv_top.wbd_dmem_dat_o[3] ,
    \u_riscv_top.wbd_dmem_dat_o[2] ,
    \u_riscv_top.wbd_dmem_dat_o[1] ,
    \u_riscv_top.wbd_dmem_dat_o[0] }),
    .m1_wbd_dat_o({\u_riscv_top.wbd_dmem_dat_i[31] ,
    \u_riscv_top.wbd_dmem_dat_i[30] ,
    \u_riscv_top.wbd_dmem_dat_i[29] ,
    \u_riscv_top.wbd_dmem_dat_i[28] ,
    \u_riscv_top.wbd_dmem_dat_i[27] ,
    \u_riscv_top.wbd_dmem_dat_i[26] ,
    \u_riscv_top.wbd_dmem_dat_i[25] ,
    \u_riscv_top.wbd_dmem_dat_i[24] ,
    \u_riscv_top.wbd_dmem_dat_i[23] ,
    \u_riscv_top.wbd_dmem_dat_i[22] ,
    \u_riscv_top.wbd_dmem_dat_i[21] ,
    \u_riscv_top.wbd_dmem_dat_i[20] ,
    \u_riscv_top.wbd_dmem_dat_i[19] ,
    \u_riscv_top.wbd_dmem_dat_i[18] ,
    \u_riscv_top.wbd_dmem_dat_i[17] ,
    \u_riscv_top.wbd_dmem_dat_i[16] ,
    \u_riscv_top.wbd_dmem_dat_i[15] ,
    \u_riscv_top.wbd_dmem_dat_i[14] ,
    \u_riscv_top.wbd_dmem_dat_i[13] ,
    \u_riscv_top.wbd_dmem_dat_i[12] ,
    \u_riscv_top.wbd_dmem_dat_i[11] ,
    \u_riscv_top.wbd_dmem_dat_i[10] ,
    \u_riscv_top.wbd_dmem_dat_i[9] ,
    \u_riscv_top.wbd_dmem_dat_i[8] ,
    \u_riscv_top.wbd_dmem_dat_i[7] ,
    \u_riscv_top.wbd_dmem_dat_i[6] ,
    \u_riscv_top.wbd_dmem_dat_i[5] ,
    \u_riscv_top.wbd_dmem_dat_i[4] ,
    \u_riscv_top.wbd_dmem_dat_i[3] ,
    \u_riscv_top.wbd_dmem_dat_i[2] ,
    \u_riscv_top.wbd_dmem_dat_i[1] ,
    \u_riscv_top.wbd_dmem_dat_i[0] }),
    .m1_wbd_sel_i({\u_riscv_top.wbd_dmem_sel_o[3] ,
    \u_riscv_top.wbd_dmem_sel_o[2] ,
    \u_riscv_top.wbd_dmem_sel_o[1] ,
    \u_riscv_top.wbd_dmem_sel_o[0] }),
    .m2_wbd_adr_i({\u_riscv_top.wb_dcache_adr_o[31] ,
    \u_riscv_top.wb_dcache_adr_o[30] ,
    \u_riscv_top.wb_dcache_adr_o[29] ,
    \u_riscv_top.wb_dcache_adr_o[28] ,
    \u_riscv_top.wb_dcache_adr_o[27] ,
    \u_riscv_top.wb_dcache_adr_o[26] ,
    \u_riscv_top.wb_dcache_adr_o[25] ,
    \u_riscv_top.wb_dcache_adr_o[24] ,
    \u_riscv_top.wb_dcache_adr_o[23] ,
    \u_riscv_top.wb_dcache_adr_o[22] ,
    \u_riscv_top.wb_dcache_adr_o[21] ,
    \u_riscv_top.wb_dcache_adr_o[20] ,
    \u_riscv_top.wb_dcache_adr_o[19] ,
    \u_riscv_top.wb_dcache_adr_o[18] ,
    \u_riscv_top.wb_dcache_adr_o[17] ,
    \u_riscv_top.wb_dcache_adr_o[16] ,
    \u_riscv_top.wb_dcache_adr_o[15] ,
    \u_riscv_top.wb_dcache_adr_o[14] ,
    \u_riscv_top.wb_dcache_adr_o[13] ,
    \u_riscv_top.wb_dcache_adr_o[12] ,
    \u_riscv_top.wb_dcache_adr_o[11] ,
    \u_riscv_top.wb_dcache_adr_o[10] ,
    \u_riscv_top.wb_dcache_adr_o[9] ,
    \u_riscv_top.wb_dcache_adr_o[8] ,
    \u_riscv_top.wb_dcache_adr_o[7] ,
    \u_riscv_top.wb_dcache_adr_o[6] ,
    \u_riscv_top.wb_dcache_adr_o[5] ,
    \u_riscv_top.wb_dcache_adr_o[4] ,
    \u_riscv_top.wb_dcache_adr_o[3] ,
    \u_riscv_top.wb_dcache_adr_o[2] ,
    \u_riscv_top.wb_dcache_adr_o[1] ,
    \u_riscv_top.wb_dcache_adr_o[0] }),
    .m2_wbd_bl_i({\u_riscv_top.wb_dcache_bl_o[9] ,
    \u_riscv_top.wb_dcache_bl_o[8] ,
    \u_riscv_top.wb_dcache_bl_o[7] ,
    \u_riscv_top.wb_dcache_bl_o[6] ,
    \u_riscv_top.wb_dcache_bl_o[5] ,
    \u_riscv_top.wb_dcache_bl_o[4] ,
    \u_riscv_top.wb_dcache_bl_o[3] ,
    \u_riscv_top.wb_dcache_bl_o[2] ,
    \u_riscv_top.wb_dcache_bl_o[1] ,
    \u_riscv_top.wb_dcache_bl_o[0] }),
    .m2_wbd_dat_i({\u_riscv_top.wb_dcache_dat_o[31] ,
    \u_riscv_top.wb_dcache_dat_o[30] ,
    \u_riscv_top.wb_dcache_dat_o[29] ,
    \u_riscv_top.wb_dcache_dat_o[28] ,
    \u_riscv_top.wb_dcache_dat_o[27] ,
    \u_riscv_top.wb_dcache_dat_o[26] ,
    \u_riscv_top.wb_dcache_dat_o[25] ,
    \u_riscv_top.wb_dcache_dat_o[24] ,
    \u_riscv_top.wb_dcache_dat_o[23] ,
    \u_riscv_top.wb_dcache_dat_o[22] ,
    \u_riscv_top.wb_dcache_dat_o[21] ,
    \u_riscv_top.wb_dcache_dat_o[20] ,
    \u_riscv_top.wb_dcache_dat_o[19] ,
    \u_riscv_top.wb_dcache_dat_o[18] ,
    \u_riscv_top.wb_dcache_dat_o[17] ,
    \u_riscv_top.wb_dcache_dat_o[16] ,
    \u_riscv_top.wb_dcache_dat_o[15] ,
    \u_riscv_top.wb_dcache_dat_o[14] ,
    \u_riscv_top.wb_dcache_dat_o[13] ,
    \u_riscv_top.wb_dcache_dat_o[12] ,
    \u_riscv_top.wb_dcache_dat_o[11] ,
    \u_riscv_top.wb_dcache_dat_o[10] ,
    \u_riscv_top.wb_dcache_dat_o[9] ,
    \u_riscv_top.wb_dcache_dat_o[8] ,
    \u_riscv_top.wb_dcache_dat_o[7] ,
    \u_riscv_top.wb_dcache_dat_o[6] ,
    \u_riscv_top.wb_dcache_dat_o[5] ,
    \u_riscv_top.wb_dcache_dat_o[4] ,
    \u_riscv_top.wb_dcache_dat_o[3] ,
    \u_riscv_top.wb_dcache_dat_o[2] ,
    \u_riscv_top.wb_dcache_dat_o[1] ,
    \u_riscv_top.wb_dcache_dat_o[0] }),
    .m2_wbd_dat_o({\u_riscv_top.wb_dcache_dat_i[31] ,
    \u_riscv_top.wb_dcache_dat_i[30] ,
    \u_riscv_top.wb_dcache_dat_i[29] ,
    \u_riscv_top.wb_dcache_dat_i[28] ,
    \u_riscv_top.wb_dcache_dat_i[27] ,
    \u_riscv_top.wb_dcache_dat_i[26] ,
    \u_riscv_top.wb_dcache_dat_i[25] ,
    \u_riscv_top.wb_dcache_dat_i[24] ,
    \u_riscv_top.wb_dcache_dat_i[23] ,
    \u_riscv_top.wb_dcache_dat_i[22] ,
    \u_riscv_top.wb_dcache_dat_i[21] ,
    \u_riscv_top.wb_dcache_dat_i[20] ,
    \u_riscv_top.wb_dcache_dat_i[19] ,
    \u_riscv_top.wb_dcache_dat_i[18] ,
    \u_riscv_top.wb_dcache_dat_i[17] ,
    \u_riscv_top.wb_dcache_dat_i[16] ,
    \u_riscv_top.wb_dcache_dat_i[15] ,
    \u_riscv_top.wb_dcache_dat_i[14] ,
    \u_riscv_top.wb_dcache_dat_i[13] ,
    \u_riscv_top.wb_dcache_dat_i[12] ,
    \u_riscv_top.wb_dcache_dat_i[11] ,
    \u_riscv_top.wb_dcache_dat_i[10] ,
    \u_riscv_top.wb_dcache_dat_i[9] ,
    \u_riscv_top.wb_dcache_dat_i[8] ,
    \u_riscv_top.wb_dcache_dat_i[7] ,
    \u_riscv_top.wb_dcache_dat_i[6] ,
    \u_riscv_top.wb_dcache_dat_i[5] ,
    \u_riscv_top.wb_dcache_dat_i[4] ,
    \u_riscv_top.wb_dcache_dat_i[3] ,
    \u_riscv_top.wb_dcache_dat_i[2] ,
    \u_riscv_top.wb_dcache_dat_i[1] ,
    \u_riscv_top.wb_dcache_dat_i[0] }),
    .m2_wbd_sel_i({\u_riscv_top.wb_dcache_sel_o[3] ,
    \u_riscv_top.wb_dcache_sel_o[2] ,
    \u_riscv_top.wb_dcache_sel_o[1] ,
    \u_riscv_top.wb_dcache_sel_o[0] }),
    .m3_wbd_adr_i({\u_riscv_top.wb_icache_adr_o[31] ,
    \u_riscv_top.wb_icache_adr_o[30] ,
    \u_riscv_top.wb_icache_adr_o[29] ,
    \u_riscv_top.wb_icache_adr_o[28] ,
    \u_riscv_top.wb_icache_adr_o[27] ,
    \u_riscv_top.wb_icache_adr_o[26] ,
    \u_riscv_top.wb_icache_adr_o[25] ,
    \u_riscv_top.wb_icache_adr_o[24] ,
    \u_riscv_top.wb_icache_adr_o[23] ,
    \u_riscv_top.wb_icache_adr_o[22] ,
    \u_riscv_top.wb_icache_adr_o[21] ,
    \u_riscv_top.wb_icache_adr_o[20] ,
    \u_riscv_top.wb_icache_adr_o[19] ,
    \u_riscv_top.wb_icache_adr_o[18] ,
    \u_riscv_top.wb_icache_adr_o[17] ,
    \u_riscv_top.wb_icache_adr_o[16] ,
    \u_riscv_top.wb_icache_adr_o[15] ,
    \u_riscv_top.wb_icache_adr_o[14] ,
    \u_riscv_top.wb_icache_adr_o[13] ,
    \u_riscv_top.wb_icache_adr_o[12] ,
    \u_riscv_top.wb_icache_adr_o[11] ,
    \u_riscv_top.wb_icache_adr_o[10] ,
    \u_riscv_top.wb_icache_adr_o[9] ,
    \u_riscv_top.wb_icache_adr_o[8] ,
    \u_riscv_top.wb_icache_adr_o[7] ,
    \u_riscv_top.wb_icache_adr_o[6] ,
    \u_riscv_top.wb_icache_adr_o[5] ,
    \u_riscv_top.wb_icache_adr_o[4] ,
    \u_riscv_top.wb_icache_adr_o[3] ,
    \u_riscv_top.wb_icache_adr_o[2] ,
    \u_riscv_top.wb_icache_adr_o[1] ,
    \u_riscv_top.wb_icache_adr_o[0] }),
    .m3_wbd_bl_i({\u_riscv_top.wb_icache_bl_o[9] ,
    \u_riscv_top.wb_icache_bl_o[8] ,
    \u_riscv_top.wb_icache_bl_o[7] ,
    \u_riscv_top.wb_icache_bl_o[6] ,
    \u_riscv_top.wb_icache_bl_o[5] ,
    \u_riscv_top.wb_icache_bl_o[4] ,
    \u_riscv_top.wb_icache_bl_o[3] ,
    \u_riscv_top.wb_icache_bl_o[2] ,
    \u_riscv_top.wb_icache_bl_o[1] ,
    \u_riscv_top.wb_icache_bl_o[0] }),
    .m3_wbd_dat_o({\u_riscv_top.wb_icache_dat_i[31] ,
    \u_riscv_top.wb_icache_dat_i[30] ,
    \u_riscv_top.wb_icache_dat_i[29] ,
    \u_riscv_top.wb_icache_dat_i[28] ,
    \u_riscv_top.wb_icache_dat_i[27] ,
    \u_riscv_top.wb_icache_dat_i[26] ,
    \u_riscv_top.wb_icache_dat_i[25] ,
    \u_riscv_top.wb_icache_dat_i[24] ,
    \u_riscv_top.wb_icache_dat_i[23] ,
    \u_riscv_top.wb_icache_dat_i[22] ,
    \u_riscv_top.wb_icache_dat_i[21] ,
    \u_riscv_top.wb_icache_dat_i[20] ,
    \u_riscv_top.wb_icache_dat_i[19] ,
    \u_riscv_top.wb_icache_dat_i[18] ,
    \u_riscv_top.wb_icache_dat_i[17] ,
    \u_riscv_top.wb_icache_dat_i[16] ,
    \u_riscv_top.wb_icache_dat_i[15] ,
    \u_riscv_top.wb_icache_dat_i[14] ,
    \u_riscv_top.wb_icache_dat_i[13] ,
    \u_riscv_top.wb_icache_dat_i[12] ,
    \u_riscv_top.wb_icache_dat_i[11] ,
    \u_riscv_top.wb_icache_dat_i[10] ,
    \u_riscv_top.wb_icache_dat_i[9] ,
    \u_riscv_top.wb_icache_dat_i[8] ,
    \u_riscv_top.wb_icache_dat_i[7] ,
    \u_riscv_top.wb_icache_dat_i[6] ,
    \u_riscv_top.wb_icache_dat_i[5] ,
    \u_riscv_top.wb_icache_dat_i[4] ,
    \u_riscv_top.wb_icache_dat_i[3] ,
    \u_riscv_top.wb_icache_dat_i[2] ,
    \u_riscv_top.wb_icache_dat_i[1] ,
    \u_riscv_top.wb_icache_dat_i[0] }),
    .m3_wbd_sel_i({\u_riscv_top.wb_icache_sel_o[3] ,
    \u_riscv_top.wb_icache_sel_o[2] ,
    \u_riscv_top.wb_icache_sel_o[1] ,
    \u_riscv_top.wb_icache_sel_o[0] }),
    .s0_wbd_adr_o({\wbd_spim_adr_o[31] ,
    \wbd_spim_adr_o[30] ,
    \wbd_spim_adr_o[29] ,
    \wbd_spim_adr_o[28] ,
    \wbd_spim_adr_o[27] ,
    \wbd_spim_adr_o[26] ,
    \wbd_spim_adr_o[25] ,
    \wbd_spim_adr_o[24] ,
    \wbd_spim_adr_o[23] ,
    \wbd_spim_adr_o[22] ,
    \wbd_spim_adr_o[21] ,
    \wbd_spim_adr_o[20] ,
    \wbd_spim_adr_o[19] ,
    \wbd_spim_adr_o[18] ,
    \wbd_spim_adr_o[17] ,
    \wbd_spim_adr_o[16] ,
    \wbd_spim_adr_o[15] ,
    \wbd_spim_adr_o[14] ,
    \wbd_spim_adr_o[13] ,
    \wbd_spim_adr_o[12] ,
    \wbd_spim_adr_o[11] ,
    \wbd_spim_adr_o[10] ,
    \wbd_spim_adr_o[9] ,
    \wbd_spim_adr_o[8] ,
    \wbd_spim_adr_o[7] ,
    \wbd_spim_adr_o[6] ,
    \wbd_spim_adr_o[5] ,
    \wbd_spim_adr_o[4] ,
    \wbd_spim_adr_o[3] ,
    \wbd_spim_adr_o[2] ,
    \wbd_spim_adr_o[1] ,
    \wbd_spim_adr_o[0] }),
    .s0_wbd_bl_o({\wbd_spim_bl_o[9] ,
    \wbd_spim_bl_o[8] ,
    \wbd_spim_bl_o[7] ,
    \wbd_spim_bl_o[6] ,
    \wbd_spim_bl_o[5] ,
    \wbd_spim_bl_o[4] ,
    \wbd_spim_bl_o[3] ,
    \wbd_spim_bl_o[2] ,
    \wbd_spim_bl_o[1] ,
    \wbd_spim_bl_o[0] }),
    .s0_wbd_dat_i({\wbd_spim_dat_i[31] ,
    \wbd_spim_dat_i[30] ,
    \wbd_spim_dat_i[29] ,
    \wbd_spim_dat_i[28] ,
    \wbd_spim_dat_i[27] ,
    \wbd_spim_dat_i[26] ,
    \wbd_spim_dat_i[25] ,
    \wbd_spim_dat_i[24] ,
    \wbd_spim_dat_i[23] ,
    \wbd_spim_dat_i[22] ,
    \wbd_spim_dat_i[21] ,
    \wbd_spim_dat_i[20] ,
    \wbd_spim_dat_i[19] ,
    \wbd_spim_dat_i[18] ,
    \wbd_spim_dat_i[17] ,
    \wbd_spim_dat_i[16] ,
    \wbd_spim_dat_i[15] ,
    \wbd_spim_dat_i[14] ,
    \wbd_spim_dat_i[13] ,
    \wbd_spim_dat_i[12] ,
    \wbd_spim_dat_i[11] ,
    \wbd_spim_dat_i[10] ,
    \wbd_spim_dat_i[9] ,
    \wbd_spim_dat_i[8] ,
    \wbd_spim_dat_i[7] ,
    \wbd_spim_dat_i[6] ,
    \wbd_spim_dat_i[5] ,
    \wbd_spim_dat_i[4] ,
    \wbd_spim_dat_i[3] ,
    \wbd_spim_dat_i[2] ,
    \wbd_spim_dat_i[1] ,
    \wbd_spim_dat_i[0] }),
    .s0_wbd_dat_o({\wbd_spim_dat_o[31] ,
    \wbd_spim_dat_o[30] ,
    \wbd_spim_dat_o[29] ,
    \wbd_spim_dat_o[28] ,
    \wbd_spim_dat_o[27] ,
    \wbd_spim_dat_o[26] ,
    \wbd_spim_dat_o[25] ,
    \wbd_spim_dat_o[24] ,
    \wbd_spim_dat_o[23] ,
    \wbd_spim_dat_o[22] ,
    \wbd_spim_dat_o[21] ,
    \wbd_spim_dat_o[20] ,
    \wbd_spim_dat_o[19] ,
    \wbd_spim_dat_o[18] ,
    \wbd_spim_dat_o[17] ,
    \wbd_spim_dat_o[16] ,
    \wbd_spim_dat_o[15] ,
    \wbd_spim_dat_o[14] ,
    \wbd_spim_dat_o[13] ,
    \wbd_spim_dat_o[12] ,
    \wbd_spim_dat_o[11] ,
    \wbd_spim_dat_o[10] ,
    \wbd_spim_dat_o[9] ,
    \wbd_spim_dat_o[8] ,
    \wbd_spim_dat_o[7] ,
    \wbd_spim_dat_o[6] ,
    \wbd_spim_dat_o[5] ,
    \wbd_spim_dat_o[4] ,
    \wbd_spim_dat_o[3] ,
    \wbd_spim_dat_o[2] ,
    \wbd_spim_dat_o[1] ,
    \wbd_spim_dat_o[0] }),
    .s0_wbd_sel_o({\wbd_spim_sel_o[3] ,
    \wbd_spim_sel_o[2] ,
    \wbd_spim_sel_o[1] ,
    \wbd_spim_sel_o[0] }),
    .s1_wbd_adr_o({\wbd_uart_adr_o[8] ,
    \wbd_uart_adr_o[7] ,
    \wbd_uart_adr_o[6] ,
    \wbd_uart_adr_o[5] ,
    \wbd_uart_adr_o[4] ,
    \wbd_uart_adr_o[3] ,
    \wbd_uart_adr_o[2] ,
    \wbd_uart_adr_o[1] ,
    \wbd_uart_adr_o[0] }),
    .s1_wbd_dat_i({\wbd_uart_dat_i[31] ,
    \wbd_uart_dat_i[30] ,
    \wbd_uart_dat_i[29] ,
    \wbd_uart_dat_i[28] ,
    \wbd_uart_dat_i[27] ,
    \wbd_uart_dat_i[26] ,
    \wbd_uart_dat_i[25] ,
    \wbd_uart_dat_i[24] ,
    \wbd_uart_dat_i[23] ,
    \wbd_uart_dat_i[22] ,
    \wbd_uart_dat_i[21] ,
    \wbd_uart_dat_i[20] ,
    \wbd_uart_dat_i[19] ,
    \wbd_uart_dat_i[18] ,
    \wbd_uart_dat_i[17] ,
    \wbd_uart_dat_i[16] ,
    \wbd_uart_dat_i[15] ,
    \wbd_uart_dat_i[14] ,
    \wbd_uart_dat_i[13] ,
    \wbd_uart_dat_i[12] ,
    \wbd_uart_dat_i[11] ,
    \wbd_uart_dat_i[10] ,
    \wbd_uart_dat_i[9] ,
    \wbd_uart_dat_i[8] ,
    \wbd_uart_dat_i[7] ,
    \wbd_uart_dat_i[6] ,
    \wbd_uart_dat_i[5] ,
    \wbd_uart_dat_i[4] ,
    \wbd_uart_dat_i[3] ,
    \wbd_uart_dat_i[2] ,
    \wbd_uart_dat_i[1] ,
    \wbd_uart_dat_i[0] }),
    .s1_wbd_dat_o({\wbd_uart_dat_o[31] ,
    \wbd_uart_dat_o[30] ,
    \wbd_uart_dat_o[29] ,
    \wbd_uart_dat_o[28] ,
    \wbd_uart_dat_o[27] ,
    \wbd_uart_dat_o[26] ,
    \wbd_uart_dat_o[25] ,
    \wbd_uart_dat_o[24] ,
    \wbd_uart_dat_o[23] ,
    \wbd_uart_dat_o[22] ,
    \wbd_uart_dat_o[21] ,
    \wbd_uart_dat_o[20] ,
    \wbd_uart_dat_o[19] ,
    \wbd_uart_dat_o[18] ,
    \wbd_uart_dat_o[17] ,
    \wbd_uart_dat_o[16] ,
    \wbd_uart_dat_o[15] ,
    \wbd_uart_dat_o[14] ,
    \wbd_uart_dat_o[13] ,
    \wbd_uart_dat_o[12] ,
    \wbd_uart_dat_o[11] ,
    \wbd_uart_dat_o[10] ,
    \wbd_uart_dat_o[9] ,
    \wbd_uart_dat_o[8] ,
    \wbd_uart_dat_o[7] ,
    \wbd_uart_dat_o[6] ,
    \wbd_uart_dat_o[5] ,
    \wbd_uart_dat_o[4] ,
    \wbd_uart_dat_o[3] ,
    \wbd_uart_dat_o[2] ,
    \wbd_uart_dat_o[1] ,
    \wbd_uart_dat_o[0] }),
    .s1_wbd_sel_o({\wbd_uart_sel_o[3] ,
    \wbd_uart_sel_o[2] ,
    \wbd_uart_sel_o[1] ,
    \wbd_uart_sel_o[0] }),
    .s2_wbd_adr_o({\wbd_glbl_adr_o[7] ,
    \wbd_glbl_adr_o[6] ,
    \wbd_glbl_adr_o[5] ,
    \wbd_glbl_adr_o[4] ,
    \wbd_glbl_adr_o[3] ,
    \wbd_glbl_adr_o[2] ,
    \wbd_glbl_adr_o[1] ,
    \wbd_glbl_adr_o[0] }),
    .s2_wbd_dat_i({\wbd_glbl_dat_i[31] ,
    \wbd_glbl_dat_i[30] ,
    \wbd_glbl_dat_i[29] ,
    \wbd_glbl_dat_i[28] ,
    \wbd_glbl_dat_i[27] ,
    \wbd_glbl_dat_i[26] ,
    \wbd_glbl_dat_i[25] ,
    \wbd_glbl_dat_i[24] ,
    \wbd_glbl_dat_i[23] ,
    \wbd_glbl_dat_i[22] ,
    \wbd_glbl_dat_i[21] ,
    \wbd_glbl_dat_i[20] ,
    \wbd_glbl_dat_i[19] ,
    \wbd_glbl_dat_i[18] ,
    \wbd_glbl_dat_i[17] ,
    \wbd_glbl_dat_i[16] ,
    \wbd_glbl_dat_i[15] ,
    \wbd_glbl_dat_i[14] ,
    \wbd_glbl_dat_i[13] ,
    \wbd_glbl_dat_i[12] ,
    \wbd_glbl_dat_i[11] ,
    \wbd_glbl_dat_i[10] ,
    \wbd_glbl_dat_i[9] ,
    \wbd_glbl_dat_i[8] ,
    \wbd_glbl_dat_i[7] ,
    \wbd_glbl_dat_i[6] ,
    \wbd_glbl_dat_i[5] ,
    \wbd_glbl_dat_i[4] ,
    \wbd_glbl_dat_i[3] ,
    \wbd_glbl_dat_i[2] ,
    \wbd_glbl_dat_i[1] ,
    \wbd_glbl_dat_i[0] }),
    .s2_wbd_dat_o({\wbd_glbl_dat_o[31] ,
    \wbd_glbl_dat_o[30] ,
    \wbd_glbl_dat_o[29] ,
    \wbd_glbl_dat_o[28] ,
    \wbd_glbl_dat_o[27] ,
    \wbd_glbl_dat_o[26] ,
    \wbd_glbl_dat_o[25] ,
    \wbd_glbl_dat_o[24] ,
    \wbd_glbl_dat_o[23] ,
    \wbd_glbl_dat_o[22] ,
    \wbd_glbl_dat_o[21] ,
    \wbd_glbl_dat_o[20] ,
    \wbd_glbl_dat_o[19] ,
    \wbd_glbl_dat_o[18] ,
    \wbd_glbl_dat_o[17] ,
    \wbd_glbl_dat_o[16] ,
    \wbd_glbl_dat_o[15] ,
    \wbd_glbl_dat_o[14] ,
    \wbd_glbl_dat_o[13] ,
    \wbd_glbl_dat_o[12] ,
    \wbd_glbl_dat_o[11] ,
    \wbd_glbl_dat_o[10] ,
    \wbd_glbl_dat_o[9] ,
    \wbd_glbl_dat_o[8] ,
    \wbd_glbl_dat_o[7] ,
    \wbd_glbl_dat_o[6] ,
    \wbd_glbl_dat_o[5] ,
    \wbd_glbl_dat_o[4] ,
    \wbd_glbl_dat_o[3] ,
    \wbd_glbl_dat_o[2] ,
    \wbd_glbl_dat_o[1] ,
    \wbd_glbl_dat_o[0] }),
    .s2_wbd_sel_o({\wbd_glbl_sel_o[3] ,
    \wbd_glbl_sel_o[2] ,
    \wbd_glbl_sel_o[1] ,
    \wbd_glbl_sel_o[0] }));
 pinmux u_pinmux (.cpu_intf_rst_n(\u_riscv_top.cpu_intf_rst_n ),
    .dbg_clk_mon(dbg_clk_mon),
    .h_reset_n(\u_riscv_top.pwrup_rst_n ),
    .i2cm_clk_i(i2cm_clk_i),
    .i2cm_clk_o(i2cm_clk_o),
    .i2cm_clk_oen(i2cm_clk_oen),
    .i2cm_data_i(i2cm_data_i),
    .i2cm_data_o(i2cm_data_o),
    .i2cm_data_oen(i2cm_data_oen),
    .i2cm_intr(i2cm_intr_o),
    .i2cm_rst_n(i2c_rst_n),
    .mclk(wbd_clk_pinmux_skew),
    .pulse1m_mclk(pulse1m_mclk),
    .qspim_rst_n(qspim_rst_n),
    .reg_ack(wbd_glbl_ack_i),
    .reg_cs(wbd_glbl_stb_o),
    .reg_wr(wbd_glbl_we_o),
    .sflash_sck(sflash_sck),
    .soft_irq(soft_irq),
    .spim_miso(sspim_so),
    .spim_mosi(sspim_si),
    .spim_sck(sspim_sck),
    .sspim_rst_n(sspim_rst_n),
    .uartm_rxd(uartm_rxd),
    .uartm_txd(uartm_txd),
    .usb_dn_i(usb_dn_i),
    .usb_dn_o(usb_dn_o),
    .usb_dp_i(usb_dp_i),
    .usb_dp_o(usb_dp_o),
    .usb_intr(usb_intr_o),
    .usb_oen(usb_oen),
    .usb_rst_n(usb_rst_n),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_clk_int(wbd_clk_pinmux_rp),
    .wbd_clk_pinmux(wbd_clk_pinmux_skew),
    .cfg_cska_pinmux({\cfg_cska_pinmux_rp[3] ,
    \cfg_cska_pinmux_rp[2] ,
    \cfg_cska_pinmux_rp[1] ,
    \cfg_cska_pinmux_rp[0] }),
    .cfg_riscv_ctrl({\cfg_riscv_ctrl[15] ,
    \cfg_riscv_ctrl[14] ,
    \cfg_riscv_ctrl[13] ,
    \cfg_riscv_ctrl[12] ,
    \cfg_riscv_ctrl[11] ,
    \cfg_riscv_ctrl[10] ,
    \cfg_riscv_ctrl[9] ,
    \cfg_riscv_ctrl[8] ,
    \cfg_riscv_ctrl[7] ,
    \cfg_riscv_ctrl[6] ,
    \cfg_riscv_ctrl[5] ,
    \cfg_riscv_ctrl[4] ,
    \cfg_riscv_ctrl[3] ,
    \cfg_riscv_ctrl[2] ,
    \cfg_riscv_ctrl[1] ,
    \cfg_riscv_ctrl[0] }),
    .cpu_core_rst_n({\cpu_core_rst_n[1] ,
    \cpu_core_rst_n[0] }),
    .digital_io_in({io_in[37],
    io_in[36],
    io_in[35],
    io_in[34],
    io_in[33],
    io_in[32],
    io_in[31],
    io_in[30],
    io_in[29],
    io_in[28],
    io_in[27],
    io_in[26],
    io_in[25],
    io_in[24],
    io_in[23],
    io_in[22],
    io_in[21],
    io_in[20],
    io_in[19],
    io_in[18],
    io_in[17],
    io_in[16],
    io_in[15],
    io_in[14],
    io_in[13],
    io_in[12],
    io_in[11],
    io_in[10],
    io_in[9],
    io_in[8],
    io_in[7],
    io_in[6],
    io_in[5],
    io_in[4],
    io_in[3],
    io_in[2],
    io_in[1],
    io_in[0]}),
    .digital_io_oen({io_oeb[37],
    io_oeb[36],
    io_oeb[35],
    io_oeb[34],
    io_oeb[33],
    io_oeb[32],
    io_oeb[31],
    io_oeb[30],
    io_oeb[29],
    io_oeb[28],
    io_oeb[27],
    io_oeb[26],
    io_oeb[25],
    io_oeb[24],
    io_oeb[23],
    io_oeb[22],
    io_oeb[21],
    io_oeb[20],
    io_oeb[19],
    io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13],
    io_oeb[12],
    io_oeb[11],
    io_oeb[10],
    io_oeb[9],
    io_oeb[8],
    io_oeb[7],
    io_oeb[6],
    io_oeb[5],
    io_oeb[4],
    io_oeb[3],
    io_oeb[2],
    io_oeb[1],
    io_oeb[0]}),
    .digital_io_out({io_out[37],
    io_out[36],
    io_out[35],
    io_out[34],
    io_out[33],
    io_out[32],
    io_out[31],
    io_out[30],
    io_out[29],
    io_out[28],
    io_out[27],
    io_out[26],
    io_out[25],
    io_out[24],
    io_out[23],
    io_out[22],
    io_out[21],
    io_out[20],
    io_out[19],
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13],
    io_out[12],
    io_out[11],
    io_out[10],
    io_out[9],
    io_out[8],
    io_out[7],
    io_out[6],
    io_out[5],
    io_out[4],
    io_out[3],
    io_out[2],
    io_out[1],
    io_out[0]}),
    .irq_lines({\irq_lines[15] ,
    \irq_lines[14] ,
    \irq_lines[13] ,
    \irq_lines[12] ,
    \irq_lines[11] ,
    \irq_lines[10] ,
    \irq_lines[9] ,
    \irq_lines[8] ,
    \irq_lines[7] ,
    \irq_lines[6] ,
    \irq_lines[5] ,
    \irq_lines[4] ,
    \irq_lines[3] ,
    \irq_lines[2] ,
    \irq_lines[1] ,
    \irq_lines[0] }),
    .pinmux_debug({la_data_out[127],
    la_data_out[126],
    la_data_out[125],
    la_data_out[124],
    la_data_out[123],
    la_data_out[122],
    la_data_out[121],
    la_data_out[120],
    la_data_out[119],
    la_data_out[118],
    la_data_out[117],
    la_data_out[116],
    la_data_out[115],
    la_data_out[114],
    la_data_out[113],
    la_data_out[112],
    la_data_out[111],
    la_data_out[110],
    la_data_out[109],
    la_data_out[108],
    la_data_out[107],
    la_data_out[106],
    la_data_out[105],
    la_data_out[104],
    la_data_out[103],
    la_data_out[102],
    la_data_out[101],
    la_data_out[100],
    la_data_out[99],
    la_data_out[98],
    la_data_out[97],
    la_data_out[96]}),
    .reg_addr({\wbd_glbl_adr_o[7] ,
    \wbd_glbl_adr_o[6] ,
    \wbd_glbl_adr_o[5] ,
    \wbd_glbl_adr_o[4] ,
    \wbd_glbl_adr_o[3] ,
    \wbd_glbl_adr_o[2] ,
    \wbd_glbl_adr_o[1] ,
    \wbd_glbl_adr_o[0] }),
    .reg_be({\wbd_glbl_sel_o[3] ,
    \wbd_glbl_sel_o[2] ,
    \wbd_glbl_sel_o[1] ,
    \wbd_glbl_sel_o[0] }),
    .reg_rdata({\wbd_glbl_dat_i[31] ,
    \wbd_glbl_dat_i[30] ,
    \wbd_glbl_dat_i[29] ,
    \wbd_glbl_dat_i[28] ,
    \wbd_glbl_dat_i[27] ,
    \wbd_glbl_dat_i[26] ,
    \wbd_glbl_dat_i[25] ,
    \wbd_glbl_dat_i[24] ,
    \wbd_glbl_dat_i[23] ,
    \wbd_glbl_dat_i[22] ,
    \wbd_glbl_dat_i[21] ,
    \wbd_glbl_dat_i[20] ,
    \wbd_glbl_dat_i[19] ,
    \wbd_glbl_dat_i[18] ,
    \wbd_glbl_dat_i[17] ,
    \wbd_glbl_dat_i[16] ,
    \wbd_glbl_dat_i[15] ,
    \wbd_glbl_dat_i[14] ,
    \wbd_glbl_dat_i[13] ,
    \wbd_glbl_dat_i[12] ,
    \wbd_glbl_dat_i[11] ,
    \wbd_glbl_dat_i[10] ,
    \wbd_glbl_dat_i[9] ,
    \wbd_glbl_dat_i[8] ,
    \wbd_glbl_dat_i[7] ,
    \wbd_glbl_dat_i[6] ,
    \wbd_glbl_dat_i[5] ,
    \wbd_glbl_dat_i[4] ,
    \wbd_glbl_dat_i[3] ,
    \wbd_glbl_dat_i[2] ,
    \wbd_glbl_dat_i[1] ,
    \wbd_glbl_dat_i[0] }),
    .reg_wdata({\wbd_glbl_dat_o[31] ,
    \wbd_glbl_dat_o[30] ,
    \wbd_glbl_dat_o[29] ,
    \wbd_glbl_dat_o[28] ,
    \wbd_glbl_dat_o[27] ,
    \wbd_glbl_dat_o[26] ,
    \wbd_glbl_dat_o[25] ,
    \wbd_glbl_dat_o[24] ,
    \wbd_glbl_dat_o[23] ,
    \wbd_glbl_dat_o[22] ,
    \wbd_glbl_dat_o[21] ,
    \wbd_glbl_dat_o[20] ,
    \wbd_glbl_dat_o[19] ,
    \wbd_glbl_dat_o[18] ,
    \wbd_glbl_dat_o[17] ,
    \wbd_glbl_dat_o[16] ,
    \wbd_glbl_dat_o[15] ,
    \wbd_glbl_dat_o[14] ,
    \wbd_glbl_dat_o[13] ,
    \wbd_glbl_dat_o[12] ,
    \wbd_glbl_dat_o[11] ,
    \wbd_glbl_dat_o[10] ,
    \wbd_glbl_dat_o[9] ,
    \wbd_glbl_dat_o[8] ,
    \wbd_glbl_dat_o[7] ,
    \wbd_glbl_dat_o[6] ,
    \wbd_glbl_dat_o[5] ,
    \wbd_glbl_dat_o[4] ,
    \wbd_glbl_dat_o[3] ,
    \wbd_glbl_dat_o[2] ,
    \wbd_glbl_dat_o[1] ,
    \wbd_glbl_dat_o[0] }),
    .sflash_di({\sflash_di[3] ,
    \sflash_di[2] ,
    \sflash_di[1] ,
    \sflash_di[0] }),
    .sflash_do({\sflash_do[3] ,
    \sflash_do[2] ,
    \sflash_do[1] ,
    \sflash_do[0] }),
    .sflash_oen({\sflash_oen[3] ,
    \sflash_oen[2] ,
    \sflash_oen[1] ,
    \sflash_oen[0] }),
    .sflash_ss({\spi_csn[3] ,
    \spi_csn[2] ,
    \spi_csn[1] ,
    \spi_csn[0] }),
    .spim_ssn({\sspim_ssn[3] ,
    \sspim_ssn[2] ,
    \sspim_ssn[1] ,
    \sspim_ssn[0] }),
    .uart_rst_n({\uart_rst_n[1] ,
    \uart_rst_n[0] }),
    .uart_rxd({\uart_rxd[1] ,
    \uart_rxd[0] }),
    .uart_txd({\uart_txd[1] ,
    \uart_txd[0] }),
    .user_irq({user_irq[2],
    user_irq[1],
    user_irq[0]}));
 digital_pll u_pll (.VGND(vssd1),
    .VPWR(vccd1),
    .dco(cfg_dco_mode),
    .enable(cfg_pll_enb),
    .osc(pll_ref_clk),
    .resetb(wbd_pll_rst_n),
    .clockp({\pll_clk_out[1] ,
    \pll_clk_out[0] }),
    .div({\cfg_pll_fed_div[4] ,
    \cfg_pll_fed_div[3] ,
    \cfg_pll_fed_div[2] ,
    \cfg_pll_fed_div[1] ,
    \cfg_pll_fed_div[0] }),
    .ext_trim({\cfg_dc_trim[25] ,
    \cfg_dc_trim[24] ,
    \cfg_dc_trim[23] ,
    \cfg_dc_trim[22] ,
    \cfg_dc_trim[21] ,
    \cfg_dc_trim[20] ,
    \cfg_dc_trim[19] ,
    \cfg_dc_trim[18] ,
    \cfg_dc_trim[17] ,
    \cfg_dc_trim[16] ,
    \cfg_dc_trim[15] ,
    \cfg_dc_trim[14] ,
    \cfg_dc_trim[13] ,
    \cfg_dc_trim[12] ,
    \cfg_dc_trim[11] ,
    \cfg_dc_trim[10] ,
    \cfg_dc_trim[9] ,
    \cfg_dc_trim[8] ,
    \cfg_dc_trim[7] ,
    \cfg_dc_trim[6] ,
    \cfg_dc_trim[5] ,
    \cfg_dc_trim[4] ,
    \cfg_dc_trim[3] ,
    \cfg_dc_trim[2] ,
    \cfg_dc_trim[1] ,
    \cfg_dc_trim[0] }));
 qspim_top u_qspi_master (.mclk(wbd_clk_spi),
    .rst_n(qspim_rst_n),
    .spi_clk(sflash_sck),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_ack_o(wbd_spim_ack_i),
    .wbd_bry_i(wbd_spim_bry_o),
    .wbd_clk_int(wbd_clk_qspi_rp),
    .wbd_clk_spi(wbd_clk_spi),
    .wbd_err_o(wbd_spim_err_i),
    .wbd_lack_o(wbd_spim_lack_i),
    .wbd_stb_i(wbd_spim_stb_o),
    .wbd_we_i(wbd_spim_we_o),
    .cfg_cska_sp_co({\cfg_cska_qspi_co_rp[3] ,
    \cfg_cska_qspi_co_rp[2] ,
    \cfg_cska_qspi_co_rp[1] ,
    \cfg_cska_qspi_co_rp[0] }),
    .cfg_cska_spi({\cfg_cska_qspi_rp[3] ,
    \cfg_cska_qspi_rp[2] ,
    \cfg_cska_qspi_rp[1] ,
    \cfg_cska_qspi_rp[0] }),
    .spi_csn({\spi_csn[3] ,
    \spi_csn[2] ,
    \spi_csn[1] ,
    \spi_csn[0] }),
    .spi_debug({la_data_out[95],
    la_data_out[94],
    la_data_out[93],
    la_data_out[92],
    la_data_out[91],
    la_data_out[90],
    la_data_out[89],
    la_data_out[88],
    la_data_out[87],
    la_data_out[86],
    la_data_out[85],
    la_data_out[84],
    la_data_out[83],
    la_data_out[82],
    la_data_out[81],
    la_data_out[80],
    la_data_out[79],
    la_data_out[78],
    la_data_out[77],
    la_data_out[76],
    la_data_out[75],
    la_data_out[74],
    la_data_out[73],
    la_data_out[72],
    la_data_out[71],
    la_data_out[70],
    la_data_out[69],
    la_data_out[68],
    la_data_out[67],
    la_data_out[66],
    la_data_out[65],
    la_data_out[64]}),
    .spi_oen({\sflash_oen[3] ,
    \sflash_oen[2] ,
    \sflash_oen[1] ,
    \sflash_oen[0] }),
    .spi_sdi({\sflash_di[3] ,
    \sflash_di[2] ,
    \sflash_di[1] ,
    \sflash_di[0] }),
    .spi_sdo({\sflash_do[3] ,
    \sflash_do[2] ,
    \sflash_do[1] ,
    \sflash_do[0] }),
    .wbd_adr_i({\wbd_spim_adr_o[31] ,
    \wbd_spim_adr_o[30] ,
    \wbd_spim_adr_o[29] ,
    \wbd_spim_adr_o[28] ,
    \wbd_spim_adr_o[27] ,
    \wbd_spim_adr_o[26] ,
    \wbd_spim_adr_o[25] ,
    \wbd_spim_adr_o[24] ,
    \wbd_spim_adr_o[23] ,
    \wbd_spim_adr_o[22] ,
    \wbd_spim_adr_o[21] ,
    \wbd_spim_adr_o[20] ,
    \wbd_spim_adr_o[19] ,
    \wbd_spim_adr_o[18] ,
    \wbd_spim_adr_o[17] ,
    \wbd_spim_adr_o[16] ,
    \wbd_spim_adr_o[15] ,
    \wbd_spim_adr_o[14] ,
    \wbd_spim_adr_o[13] ,
    \wbd_spim_adr_o[12] ,
    \wbd_spim_adr_o[11] ,
    \wbd_spim_adr_o[10] ,
    \wbd_spim_adr_o[9] ,
    \wbd_spim_adr_o[8] ,
    \wbd_spim_adr_o[7] ,
    \wbd_spim_adr_o[6] ,
    \wbd_spim_adr_o[5] ,
    \wbd_spim_adr_o[4] ,
    \wbd_spim_adr_o[3] ,
    \wbd_spim_adr_o[2] ,
    \wbd_spim_adr_o[1] ,
    \wbd_spim_adr_o[0] }),
    .wbd_bl_i({\wbd_spim_bl_o[9] ,
    \wbd_spim_bl_o[8] ,
    \wbd_spim_bl_o[7] ,
    \wbd_spim_bl_o[6] ,
    \wbd_spim_bl_o[5] ,
    \wbd_spim_bl_o[4] ,
    \wbd_spim_bl_o[3] ,
    \wbd_spim_bl_o[2] ,
    \wbd_spim_bl_o[1] ,
    \wbd_spim_bl_o[0] }),
    .wbd_dat_i({\wbd_spim_dat_o[31] ,
    \wbd_spim_dat_o[30] ,
    \wbd_spim_dat_o[29] ,
    \wbd_spim_dat_o[28] ,
    \wbd_spim_dat_o[27] ,
    \wbd_spim_dat_o[26] ,
    \wbd_spim_dat_o[25] ,
    \wbd_spim_dat_o[24] ,
    \wbd_spim_dat_o[23] ,
    \wbd_spim_dat_o[22] ,
    \wbd_spim_dat_o[21] ,
    \wbd_spim_dat_o[20] ,
    \wbd_spim_dat_o[19] ,
    \wbd_spim_dat_o[18] ,
    \wbd_spim_dat_o[17] ,
    \wbd_spim_dat_o[16] ,
    \wbd_spim_dat_o[15] ,
    \wbd_spim_dat_o[14] ,
    \wbd_spim_dat_o[13] ,
    \wbd_spim_dat_o[12] ,
    \wbd_spim_dat_o[11] ,
    \wbd_spim_dat_o[10] ,
    \wbd_spim_dat_o[9] ,
    \wbd_spim_dat_o[8] ,
    \wbd_spim_dat_o[7] ,
    \wbd_spim_dat_o[6] ,
    \wbd_spim_dat_o[5] ,
    \wbd_spim_dat_o[4] ,
    \wbd_spim_dat_o[3] ,
    \wbd_spim_dat_o[2] ,
    \wbd_spim_dat_o[1] ,
    \wbd_spim_dat_o[0] }),
    .wbd_dat_o({\wbd_spim_dat_i[31] ,
    \wbd_spim_dat_i[30] ,
    \wbd_spim_dat_i[29] ,
    \wbd_spim_dat_i[28] ,
    \wbd_spim_dat_i[27] ,
    \wbd_spim_dat_i[26] ,
    \wbd_spim_dat_i[25] ,
    \wbd_spim_dat_i[24] ,
    \wbd_spim_dat_i[23] ,
    \wbd_spim_dat_i[22] ,
    \wbd_spim_dat_i[21] ,
    \wbd_spim_dat_i[20] ,
    \wbd_spim_dat_i[19] ,
    \wbd_spim_dat_i[18] ,
    \wbd_spim_dat_i[17] ,
    \wbd_spim_dat_i[16] ,
    \wbd_spim_dat_i[15] ,
    \wbd_spim_dat_i[14] ,
    \wbd_spim_dat_i[13] ,
    \wbd_spim_dat_i[12] ,
    \wbd_spim_dat_i[11] ,
    \wbd_spim_dat_i[10] ,
    \wbd_spim_dat_i[9] ,
    \wbd_spim_dat_i[8] ,
    \wbd_spim_dat_i[7] ,
    \wbd_spim_dat_i[6] ,
    \wbd_spim_dat_i[5] ,
    \wbd_spim_dat_i[4] ,
    \wbd_spim_dat_i[3] ,
    \wbd_spim_dat_i[2] ,
    \wbd_spim_dat_i[1] ,
    \wbd_spim_dat_i[0] }),
    .wbd_sel_i({\wbd_spim_sel_o[3] ,
    \wbd_spim_sel_o[2] ,
    \wbd_spim_sel_o[1] ,
    \wbd_spim_sel_o[0] }));
 ycr_core_top \u_riscv_top.i_core_top_0  (.clk(\u_riscv_top.core_clk ),
    .clk_o(\u_riscv_top.core_clk_out ),
    .core2dmem_cmd_o(\u_riscv_top.core0_dmem_cmd ),
    .core2dmem_req_o(\u_riscv_top.core0_dmem_req ),
    .core2imem_cmd_o(\u_riscv_top.core0_imem_cmd ),
    .core2imem_req_o(\u_riscv_top.core0_imem_req ),
    .core_irq_mtimer_i(\u_riscv_top.core0_timer_irq ),
    .core_irq_soft_i(\u_riscv_top.core0_soft_irq ),
    .cpu_rst_n(\cpu_core_rst_n[0] ),
    .dmem2core_req_ack_i(\u_riscv_top.core0_dmem_req_ack ),
    .imem2core_req_ack_i(\u_riscv_top.core0_imem_req_ack ),
    .pwrup_rst_n(\u_riscv_top.pwrup_rst_n ),
    .rst_n(\u_riscv_top.pwrup_rst_n ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .core2dmem_addr_o({\u_riscv_top.core0_dmem_addr[31] ,
    \u_riscv_top.core0_dmem_addr[30] ,
    \u_riscv_top.core0_dmem_addr[29] ,
    \u_riscv_top.core0_dmem_addr[28] ,
    \u_riscv_top.core0_dmem_addr[27] ,
    \u_riscv_top.core0_dmem_addr[26] ,
    \u_riscv_top.core0_dmem_addr[25] ,
    \u_riscv_top.core0_dmem_addr[24] ,
    \u_riscv_top.core0_dmem_addr[23] ,
    \u_riscv_top.core0_dmem_addr[22] ,
    \u_riscv_top.core0_dmem_addr[21] ,
    \u_riscv_top.core0_dmem_addr[20] ,
    \u_riscv_top.core0_dmem_addr[19] ,
    \u_riscv_top.core0_dmem_addr[18] ,
    \u_riscv_top.core0_dmem_addr[17] ,
    \u_riscv_top.core0_dmem_addr[16] ,
    \u_riscv_top.core0_dmem_addr[15] ,
    \u_riscv_top.core0_dmem_addr[14] ,
    \u_riscv_top.core0_dmem_addr[13] ,
    \u_riscv_top.core0_dmem_addr[12] ,
    \u_riscv_top.core0_dmem_addr[11] ,
    \u_riscv_top.core0_dmem_addr[10] ,
    \u_riscv_top.core0_dmem_addr[9] ,
    \u_riscv_top.core0_dmem_addr[8] ,
    \u_riscv_top.core0_dmem_addr[7] ,
    \u_riscv_top.core0_dmem_addr[6] ,
    \u_riscv_top.core0_dmem_addr[5] ,
    \u_riscv_top.core0_dmem_addr[4] ,
    \u_riscv_top.core0_dmem_addr[3] ,
    \u_riscv_top.core0_dmem_addr[2] ,
    \u_riscv_top.core0_dmem_addr[1] ,
    \u_riscv_top.core0_dmem_addr[0] }),
    .core2dmem_wdata_o({\u_riscv_top.core0_dmem_wdata[31] ,
    \u_riscv_top.core0_dmem_wdata[30] ,
    \u_riscv_top.core0_dmem_wdata[29] ,
    \u_riscv_top.core0_dmem_wdata[28] ,
    \u_riscv_top.core0_dmem_wdata[27] ,
    \u_riscv_top.core0_dmem_wdata[26] ,
    \u_riscv_top.core0_dmem_wdata[25] ,
    \u_riscv_top.core0_dmem_wdata[24] ,
    \u_riscv_top.core0_dmem_wdata[23] ,
    \u_riscv_top.core0_dmem_wdata[22] ,
    \u_riscv_top.core0_dmem_wdata[21] ,
    \u_riscv_top.core0_dmem_wdata[20] ,
    \u_riscv_top.core0_dmem_wdata[19] ,
    \u_riscv_top.core0_dmem_wdata[18] ,
    \u_riscv_top.core0_dmem_wdata[17] ,
    \u_riscv_top.core0_dmem_wdata[16] ,
    \u_riscv_top.core0_dmem_wdata[15] ,
    \u_riscv_top.core0_dmem_wdata[14] ,
    \u_riscv_top.core0_dmem_wdata[13] ,
    \u_riscv_top.core0_dmem_wdata[12] ,
    \u_riscv_top.core0_dmem_wdata[11] ,
    \u_riscv_top.core0_dmem_wdata[10] ,
    \u_riscv_top.core0_dmem_wdata[9] ,
    \u_riscv_top.core0_dmem_wdata[8] ,
    \u_riscv_top.core0_dmem_wdata[7] ,
    \u_riscv_top.core0_dmem_wdata[6] ,
    \u_riscv_top.core0_dmem_wdata[5] ,
    \u_riscv_top.core0_dmem_wdata[4] ,
    \u_riscv_top.core0_dmem_wdata[3] ,
    \u_riscv_top.core0_dmem_wdata[2] ,
    \u_riscv_top.core0_dmem_wdata[1] ,
    \u_riscv_top.core0_dmem_wdata[0] }),
    .core2dmem_width_o({\u_riscv_top.core0_dmem_width[1] ,
    \u_riscv_top.core0_dmem_width[0] }),
    .core2imem_addr_o({\u_riscv_top.core0_imem_addr[31] ,
    \u_riscv_top.core0_imem_addr[30] ,
    \u_riscv_top.core0_imem_addr[29] ,
    \u_riscv_top.core0_imem_addr[28] ,
    \u_riscv_top.core0_imem_addr[27] ,
    \u_riscv_top.core0_imem_addr[26] ,
    \u_riscv_top.core0_imem_addr[25] ,
    \u_riscv_top.core0_imem_addr[24] ,
    \u_riscv_top.core0_imem_addr[23] ,
    \u_riscv_top.core0_imem_addr[22] ,
    \u_riscv_top.core0_imem_addr[21] ,
    \u_riscv_top.core0_imem_addr[20] ,
    \u_riscv_top.core0_imem_addr[19] ,
    \u_riscv_top.core0_imem_addr[18] ,
    \u_riscv_top.core0_imem_addr[17] ,
    \u_riscv_top.core0_imem_addr[16] ,
    \u_riscv_top.core0_imem_addr[15] ,
    \u_riscv_top.core0_imem_addr[14] ,
    \u_riscv_top.core0_imem_addr[13] ,
    \u_riscv_top.core0_imem_addr[12] ,
    \u_riscv_top.core0_imem_addr[11] ,
    \u_riscv_top.core0_imem_addr[10] ,
    \u_riscv_top.core0_imem_addr[9] ,
    \u_riscv_top.core0_imem_addr[8] ,
    \u_riscv_top.core0_imem_addr[7] ,
    \u_riscv_top.core0_imem_addr[6] ,
    \u_riscv_top.core0_imem_addr[5] ,
    \u_riscv_top.core0_imem_addr[4] ,
    \u_riscv_top.core0_imem_addr[3] ,
    \u_riscv_top.core0_imem_addr[2] ,
    \u_riscv_top.core0_imem_addr[1] ,
    \u_riscv_top.core0_imem_addr[0] }),
    .core2imem_bl_o({\u_riscv_top.core0_imem_bl[2] ,
    \u_riscv_top.core0_imem_bl[1] ,
    \u_riscv_top.core0_imem_bl[0] }),
    .core_debug({\u_riscv_top.core0_debug[48] ,
    \u_riscv_top.core0_debug[47] ,
    \u_riscv_top.core0_debug[46] ,
    \u_riscv_top.core0_debug[45] ,
    \u_riscv_top.core0_debug[44] ,
    \u_riscv_top.core0_debug[43] ,
    \u_riscv_top.core0_debug[42] ,
    \u_riscv_top.core0_debug[41] ,
    \u_riscv_top.core0_debug[40] ,
    \u_riscv_top.core0_debug[39] ,
    \u_riscv_top.core0_debug[38] ,
    \u_riscv_top.core0_debug[37] ,
    \u_riscv_top.core0_debug[36] ,
    \u_riscv_top.core0_debug[35] ,
    \u_riscv_top.core0_debug[34] ,
    \u_riscv_top.core0_debug[33] ,
    \u_riscv_top.core0_debug[32] ,
    \u_riscv_top.core0_debug[31] ,
    \u_riscv_top.core0_debug[30] ,
    \u_riscv_top.core0_debug[29] ,
    \u_riscv_top.core0_debug[28] ,
    \u_riscv_top.core0_debug[27] ,
    \u_riscv_top.core0_debug[26] ,
    \u_riscv_top.core0_debug[25] ,
    \u_riscv_top.core0_debug[24] ,
    \u_riscv_top.core0_debug[23] ,
    \u_riscv_top.core0_debug[22] ,
    \u_riscv_top.core0_debug[21] ,
    \u_riscv_top.core0_debug[20] ,
    \u_riscv_top.core0_debug[19] ,
    \u_riscv_top.core0_debug[18] ,
    \u_riscv_top.core0_debug[17] ,
    \u_riscv_top.core0_debug[16] ,
    \u_riscv_top.core0_debug[15] ,
    \u_riscv_top.core0_debug[14] ,
    \u_riscv_top.core0_debug[13] ,
    \u_riscv_top.core0_debug[12] ,
    \u_riscv_top.core0_debug[11] ,
    \u_riscv_top.core0_debug[10] ,
    \u_riscv_top.core0_debug[9] ,
    \u_riscv_top.core0_debug[8] ,
    \u_riscv_top.core0_debug[7] ,
    \u_riscv_top.core0_debug[6] ,
    \u_riscv_top.core0_debug[5] ,
    \u_riscv_top.core0_debug[4] ,
    \u_riscv_top.core0_debug[3] ,
    \u_riscv_top.core0_debug[2] ,
    \u_riscv_top.core0_debug[1] ,
    \u_riscv_top.core0_debug[0] }),
    .core_irq_lines_i({\u_riscv_top.core0_irq_lines[15] ,
    \u_riscv_top.core0_irq_lines[14] ,
    \u_riscv_top.core0_irq_lines[13] ,
    \u_riscv_top.core0_irq_lines[12] ,
    \u_riscv_top.core0_irq_lines[11] ,
    \u_riscv_top.core0_irq_lines[10] ,
    \u_riscv_top.core0_irq_lines[9] ,
    \u_riscv_top.core0_irq_lines[8] ,
    \u_riscv_top.core0_irq_lines[7] ,
    \u_riscv_top.core0_irq_lines[6] ,
    \u_riscv_top.core0_irq_lines[5] ,
    \u_riscv_top.core0_irq_lines[4] ,
    \u_riscv_top.core0_irq_lines[3] ,
    \u_riscv_top.core0_irq_lines[2] ,
    \u_riscv_top.core0_irq_lines[1] ,
    \u_riscv_top.core0_irq_lines[0] }),
    .core_mtimer_val_i({\u_riscv_top.core0_timer_val[63] ,
    \u_riscv_top.core0_timer_val[62] ,
    \u_riscv_top.core0_timer_val[61] ,
    \u_riscv_top.core0_timer_val[60] ,
    \u_riscv_top.core0_timer_val[59] ,
    \u_riscv_top.core0_timer_val[58] ,
    \u_riscv_top.core0_timer_val[57] ,
    \u_riscv_top.core0_timer_val[56] ,
    \u_riscv_top.core0_timer_val[55] ,
    \u_riscv_top.core0_timer_val[54] ,
    \u_riscv_top.core0_timer_val[53] ,
    \u_riscv_top.core0_timer_val[52] ,
    \u_riscv_top.core0_timer_val[51] ,
    \u_riscv_top.core0_timer_val[50] ,
    \u_riscv_top.core0_timer_val[49] ,
    \u_riscv_top.core0_timer_val[48] ,
    \u_riscv_top.core0_timer_val[47] ,
    \u_riscv_top.core0_timer_val[46] ,
    \u_riscv_top.core0_timer_val[45] ,
    \u_riscv_top.core0_timer_val[44] ,
    \u_riscv_top.core0_timer_val[43] ,
    \u_riscv_top.core0_timer_val[42] ,
    \u_riscv_top.core0_timer_val[41] ,
    \u_riscv_top.core0_timer_val[40] ,
    \u_riscv_top.core0_timer_val[39] ,
    \u_riscv_top.core0_timer_val[38] ,
    \u_riscv_top.core0_timer_val[37] ,
    \u_riscv_top.core0_timer_val[36] ,
    \u_riscv_top.core0_timer_val[35] ,
    \u_riscv_top.core0_timer_val[34] ,
    \u_riscv_top.core0_timer_val[33] ,
    \u_riscv_top.core0_timer_val[32] ,
    \u_riscv_top.core0_timer_val[31] ,
    \u_riscv_top.core0_timer_val[30] ,
    \u_riscv_top.core0_timer_val[29] ,
    \u_riscv_top.core0_timer_val[28] ,
    \u_riscv_top.core0_timer_val[27] ,
    \u_riscv_top.core0_timer_val[26] ,
    \u_riscv_top.core0_timer_val[25] ,
    \u_riscv_top.core0_timer_val[24] ,
    \u_riscv_top.core0_timer_val[23] ,
    \u_riscv_top.core0_timer_val[22] ,
    \u_riscv_top.core0_timer_val[21] ,
    \u_riscv_top.core0_timer_val[20] ,
    \u_riscv_top.core0_timer_val[19] ,
    \u_riscv_top.core0_timer_val[18] ,
    \u_riscv_top.core0_timer_val[17] ,
    \u_riscv_top.core0_timer_val[16] ,
    \u_riscv_top.core0_timer_val[15] ,
    \u_riscv_top.core0_timer_val[14] ,
    \u_riscv_top.core0_timer_val[13] ,
    \u_riscv_top.core0_timer_val[12] ,
    \u_riscv_top.core0_timer_val[11] ,
    \u_riscv_top.core0_timer_val[10] ,
    \u_riscv_top.core0_timer_val[9] ,
    \u_riscv_top.core0_timer_val[8] ,
    \u_riscv_top.core0_timer_val[7] ,
    \u_riscv_top.core0_timer_val[6] ,
    \u_riscv_top.core0_timer_val[5] ,
    \u_riscv_top.core0_timer_val[4] ,
    \u_riscv_top.core0_timer_val[3] ,
    \u_riscv_top.core0_timer_val[2] ,
    \u_riscv_top.core0_timer_val[1] ,
    \u_riscv_top.core0_timer_val[0] }),
    .core_uid({\u_riscv_top.core0_uid[1] ,
    \u_riscv_top.core0_uid[0] }),
    .dmem2core_rdata_i({\u_riscv_top.core0_dmem_rdata[31] ,
    \u_riscv_top.core0_dmem_rdata[30] ,
    \u_riscv_top.core0_dmem_rdata[29] ,
    \u_riscv_top.core0_dmem_rdata[28] ,
    \u_riscv_top.core0_dmem_rdata[27] ,
    \u_riscv_top.core0_dmem_rdata[26] ,
    \u_riscv_top.core0_dmem_rdata[25] ,
    \u_riscv_top.core0_dmem_rdata[24] ,
    \u_riscv_top.core0_dmem_rdata[23] ,
    \u_riscv_top.core0_dmem_rdata[22] ,
    \u_riscv_top.core0_dmem_rdata[21] ,
    \u_riscv_top.core0_dmem_rdata[20] ,
    \u_riscv_top.core0_dmem_rdata[19] ,
    \u_riscv_top.core0_dmem_rdata[18] ,
    \u_riscv_top.core0_dmem_rdata[17] ,
    \u_riscv_top.core0_dmem_rdata[16] ,
    \u_riscv_top.core0_dmem_rdata[15] ,
    \u_riscv_top.core0_dmem_rdata[14] ,
    \u_riscv_top.core0_dmem_rdata[13] ,
    \u_riscv_top.core0_dmem_rdata[12] ,
    \u_riscv_top.core0_dmem_rdata[11] ,
    \u_riscv_top.core0_dmem_rdata[10] ,
    \u_riscv_top.core0_dmem_rdata[9] ,
    \u_riscv_top.core0_dmem_rdata[8] ,
    \u_riscv_top.core0_dmem_rdata[7] ,
    \u_riscv_top.core0_dmem_rdata[6] ,
    \u_riscv_top.core0_dmem_rdata[5] ,
    \u_riscv_top.core0_dmem_rdata[4] ,
    \u_riscv_top.core0_dmem_rdata[3] ,
    \u_riscv_top.core0_dmem_rdata[2] ,
    \u_riscv_top.core0_dmem_rdata[1] ,
    \u_riscv_top.core0_dmem_rdata[0] }),
    .dmem2core_resp_i({\u_riscv_top.core0_dmem_resp[1] ,
    \u_riscv_top.core0_dmem_resp[0] }),
    .imem2core_rdata_i({\u_riscv_top.core0_imem_rdata[31] ,
    \u_riscv_top.core0_imem_rdata[30] ,
    \u_riscv_top.core0_imem_rdata[29] ,
    \u_riscv_top.core0_imem_rdata[28] ,
    \u_riscv_top.core0_imem_rdata[27] ,
    \u_riscv_top.core0_imem_rdata[26] ,
    \u_riscv_top.core0_imem_rdata[25] ,
    \u_riscv_top.core0_imem_rdata[24] ,
    \u_riscv_top.core0_imem_rdata[23] ,
    \u_riscv_top.core0_imem_rdata[22] ,
    \u_riscv_top.core0_imem_rdata[21] ,
    \u_riscv_top.core0_imem_rdata[20] ,
    \u_riscv_top.core0_imem_rdata[19] ,
    \u_riscv_top.core0_imem_rdata[18] ,
    \u_riscv_top.core0_imem_rdata[17] ,
    \u_riscv_top.core0_imem_rdata[16] ,
    \u_riscv_top.core0_imem_rdata[15] ,
    \u_riscv_top.core0_imem_rdata[14] ,
    \u_riscv_top.core0_imem_rdata[13] ,
    \u_riscv_top.core0_imem_rdata[12] ,
    \u_riscv_top.core0_imem_rdata[11] ,
    \u_riscv_top.core0_imem_rdata[10] ,
    \u_riscv_top.core0_imem_rdata[9] ,
    \u_riscv_top.core0_imem_rdata[8] ,
    \u_riscv_top.core0_imem_rdata[7] ,
    \u_riscv_top.core0_imem_rdata[6] ,
    \u_riscv_top.core0_imem_rdata[5] ,
    \u_riscv_top.core0_imem_rdata[4] ,
    \u_riscv_top.core0_imem_rdata[3] ,
    \u_riscv_top.core0_imem_rdata[2] ,
    \u_riscv_top.core0_imem_rdata[1] ,
    \u_riscv_top.core0_imem_rdata[0] }),
    .imem2core_resp_i({\u_riscv_top.core0_imem_resp[1] ,
    \u_riscv_top.core0_imem_resp[0] }));
 ycr_iconnect \u_riscv_top.u_connect  (.VGND(vssd1),
    .VPWR(vccd1),
    .cfg_bypass_dcache(\cfg_riscv_ctrl[11] ),
    .cfg_bypass_icache(\cfg_riscv_ctrl[10] ),
    .cfg_dcache_force_flush(\u_riscv_top.cfg_dcache_force_flush ),
    .core0_dmem_cmd(\u_riscv_top.core0_dmem_cmd ),
    .core0_dmem_req(\u_riscv_top.core0_dmem_req ),
    .core0_dmem_req_ack(\u_riscv_top.core0_dmem_req_ack ),
    .core0_imem_cmd(\u_riscv_top.core0_imem_cmd ),
    .core0_imem_req(\u_riscv_top.core0_imem_req ),
    .core0_imem_req_ack(\u_riscv_top.core0_imem_req_ack ),
    .core0_irq_soft(\u_riscv_top.core0_soft_irq ),
    .core0_timer_irq(\u_riscv_top.core0_timer_irq ),
    .core_clk(\u_riscv_top.core_clk ),
    .core_dcache_cmd(\u_riscv_top.core_dcache_cmd ),
    .core_dcache_req(\u_riscv_top.core_dcache_req ),
    .core_dcache_req_ack(\u_riscv_top.core_dcache_req_ack ),
    .core_dmem_cmd(\u_riscv_top.core_dmem_cmd ),
    .core_dmem_req(\u_riscv_top.core_dmem_req ),
    .core_dmem_req_ack(\u_riscv_top.core_dmem_req_ack ),
    .core_icache_cmd(\u_riscv_top.core_icache_cmd ),
    .core_icache_req(\u_riscv_top.core_icache_req ),
    .core_icache_req_ack(\u_riscv_top.core_icache_req_ack ),
    .core_irq_soft_i(\u_riscv_top.soft_irq ),
    .cpu_intf_rst_n(\u_riscv_top.cpu_intf_rst_n ),
    .pwrup_rst_n(\u_riscv_top.pwrup_rst_n ),
    .rtc_clk(\u_riscv_top.rtc_clk ),
    .sram0_clk0(\u_riscv_top.sram0_clk0 ),
    .sram0_clk1(\u_riscv_top.sram0_clk1 ),
    .sram0_csb0(\u_riscv_top.sram0_csb0 ),
    .sram0_csb1(\u_riscv_top.sram0_csb1 ),
    .sram0_web0(\u_riscv_top.sram0_web0 ),
    .cfg_sram_lphase({\cfg_riscv_ctrl[3] ,
    \cfg_riscv_ctrl[2] }),
    .core0_debug({\u_riscv_top.core0_debug[48] ,
    \u_riscv_top.core0_debug[47] ,
    \u_riscv_top.core0_debug[46] ,
    \u_riscv_top.core0_debug[45] ,
    \u_riscv_top.core0_debug[44] ,
    \u_riscv_top.core0_debug[43] ,
    \u_riscv_top.core0_debug[42] ,
    \u_riscv_top.core0_debug[41] ,
    \u_riscv_top.core0_debug[40] ,
    \u_riscv_top.core0_debug[39] ,
    \u_riscv_top.core0_debug[38] ,
    \u_riscv_top.core0_debug[37] ,
    \u_riscv_top.core0_debug[36] ,
    \u_riscv_top.core0_debug[35] ,
    \u_riscv_top.core0_debug[34] ,
    \u_riscv_top.core0_debug[33] ,
    \u_riscv_top.core0_debug[32] ,
    \u_riscv_top.core0_debug[31] ,
    \u_riscv_top.core0_debug[30] ,
    \u_riscv_top.core0_debug[29] ,
    \u_riscv_top.core0_debug[28] ,
    \u_riscv_top.core0_debug[27] ,
    \u_riscv_top.core0_debug[26] ,
    \u_riscv_top.core0_debug[25] ,
    \u_riscv_top.core0_debug[24] ,
    \u_riscv_top.core0_debug[23] ,
    \u_riscv_top.core0_debug[22] ,
    \u_riscv_top.core0_debug[21] ,
    \u_riscv_top.core0_debug[20] ,
    \u_riscv_top.core0_debug[19] ,
    \u_riscv_top.core0_debug[18] ,
    \u_riscv_top.core0_debug[17] ,
    \u_riscv_top.core0_debug[16] ,
    \u_riscv_top.core0_debug[15] ,
    \u_riscv_top.core0_debug[14] ,
    \u_riscv_top.core0_debug[13] ,
    \u_riscv_top.core0_debug[12] ,
    \u_riscv_top.core0_debug[11] ,
    \u_riscv_top.core0_debug[10] ,
    \u_riscv_top.core0_debug[9] ,
    \u_riscv_top.core0_debug[8] ,
    \u_riscv_top.core0_debug[7] ,
    \u_riscv_top.core0_debug[6] ,
    \u_riscv_top.core0_debug[5] ,
    \u_riscv_top.core0_debug[4] ,
    \u_riscv_top.core0_debug[3] ,
    \u_riscv_top.core0_debug[2] ,
    \u_riscv_top.core0_debug[1] ,
    \u_riscv_top.core0_debug[0] }),
    .core0_dmem_addr({\u_riscv_top.core0_dmem_addr[31] ,
    \u_riscv_top.core0_dmem_addr[30] ,
    \u_riscv_top.core0_dmem_addr[29] ,
    \u_riscv_top.core0_dmem_addr[28] ,
    \u_riscv_top.core0_dmem_addr[27] ,
    \u_riscv_top.core0_dmem_addr[26] ,
    \u_riscv_top.core0_dmem_addr[25] ,
    \u_riscv_top.core0_dmem_addr[24] ,
    \u_riscv_top.core0_dmem_addr[23] ,
    \u_riscv_top.core0_dmem_addr[22] ,
    \u_riscv_top.core0_dmem_addr[21] ,
    \u_riscv_top.core0_dmem_addr[20] ,
    \u_riscv_top.core0_dmem_addr[19] ,
    \u_riscv_top.core0_dmem_addr[18] ,
    \u_riscv_top.core0_dmem_addr[17] ,
    \u_riscv_top.core0_dmem_addr[16] ,
    \u_riscv_top.core0_dmem_addr[15] ,
    \u_riscv_top.core0_dmem_addr[14] ,
    \u_riscv_top.core0_dmem_addr[13] ,
    \u_riscv_top.core0_dmem_addr[12] ,
    \u_riscv_top.core0_dmem_addr[11] ,
    \u_riscv_top.core0_dmem_addr[10] ,
    \u_riscv_top.core0_dmem_addr[9] ,
    \u_riscv_top.core0_dmem_addr[8] ,
    \u_riscv_top.core0_dmem_addr[7] ,
    \u_riscv_top.core0_dmem_addr[6] ,
    \u_riscv_top.core0_dmem_addr[5] ,
    \u_riscv_top.core0_dmem_addr[4] ,
    \u_riscv_top.core0_dmem_addr[3] ,
    \u_riscv_top.core0_dmem_addr[2] ,
    \u_riscv_top.core0_dmem_addr[1] ,
    \u_riscv_top.core0_dmem_addr[0] }),
    .core0_dmem_rdata({\u_riscv_top.core0_dmem_rdata[31] ,
    \u_riscv_top.core0_dmem_rdata[30] ,
    \u_riscv_top.core0_dmem_rdata[29] ,
    \u_riscv_top.core0_dmem_rdata[28] ,
    \u_riscv_top.core0_dmem_rdata[27] ,
    \u_riscv_top.core0_dmem_rdata[26] ,
    \u_riscv_top.core0_dmem_rdata[25] ,
    \u_riscv_top.core0_dmem_rdata[24] ,
    \u_riscv_top.core0_dmem_rdata[23] ,
    \u_riscv_top.core0_dmem_rdata[22] ,
    \u_riscv_top.core0_dmem_rdata[21] ,
    \u_riscv_top.core0_dmem_rdata[20] ,
    \u_riscv_top.core0_dmem_rdata[19] ,
    \u_riscv_top.core0_dmem_rdata[18] ,
    \u_riscv_top.core0_dmem_rdata[17] ,
    \u_riscv_top.core0_dmem_rdata[16] ,
    \u_riscv_top.core0_dmem_rdata[15] ,
    \u_riscv_top.core0_dmem_rdata[14] ,
    \u_riscv_top.core0_dmem_rdata[13] ,
    \u_riscv_top.core0_dmem_rdata[12] ,
    \u_riscv_top.core0_dmem_rdata[11] ,
    \u_riscv_top.core0_dmem_rdata[10] ,
    \u_riscv_top.core0_dmem_rdata[9] ,
    \u_riscv_top.core0_dmem_rdata[8] ,
    \u_riscv_top.core0_dmem_rdata[7] ,
    \u_riscv_top.core0_dmem_rdata[6] ,
    \u_riscv_top.core0_dmem_rdata[5] ,
    \u_riscv_top.core0_dmem_rdata[4] ,
    \u_riscv_top.core0_dmem_rdata[3] ,
    \u_riscv_top.core0_dmem_rdata[2] ,
    \u_riscv_top.core0_dmem_rdata[1] ,
    \u_riscv_top.core0_dmem_rdata[0] }),
    .core0_dmem_resp({\u_riscv_top.core0_dmem_resp[1] ,
    \u_riscv_top.core0_dmem_resp[0] }),
    .core0_dmem_wdata({\u_riscv_top.core0_dmem_wdata[31] ,
    \u_riscv_top.core0_dmem_wdata[30] ,
    \u_riscv_top.core0_dmem_wdata[29] ,
    \u_riscv_top.core0_dmem_wdata[28] ,
    \u_riscv_top.core0_dmem_wdata[27] ,
    \u_riscv_top.core0_dmem_wdata[26] ,
    \u_riscv_top.core0_dmem_wdata[25] ,
    \u_riscv_top.core0_dmem_wdata[24] ,
    \u_riscv_top.core0_dmem_wdata[23] ,
    \u_riscv_top.core0_dmem_wdata[22] ,
    \u_riscv_top.core0_dmem_wdata[21] ,
    \u_riscv_top.core0_dmem_wdata[20] ,
    \u_riscv_top.core0_dmem_wdata[19] ,
    \u_riscv_top.core0_dmem_wdata[18] ,
    \u_riscv_top.core0_dmem_wdata[17] ,
    \u_riscv_top.core0_dmem_wdata[16] ,
    \u_riscv_top.core0_dmem_wdata[15] ,
    \u_riscv_top.core0_dmem_wdata[14] ,
    \u_riscv_top.core0_dmem_wdata[13] ,
    \u_riscv_top.core0_dmem_wdata[12] ,
    \u_riscv_top.core0_dmem_wdata[11] ,
    \u_riscv_top.core0_dmem_wdata[10] ,
    \u_riscv_top.core0_dmem_wdata[9] ,
    \u_riscv_top.core0_dmem_wdata[8] ,
    \u_riscv_top.core0_dmem_wdata[7] ,
    \u_riscv_top.core0_dmem_wdata[6] ,
    \u_riscv_top.core0_dmem_wdata[5] ,
    \u_riscv_top.core0_dmem_wdata[4] ,
    \u_riscv_top.core0_dmem_wdata[3] ,
    \u_riscv_top.core0_dmem_wdata[2] ,
    \u_riscv_top.core0_dmem_wdata[1] ,
    \u_riscv_top.core0_dmem_wdata[0] }),
    .core0_dmem_width({\u_riscv_top.core0_dmem_width[1] ,
    \u_riscv_top.core0_dmem_width[0] }),
    .core0_imem_addr({\u_riscv_top.core0_imem_addr[31] ,
    \u_riscv_top.core0_imem_addr[30] ,
    \u_riscv_top.core0_imem_addr[29] ,
    \u_riscv_top.core0_imem_addr[28] ,
    \u_riscv_top.core0_imem_addr[27] ,
    \u_riscv_top.core0_imem_addr[26] ,
    \u_riscv_top.core0_imem_addr[25] ,
    \u_riscv_top.core0_imem_addr[24] ,
    \u_riscv_top.core0_imem_addr[23] ,
    \u_riscv_top.core0_imem_addr[22] ,
    \u_riscv_top.core0_imem_addr[21] ,
    \u_riscv_top.core0_imem_addr[20] ,
    \u_riscv_top.core0_imem_addr[19] ,
    \u_riscv_top.core0_imem_addr[18] ,
    \u_riscv_top.core0_imem_addr[17] ,
    \u_riscv_top.core0_imem_addr[16] ,
    \u_riscv_top.core0_imem_addr[15] ,
    \u_riscv_top.core0_imem_addr[14] ,
    \u_riscv_top.core0_imem_addr[13] ,
    \u_riscv_top.core0_imem_addr[12] ,
    \u_riscv_top.core0_imem_addr[11] ,
    \u_riscv_top.core0_imem_addr[10] ,
    \u_riscv_top.core0_imem_addr[9] ,
    \u_riscv_top.core0_imem_addr[8] ,
    \u_riscv_top.core0_imem_addr[7] ,
    \u_riscv_top.core0_imem_addr[6] ,
    \u_riscv_top.core0_imem_addr[5] ,
    \u_riscv_top.core0_imem_addr[4] ,
    \u_riscv_top.core0_imem_addr[3] ,
    \u_riscv_top.core0_imem_addr[2] ,
    \u_riscv_top.core0_imem_addr[1] ,
    \u_riscv_top.core0_imem_addr[0] }),
    .core0_imem_bl({\u_riscv_top.core0_imem_bl[2] ,
    \u_riscv_top.core0_imem_bl[1] ,
    \u_riscv_top.core0_imem_bl[0] }),
    .core0_imem_rdata({\u_riscv_top.core0_imem_rdata[31] ,
    \u_riscv_top.core0_imem_rdata[30] ,
    \u_riscv_top.core0_imem_rdata[29] ,
    \u_riscv_top.core0_imem_rdata[28] ,
    \u_riscv_top.core0_imem_rdata[27] ,
    \u_riscv_top.core0_imem_rdata[26] ,
    \u_riscv_top.core0_imem_rdata[25] ,
    \u_riscv_top.core0_imem_rdata[24] ,
    \u_riscv_top.core0_imem_rdata[23] ,
    \u_riscv_top.core0_imem_rdata[22] ,
    \u_riscv_top.core0_imem_rdata[21] ,
    \u_riscv_top.core0_imem_rdata[20] ,
    \u_riscv_top.core0_imem_rdata[19] ,
    \u_riscv_top.core0_imem_rdata[18] ,
    \u_riscv_top.core0_imem_rdata[17] ,
    \u_riscv_top.core0_imem_rdata[16] ,
    \u_riscv_top.core0_imem_rdata[15] ,
    \u_riscv_top.core0_imem_rdata[14] ,
    \u_riscv_top.core0_imem_rdata[13] ,
    \u_riscv_top.core0_imem_rdata[12] ,
    \u_riscv_top.core0_imem_rdata[11] ,
    \u_riscv_top.core0_imem_rdata[10] ,
    \u_riscv_top.core0_imem_rdata[9] ,
    \u_riscv_top.core0_imem_rdata[8] ,
    \u_riscv_top.core0_imem_rdata[7] ,
    \u_riscv_top.core0_imem_rdata[6] ,
    \u_riscv_top.core0_imem_rdata[5] ,
    \u_riscv_top.core0_imem_rdata[4] ,
    \u_riscv_top.core0_imem_rdata[3] ,
    \u_riscv_top.core0_imem_rdata[2] ,
    \u_riscv_top.core0_imem_rdata[1] ,
    \u_riscv_top.core0_imem_rdata[0] }),
    .core0_imem_resp({\u_riscv_top.core0_imem_resp[1] ,
    \u_riscv_top.core0_imem_resp[0] }),
    .core0_irq_lines({\u_riscv_top.core0_irq_lines[15] ,
    \u_riscv_top.core0_irq_lines[14] ,
    \u_riscv_top.core0_irq_lines[13] ,
    \u_riscv_top.core0_irq_lines[12] ,
    \u_riscv_top.core0_irq_lines[11] ,
    \u_riscv_top.core0_irq_lines[10] ,
    \u_riscv_top.core0_irq_lines[9] ,
    \u_riscv_top.core0_irq_lines[8] ,
    \u_riscv_top.core0_irq_lines[7] ,
    \u_riscv_top.core0_irq_lines[6] ,
    \u_riscv_top.core0_irq_lines[5] ,
    \u_riscv_top.core0_irq_lines[4] ,
    \u_riscv_top.core0_irq_lines[3] ,
    \u_riscv_top.core0_irq_lines[2] ,
    \u_riscv_top.core0_irq_lines[1] ,
    \u_riscv_top.core0_irq_lines[0] }),
    .core0_timer_val({\u_riscv_top.core0_timer_val[63] ,
    \u_riscv_top.core0_timer_val[62] ,
    \u_riscv_top.core0_timer_val[61] ,
    \u_riscv_top.core0_timer_val[60] ,
    \u_riscv_top.core0_timer_val[59] ,
    \u_riscv_top.core0_timer_val[58] ,
    \u_riscv_top.core0_timer_val[57] ,
    \u_riscv_top.core0_timer_val[56] ,
    \u_riscv_top.core0_timer_val[55] ,
    \u_riscv_top.core0_timer_val[54] ,
    \u_riscv_top.core0_timer_val[53] ,
    \u_riscv_top.core0_timer_val[52] ,
    \u_riscv_top.core0_timer_val[51] ,
    \u_riscv_top.core0_timer_val[50] ,
    \u_riscv_top.core0_timer_val[49] ,
    \u_riscv_top.core0_timer_val[48] ,
    \u_riscv_top.core0_timer_val[47] ,
    \u_riscv_top.core0_timer_val[46] ,
    \u_riscv_top.core0_timer_val[45] ,
    \u_riscv_top.core0_timer_val[44] ,
    \u_riscv_top.core0_timer_val[43] ,
    \u_riscv_top.core0_timer_val[42] ,
    \u_riscv_top.core0_timer_val[41] ,
    \u_riscv_top.core0_timer_val[40] ,
    \u_riscv_top.core0_timer_val[39] ,
    \u_riscv_top.core0_timer_val[38] ,
    \u_riscv_top.core0_timer_val[37] ,
    \u_riscv_top.core0_timer_val[36] ,
    \u_riscv_top.core0_timer_val[35] ,
    \u_riscv_top.core0_timer_val[34] ,
    \u_riscv_top.core0_timer_val[33] ,
    \u_riscv_top.core0_timer_val[32] ,
    \u_riscv_top.core0_timer_val[31] ,
    \u_riscv_top.core0_timer_val[30] ,
    \u_riscv_top.core0_timer_val[29] ,
    \u_riscv_top.core0_timer_val[28] ,
    \u_riscv_top.core0_timer_val[27] ,
    \u_riscv_top.core0_timer_val[26] ,
    \u_riscv_top.core0_timer_val[25] ,
    \u_riscv_top.core0_timer_val[24] ,
    \u_riscv_top.core0_timer_val[23] ,
    \u_riscv_top.core0_timer_val[22] ,
    \u_riscv_top.core0_timer_val[21] ,
    \u_riscv_top.core0_timer_val[20] ,
    \u_riscv_top.core0_timer_val[19] ,
    \u_riscv_top.core0_timer_val[18] ,
    \u_riscv_top.core0_timer_val[17] ,
    \u_riscv_top.core0_timer_val[16] ,
    \u_riscv_top.core0_timer_val[15] ,
    \u_riscv_top.core0_timer_val[14] ,
    \u_riscv_top.core0_timer_val[13] ,
    \u_riscv_top.core0_timer_val[12] ,
    \u_riscv_top.core0_timer_val[11] ,
    \u_riscv_top.core0_timer_val[10] ,
    \u_riscv_top.core0_timer_val[9] ,
    \u_riscv_top.core0_timer_val[8] ,
    \u_riscv_top.core0_timer_val[7] ,
    \u_riscv_top.core0_timer_val[6] ,
    \u_riscv_top.core0_timer_val[5] ,
    \u_riscv_top.core0_timer_val[4] ,
    \u_riscv_top.core0_timer_val[3] ,
    \u_riscv_top.core0_timer_val[2] ,
    \u_riscv_top.core0_timer_val[1] ,
    \u_riscv_top.core0_timer_val[0] }),
    .core0_uid({\u_riscv_top.core0_uid[1] ,
    \u_riscv_top.core0_uid[0] }),
    .core_dcache_addr({\u_riscv_top.core_dcache_addr[31] ,
    \u_riscv_top.core_dcache_addr[30] ,
    \u_riscv_top.core_dcache_addr[29] ,
    \u_riscv_top.core_dcache_addr[28] ,
    \u_riscv_top.core_dcache_addr[27] ,
    \u_riscv_top.core_dcache_addr[26] ,
    \u_riscv_top.core_dcache_addr[25] ,
    \u_riscv_top.core_dcache_addr[24] ,
    \u_riscv_top.core_dcache_addr[23] ,
    \u_riscv_top.core_dcache_addr[22] ,
    \u_riscv_top.core_dcache_addr[21] ,
    \u_riscv_top.core_dcache_addr[20] ,
    \u_riscv_top.core_dcache_addr[19] ,
    \u_riscv_top.core_dcache_addr[18] ,
    \u_riscv_top.core_dcache_addr[17] ,
    \u_riscv_top.core_dcache_addr[16] ,
    \u_riscv_top.core_dcache_addr[15] ,
    \u_riscv_top.core_dcache_addr[14] ,
    \u_riscv_top.core_dcache_addr[13] ,
    \u_riscv_top.core_dcache_addr[12] ,
    \u_riscv_top.core_dcache_addr[11] ,
    \u_riscv_top.core_dcache_addr[10] ,
    \u_riscv_top.core_dcache_addr[9] ,
    \u_riscv_top.core_dcache_addr[8] ,
    \u_riscv_top.core_dcache_addr[7] ,
    \u_riscv_top.core_dcache_addr[6] ,
    \u_riscv_top.core_dcache_addr[5] ,
    \u_riscv_top.core_dcache_addr[4] ,
    \u_riscv_top.core_dcache_addr[3] ,
    \u_riscv_top.core_dcache_addr[2] ,
    \u_riscv_top.core_dcache_addr[1] ,
    \u_riscv_top.core_dcache_addr[0] }),
    .core_dcache_rdata({\u_riscv_top.core_dcache_rdata[31] ,
    \u_riscv_top.core_dcache_rdata[30] ,
    \u_riscv_top.core_dcache_rdata[29] ,
    \u_riscv_top.core_dcache_rdata[28] ,
    \u_riscv_top.core_dcache_rdata[27] ,
    \u_riscv_top.core_dcache_rdata[26] ,
    \u_riscv_top.core_dcache_rdata[25] ,
    \u_riscv_top.core_dcache_rdata[24] ,
    \u_riscv_top.core_dcache_rdata[23] ,
    \u_riscv_top.core_dcache_rdata[22] ,
    \u_riscv_top.core_dcache_rdata[21] ,
    \u_riscv_top.core_dcache_rdata[20] ,
    \u_riscv_top.core_dcache_rdata[19] ,
    \u_riscv_top.core_dcache_rdata[18] ,
    \u_riscv_top.core_dcache_rdata[17] ,
    \u_riscv_top.core_dcache_rdata[16] ,
    \u_riscv_top.core_dcache_rdata[15] ,
    \u_riscv_top.core_dcache_rdata[14] ,
    \u_riscv_top.core_dcache_rdata[13] ,
    \u_riscv_top.core_dcache_rdata[12] ,
    \u_riscv_top.core_dcache_rdata[11] ,
    \u_riscv_top.core_dcache_rdata[10] ,
    \u_riscv_top.core_dcache_rdata[9] ,
    \u_riscv_top.core_dcache_rdata[8] ,
    \u_riscv_top.core_dcache_rdata[7] ,
    \u_riscv_top.core_dcache_rdata[6] ,
    \u_riscv_top.core_dcache_rdata[5] ,
    \u_riscv_top.core_dcache_rdata[4] ,
    \u_riscv_top.core_dcache_rdata[3] ,
    \u_riscv_top.core_dcache_rdata[2] ,
    \u_riscv_top.core_dcache_rdata[1] ,
    \u_riscv_top.core_dcache_rdata[0] }),
    .core_dcache_resp({\u_riscv_top.core_dcache_resp[1] ,
    \u_riscv_top.core_dcache_resp[0] }),
    .core_dcache_wdata({\u_riscv_top.core_dcache_wdata[31] ,
    \u_riscv_top.core_dcache_wdata[30] ,
    \u_riscv_top.core_dcache_wdata[29] ,
    \u_riscv_top.core_dcache_wdata[28] ,
    \u_riscv_top.core_dcache_wdata[27] ,
    \u_riscv_top.core_dcache_wdata[26] ,
    \u_riscv_top.core_dcache_wdata[25] ,
    \u_riscv_top.core_dcache_wdata[24] ,
    \u_riscv_top.core_dcache_wdata[23] ,
    \u_riscv_top.core_dcache_wdata[22] ,
    \u_riscv_top.core_dcache_wdata[21] ,
    \u_riscv_top.core_dcache_wdata[20] ,
    \u_riscv_top.core_dcache_wdata[19] ,
    \u_riscv_top.core_dcache_wdata[18] ,
    \u_riscv_top.core_dcache_wdata[17] ,
    \u_riscv_top.core_dcache_wdata[16] ,
    \u_riscv_top.core_dcache_wdata[15] ,
    \u_riscv_top.core_dcache_wdata[14] ,
    \u_riscv_top.core_dcache_wdata[13] ,
    \u_riscv_top.core_dcache_wdata[12] ,
    \u_riscv_top.core_dcache_wdata[11] ,
    \u_riscv_top.core_dcache_wdata[10] ,
    \u_riscv_top.core_dcache_wdata[9] ,
    \u_riscv_top.core_dcache_wdata[8] ,
    \u_riscv_top.core_dcache_wdata[7] ,
    \u_riscv_top.core_dcache_wdata[6] ,
    \u_riscv_top.core_dcache_wdata[5] ,
    \u_riscv_top.core_dcache_wdata[4] ,
    \u_riscv_top.core_dcache_wdata[3] ,
    \u_riscv_top.core_dcache_wdata[2] ,
    \u_riscv_top.core_dcache_wdata[1] ,
    \u_riscv_top.core_dcache_wdata[0] }),
    .core_dcache_width({\u_riscv_top.core_dcache_width[1] ,
    \u_riscv_top.core_dcache_width[0] }),
    .core_dmem_addr({\u_riscv_top.core_dmem_addr[31] ,
    \u_riscv_top.core_dmem_addr[30] ,
    \u_riscv_top.core_dmem_addr[29] ,
    \u_riscv_top.core_dmem_addr[28] ,
    \u_riscv_top.core_dmem_addr[27] ,
    \u_riscv_top.core_dmem_addr[26] ,
    \u_riscv_top.core_dmem_addr[25] ,
    \u_riscv_top.core_dmem_addr[24] ,
    \u_riscv_top.core_dmem_addr[23] ,
    \u_riscv_top.core_dmem_addr[22] ,
    \u_riscv_top.core_dmem_addr[21] ,
    \u_riscv_top.core_dmem_addr[20] ,
    \u_riscv_top.core_dmem_addr[19] ,
    \u_riscv_top.core_dmem_addr[18] ,
    \u_riscv_top.core_dmem_addr[17] ,
    \u_riscv_top.core_dmem_addr[16] ,
    \u_riscv_top.core_dmem_addr[15] ,
    \u_riscv_top.core_dmem_addr[14] ,
    \u_riscv_top.core_dmem_addr[13] ,
    \u_riscv_top.core_dmem_addr[12] ,
    \u_riscv_top.core_dmem_addr[11] ,
    \u_riscv_top.core_dmem_addr[10] ,
    \u_riscv_top.core_dmem_addr[9] ,
    \u_riscv_top.core_dmem_addr[8] ,
    \u_riscv_top.core_dmem_addr[7] ,
    \u_riscv_top.core_dmem_addr[6] ,
    \u_riscv_top.core_dmem_addr[5] ,
    \u_riscv_top.core_dmem_addr[4] ,
    \u_riscv_top.core_dmem_addr[3] ,
    \u_riscv_top.core_dmem_addr[2] ,
    \u_riscv_top.core_dmem_addr[1] ,
    \u_riscv_top.core_dmem_addr[0] }),
    .core_dmem_bl({\u_riscv_top.core_dmem_bl[2] ,
    \u_riscv_top.core_dmem_bl[1] ,
    \u_riscv_top.core_dmem_bl[0] }),
    .core_dmem_rdata({\u_riscv_top.core_dmem_rdata[31] ,
    \u_riscv_top.core_dmem_rdata[30] ,
    \u_riscv_top.core_dmem_rdata[29] ,
    \u_riscv_top.core_dmem_rdata[28] ,
    \u_riscv_top.core_dmem_rdata[27] ,
    \u_riscv_top.core_dmem_rdata[26] ,
    \u_riscv_top.core_dmem_rdata[25] ,
    \u_riscv_top.core_dmem_rdata[24] ,
    \u_riscv_top.core_dmem_rdata[23] ,
    \u_riscv_top.core_dmem_rdata[22] ,
    \u_riscv_top.core_dmem_rdata[21] ,
    \u_riscv_top.core_dmem_rdata[20] ,
    \u_riscv_top.core_dmem_rdata[19] ,
    \u_riscv_top.core_dmem_rdata[18] ,
    \u_riscv_top.core_dmem_rdata[17] ,
    \u_riscv_top.core_dmem_rdata[16] ,
    \u_riscv_top.core_dmem_rdata[15] ,
    \u_riscv_top.core_dmem_rdata[14] ,
    \u_riscv_top.core_dmem_rdata[13] ,
    \u_riscv_top.core_dmem_rdata[12] ,
    \u_riscv_top.core_dmem_rdata[11] ,
    \u_riscv_top.core_dmem_rdata[10] ,
    \u_riscv_top.core_dmem_rdata[9] ,
    \u_riscv_top.core_dmem_rdata[8] ,
    \u_riscv_top.core_dmem_rdata[7] ,
    \u_riscv_top.core_dmem_rdata[6] ,
    \u_riscv_top.core_dmem_rdata[5] ,
    \u_riscv_top.core_dmem_rdata[4] ,
    \u_riscv_top.core_dmem_rdata[3] ,
    \u_riscv_top.core_dmem_rdata[2] ,
    \u_riscv_top.core_dmem_rdata[1] ,
    \u_riscv_top.core_dmem_rdata[0] }),
    .core_dmem_resp({\u_riscv_top.core_dmem_resp[1] ,
    \u_riscv_top.core_dmem_resp[0] }),
    .core_dmem_wdata({\u_riscv_top.core_dmem_wdata[31] ,
    \u_riscv_top.core_dmem_wdata[30] ,
    \u_riscv_top.core_dmem_wdata[29] ,
    \u_riscv_top.core_dmem_wdata[28] ,
    \u_riscv_top.core_dmem_wdata[27] ,
    \u_riscv_top.core_dmem_wdata[26] ,
    \u_riscv_top.core_dmem_wdata[25] ,
    \u_riscv_top.core_dmem_wdata[24] ,
    \u_riscv_top.core_dmem_wdata[23] ,
    \u_riscv_top.core_dmem_wdata[22] ,
    \u_riscv_top.core_dmem_wdata[21] ,
    \u_riscv_top.core_dmem_wdata[20] ,
    \u_riscv_top.core_dmem_wdata[19] ,
    \u_riscv_top.core_dmem_wdata[18] ,
    \u_riscv_top.core_dmem_wdata[17] ,
    \u_riscv_top.core_dmem_wdata[16] ,
    \u_riscv_top.core_dmem_wdata[15] ,
    \u_riscv_top.core_dmem_wdata[14] ,
    \u_riscv_top.core_dmem_wdata[13] ,
    \u_riscv_top.core_dmem_wdata[12] ,
    \u_riscv_top.core_dmem_wdata[11] ,
    \u_riscv_top.core_dmem_wdata[10] ,
    \u_riscv_top.core_dmem_wdata[9] ,
    \u_riscv_top.core_dmem_wdata[8] ,
    \u_riscv_top.core_dmem_wdata[7] ,
    \u_riscv_top.core_dmem_wdata[6] ,
    \u_riscv_top.core_dmem_wdata[5] ,
    \u_riscv_top.core_dmem_wdata[4] ,
    \u_riscv_top.core_dmem_wdata[3] ,
    \u_riscv_top.core_dmem_wdata[2] ,
    \u_riscv_top.core_dmem_wdata[1] ,
    \u_riscv_top.core_dmem_wdata[0] }),
    .core_dmem_width({\u_riscv_top.core_dmem_width[1] ,
    \u_riscv_top.core_dmem_width[0] }),
    .core_icache_addr({\u_riscv_top.core_icache_addr[31] ,
    \u_riscv_top.core_icache_addr[30] ,
    \u_riscv_top.core_icache_addr[29] ,
    \u_riscv_top.core_icache_addr[28] ,
    \u_riscv_top.core_icache_addr[27] ,
    \u_riscv_top.core_icache_addr[26] ,
    \u_riscv_top.core_icache_addr[25] ,
    \u_riscv_top.core_icache_addr[24] ,
    \u_riscv_top.core_icache_addr[23] ,
    \u_riscv_top.core_icache_addr[22] ,
    \u_riscv_top.core_icache_addr[21] ,
    \u_riscv_top.core_icache_addr[20] ,
    \u_riscv_top.core_icache_addr[19] ,
    \u_riscv_top.core_icache_addr[18] ,
    \u_riscv_top.core_icache_addr[17] ,
    \u_riscv_top.core_icache_addr[16] ,
    \u_riscv_top.core_icache_addr[15] ,
    \u_riscv_top.core_icache_addr[14] ,
    \u_riscv_top.core_icache_addr[13] ,
    \u_riscv_top.core_icache_addr[12] ,
    \u_riscv_top.core_icache_addr[11] ,
    \u_riscv_top.core_icache_addr[10] ,
    \u_riscv_top.core_icache_addr[9] ,
    \u_riscv_top.core_icache_addr[8] ,
    \u_riscv_top.core_icache_addr[7] ,
    \u_riscv_top.core_icache_addr[6] ,
    \u_riscv_top.core_icache_addr[5] ,
    \u_riscv_top.core_icache_addr[4] ,
    \u_riscv_top.core_icache_addr[3] ,
    \u_riscv_top.core_icache_addr[2] ,
    \u_riscv_top.core_icache_addr[1] ,
    \u_riscv_top.core_icache_addr[0] }),
    .core_icache_bl({\u_riscv_top.core_icache_bl[2] ,
    \u_riscv_top.core_icache_bl[1] ,
    \u_riscv_top.core_icache_bl[0] }),
    .core_icache_rdata({\u_riscv_top.core_icache_rdata[31] ,
    \u_riscv_top.core_icache_rdata[30] ,
    \u_riscv_top.core_icache_rdata[29] ,
    \u_riscv_top.core_icache_rdata[28] ,
    \u_riscv_top.core_icache_rdata[27] ,
    \u_riscv_top.core_icache_rdata[26] ,
    \u_riscv_top.core_icache_rdata[25] ,
    \u_riscv_top.core_icache_rdata[24] ,
    \u_riscv_top.core_icache_rdata[23] ,
    \u_riscv_top.core_icache_rdata[22] ,
    \u_riscv_top.core_icache_rdata[21] ,
    \u_riscv_top.core_icache_rdata[20] ,
    \u_riscv_top.core_icache_rdata[19] ,
    \u_riscv_top.core_icache_rdata[18] ,
    \u_riscv_top.core_icache_rdata[17] ,
    \u_riscv_top.core_icache_rdata[16] ,
    \u_riscv_top.core_icache_rdata[15] ,
    \u_riscv_top.core_icache_rdata[14] ,
    \u_riscv_top.core_icache_rdata[13] ,
    \u_riscv_top.core_icache_rdata[12] ,
    \u_riscv_top.core_icache_rdata[11] ,
    \u_riscv_top.core_icache_rdata[10] ,
    \u_riscv_top.core_icache_rdata[9] ,
    \u_riscv_top.core_icache_rdata[8] ,
    \u_riscv_top.core_icache_rdata[7] ,
    \u_riscv_top.core_icache_rdata[6] ,
    \u_riscv_top.core_icache_rdata[5] ,
    \u_riscv_top.core_icache_rdata[4] ,
    \u_riscv_top.core_icache_rdata[3] ,
    \u_riscv_top.core_icache_rdata[2] ,
    \u_riscv_top.core_icache_rdata[1] ,
    \u_riscv_top.core_icache_rdata[0] }),
    .core_icache_resp({\u_riscv_top.core_icache_resp[1] ,
    \u_riscv_top.core_icache_resp[0] }),
    .core_icache_width({\u_riscv_top.core_icache_width[1] ,
    \u_riscv_top.core_icache_width[0] }),
    .core_irq_lines_i({\u_riscv_top.irq_lines[15] ,
    \u_riscv_top.irq_lines[14] ,
    \u_riscv_top.irq_lines[13] ,
    \u_riscv_top.irq_lines[12] ,
    \u_riscv_top.irq_lines[11] ,
    \u_riscv_top.irq_lines[10] ,
    \u_riscv_top.irq_lines[9] ,
    \u_riscv_top.irq_lines[8] ,
    \u_riscv_top.irq_lines[7] ,
    \u_riscv_top.irq_lines[6] ,
    \u_riscv_top.irq_lines[5] ,
    \u_riscv_top.irq_lines[4] ,
    \u_riscv_top.irq_lines[3] ,
    \u_riscv_top.irq_lines[2] ,
    \u_riscv_top.irq_lines[1] ,
    \u_riscv_top.irq_lines[0] }),
    .riscv_debug({la_data_out[63],
    la_data_out[62],
    la_data_out[61],
    la_data_out[60],
    la_data_out[59],
    la_data_out[58],
    la_data_out[57],
    la_data_out[56],
    la_data_out[55],
    la_data_out[54],
    la_data_out[53],
    la_data_out[52],
    la_data_out[51],
    la_data_out[50],
    la_data_out[49],
    la_data_out[48],
    la_data_out[47],
    la_data_out[46],
    la_data_out[45],
    la_data_out[44],
    la_data_out[43],
    la_data_out[42],
    la_data_out[41],
    la_data_out[40],
    la_data_out[39],
    la_data_out[38],
    la_data_out[37],
    la_data_out[36],
    la_data_out[35],
    la_data_out[34],
    la_data_out[33],
    la_data_out[32],
    la_data_out[31],
    la_data_out[30],
    la_data_out[29],
    la_data_out[28],
    la_data_out[27],
    la_data_out[26],
    la_data_out[25],
    la_data_out[24],
    la_data_out[23],
    la_data_out[22],
    la_data_out[21],
    la_data_out[20],
    la_data_out[19],
    la_data_out[18],
    la_data_out[17],
    la_data_out[16],
    la_data_out[15],
    la_data_out[14],
    la_data_out[13],
    la_data_out[12],
    la_data_out[11],
    la_data_out[10],
    la_data_out[9],
    la_data_out[8],
    la_data_out[7],
    la_data_out[6],
    la_data_out[5],
    la_data_out[4],
    la_data_out[3],
    la_data_out[2],
    la_data_out[1],
    la_data_out[0]}),
    .sram0_addr0({\u_riscv_top.sram0_addr0[8] ,
    \u_riscv_top.sram0_addr0[7] ,
    \u_riscv_top.sram0_addr0[6] ,
    \u_riscv_top.sram0_addr0[5] ,
    \u_riscv_top.sram0_addr0[4] ,
    \u_riscv_top.sram0_addr0[3] ,
    \u_riscv_top.sram0_addr0[2] ,
    \u_riscv_top.sram0_addr0[1] ,
    \u_riscv_top.sram0_addr0[0] }),
    .sram0_addr1({\u_riscv_top.sram0_addr1[8] ,
    \u_riscv_top.sram0_addr1[7] ,
    \u_riscv_top.sram0_addr1[6] ,
    \u_riscv_top.sram0_addr1[5] ,
    \u_riscv_top.sram0_addr1[4] ,
    \u_riscv_top.sram0_addr1[3] ,
    \u_riscv_top.sram0_addr1[2] ,
    \u_riscv_top.sram0_addr1[1] ,
    \u_riscv_top.sram0_addr1[0] }),
    .sram0_din0({\u_riscv_top.sram0_din0[31] ,
    \u_riscv_top.sram0_din0[30] ,
    \u_riscv_top.sram0_din0[29] ,
    \u_riscv_top.sram0_din0[28] ,
    \u_riscv_top.sram0_din0[27] ,
    \u_riscv_top.sram0_din0[26] ,
    \u_riscv_top.sram0_din0[25] ,
    \u_riscv_top.sram0_din0[24] ,
    \u_riscv_top.sram0_din0[23] ,
    \u_riscv_top.sram0_din0[22] ,
    \u_riscv_top.sram0_din0[21] ,
    \u_riscv_top.sram0_din0[20] ,
    \u_riscv_top.sram0_din0[19] ,
    \u_riscv_top.sram0_din0[18] ,
    \u_riscv_top.sram0_din0[17] ,
    \u_riscv_top.sram0_din0[16] ,
    \u_riscv_top.sram0_din0[15] ,
    \u_riscv_top.sram0_din0[14] ,
    \u_riscv_top.sram0_din0[13] ,
    \u_riscv_top.sram0_din0[12] ,
    \u_riscv_top.sram0_din0[11] ,
    \u_riscv_top.sram0_din0[10] ,
    \u_riscv_top.sram0_din0[9] ,
    \u_riscv_top.sram0_din0[8] ,
    \u_riscv_top.sram0_din0[7] ,
    \u_riscv_top.sram0_din0[6] ,
    \u_riscv_top.sram0_din0[5] ,
    \u_riscv_top.sram0_din0[4] ,
    \u_riscv_top.sram0_din0[3] ,
    \u_riscv_top.sram0_din0[2] ,
    \u_riscv_top.sram0_din0[1] ,
    \u_riscv_top.sram0_din0[0] }),
    .sram0_dout0({\u_riscv_top.sram0_dout0[31] ,
    \u_riscv_top.sram0_dout0[30] ,
    \u_riscv_top.sram0_dout0[29] ,
    \u_riscv_top.sram0_dout0[28] ,
    \u_riscv_top.sram0_dout0[27] ,
    \u_riscv_top.sram0_dout0[26] ,
    \u_riscv_top.sram0_dout0[25] ,
    \u_riscv_top.sram0_dout0[24] ,
    \u_riscv_top.sram0_dout0[23] ,
    \u_riscv_top.sram0_dout0[22] ,
    \u_riscv_top.sram0_dout0[21] ,
    \u_riscv_top.sram0_dout0[20] ,
    \u_riscv_top.sram0_dout0[19] ,
    \u_riscv_top.sram0_dout0[18] ,
    \u_riscv_top.sram0_dout0[17] ,
    \u_riscv_top.sram0_dout0[16] ,
    \u_riscv_top.sram0_dout0[15] ,
    \u_riscv_top.sram0_dout0[14] ,
    \u_riscv_top.sram0_dout0[13] ,
    \u_riscv_top.sram0_dout0[12] ,
    \u_riscv_top.sram0_dout0[11] ,
    \u_riscv_top.sram0_dout0[10] ,
    \u_riscv_top.sram0_dout0[9] ,
    \u_riscv_top.sram0_dout0[8] ,
    \u_riscv_top.sram0_dout0[7] ,
    \u_riscv_top.sram0_dout0[6] ,
    \u_riscv_top.sram0_dout0[5] ,
    \u_riscv_top.sram0_dout0[4] ,
    \u_riscv_top.sram0_dout0[3] ,
    \u_riscv_top.sram0_dout0[2] ,
    \u_riscv_top.sram0_dout0[1] ,
    \u_riscv_top.sram0_dout0[0] }),
    .sram0_dout1({\u_riscv_top.sram0_dout1[31] ,
    \u_riscv_top.sram0_dout1[30] ,
    \u_riscv_top.sram0_dout1[29] ,
    \u_riscv_top.sram0_dout1[28] ,
    \u_riscv_top.sram0_dout1[27] ,
    \u_riscv_top.sram0_dout1[26] ,
    \u_riscv_top.sram0_dout1[25] ,
    \u_riscv_top.sram0_dout1[24] ,
    \u_riscv_top.sram0_dout1[23] ,
    \u_riscv_top.sram0_dout1[22] ,
    \u_riscv_top.sram0_dout1[21] ,
    \u_riscv_top.sram0_dout1[20] ,
    \u_riscv_top.sram0_dout1[19] ,
    \u_riscv_top.sram0_dout1[18] ,
    \u_riscv_top.sram0_dout1[17] ,
    \u_riscv_top.sram0_dout1[16] ,
    \u_riscv_top.sram0_dout1[15] ,
    \u_riscv_top.sram0_dout1[14] ,
    \u_riscv_top.sram0_dout1[13] ,
    \u_riscv_top.sram0_dout1[12] ,
    \u_riscv_top.sram0_dout1[11] ,
    \u_riscv_top.sram0_dout1[10] ,
    \u_riscv_top.sram0_dout1[9] ,
    \u_riscv_top.sram0_dout1[8] ,
    \u_riscv_top.sram0_dout1[7] ,
    \u_riscv_top.sram0_dout1[6] ,
    \u_riscv_top.sram0_dout1[5] ,
    \u_riscv_top.sram0_dout1[4] ,
    \u_riscv_top.sram0_dout1[3] ,
    \u_riscv_top.sram0_dout1[2] ,
    \u_riscv_top.sram0_dout1[1] ,
    \u_riscv_top.sram0_dout1[0] }),
    .sram0_wmask0({\u_riscv_top.sram0_wmask0[3] ,
    \u_riscv_top.sram0_wmask0[2] ,
    \u_riscv_top.sram0_wmask0[1] ,
    \u_riscv_top.sram0_wmask0[0] }));
 ycr_intf \u_riscv_top.u_intf  (.cfg_bypass_dcache(\cfg_riscv_ctrl[11] ),
    .cfg_bypass_icache(\cfg_riscv_ctrl[10] ),
    .cfg_dcache_force_flush(\u_riscv_top.cfg_dcache_force_flush ),
    .cfg_dcache_pfet_dis(\cfg_riscv_ctrl[6] ),
    .cfg_icache_ntag_pfet_dis(\cfg_riscv_ctrl[5] ),
    .cfg_icache_pfet_dis(\cfg_riscv_ctrl[4] ),
    .core_clk(\u_riscv_top.core_clk ),
    .core_dcache_cmd(\u_riscv_top.core_dcache_cmd ),
    .core_dcache_req(\u_riscv_top.core_dcache_req ),
    .core_dcache_req_ack(\u_riscv_top.core_dcache_req_ack ),
    .core_dmem_cmd(\u_riscv_top.core_dmem_cmd ),
    .core_dmem_req(\u_riscv_top.core_dmem_req ),
    .core_dmem_req_ack(\u_riscv_top.core_dmem_req_ack ),
    .core_icache_cmd(\u_riscv_top.core_icache_cmd ),
    .core_icache_req(\u_riscv_top.core_icache_req ),
    .core_icache_req_ack(\u_riscv_top.core_icache_req_ack ),
    .cpu_intf_rst_n(\u_riscv_top.cpu_intf_rst_n ),
    .dcache_mem_clk0(\u_riscv_top.dcache_mem_clk0 ),
    .dcache_mem_clk1(\u_riscv_top.dcache_mem_clk1 ),
    .dcache_mem_csb0(\u_riscv_top.dcache_mem_csb0 ),
    .dcache_mem_csb1(\u_riscv_top.dcache_mem_csb1 ),
    .dcache_mem_web0(\u_riscv_top.dcache_mem_web0 ),
    .icache_mem_clk0(\u_riscv_top.icache_mem_clk0 ),
    .icache_mem_clk1(\u_riscv_top.icache_mem_clk1 ),
    .icache_mem_csb0(\u_riscv_top.icache_mem_csb0 ),
    .icache_mem_csb1(\u_riscv_top.icache_mem_csb1 ),
    .icache_mem_web0(\u_riscv_top.icache_mem_web0 ),
    .pwrup_rst_n(\u_riscv_top.pwrup_rst_n ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_clk(\u_riscv_top.wb_clk ),
    .wb_dcache_ack_i(\u_riscv_top.wb_dcache_ack_i ),
    .wb_dcache_bry_o(\u_riscv_top.wb_dcache_bry_o ),
    .wb_dcache_cyc_o(\u_riscv_top.wb_dcache_cyc_o ),
    .wb_dcache_err_i(\u_riscv_top.wb_dcache_err_i ),
    .wb_dcache_lack_i(\u_riscv_top.wb_dcache_lack_i ),
    .wb_dcache_stb_o(\u_riscv_top.wb_dcache_stb_o ),
    .wb_dcache_we_o(\u_riscv_top.wb_dcache_we_o ),
    .wb_icache_ack_i(\u_riscv_top.wb_icache_ack_i ),
    .wb_icache_bry_o(\u_riscv_top.wb_icache_bry_o ),
    .wb_icache_cyc_o(\u_riscv_top.wb_icache_cyc_o ),
    .wb_icache_err_i(\u_riscv_top.wb_icache_err_i ),
    .wb_icache_lack_i(\u_riscv_top.wb_icache_lack_i ),
    .wb_icache_stb_o(\u_riscv_top.wb_icache_stb_o ),
    .wb_icache_we_o(\u_riscv_top.wb_icache_we_o ),
    .wb_rst_n(\u_riscv_top.pwrup_rst_n ),
    .wbd_clk_int(\u_riscv_top.wbd_clk_int ),
    .wbd_clk_riscv(\u_riscv_top.wb_clk ),
    .wbd_dmem_ack_i(\u_riscv_top.wbd_dmem_ack_i ),
    .wbd_dmem_bry_o(\u_riscv_top.wbd_dmem_bry_o ),
    .wbd_dmem_err_i(\u_riscv_top.wbd_dmem_err_i ),
    .wbd_dmem_lack_i(\u_riscv_top.wbd_dmem_lack_i ),
    .wbd_dmem_stb_o(\u_riscv_top.wbd_dmem_stb_o ),
    .wbd_dmem_we_o(\u_riscv_top.wbd_dmem_we_o ),
    .cfg_cska_riscv({\u_riscv_top.cfg_cska_riscv[3] ,
    \u_riscv_top.cfg_cska_riscv[2] ,
    \u_riscv_top.cfg_cska_riscv[1] ,
    \u_riscv_top.cfg_cska_riscv[0] }),
    .cfg_sram_lphase({\cfg_riscv_ctrl[1] ,
    \cfg_riscv_ctrl[0] }),
    .core_dcache_addr({\u_riscv_top.core_dcache_addr[31] ,
    \u_riscv_top.core_dcache_addr[30] ,
    \u_riscv_top.core_dcache_addr[29] ,
    \u_riscv_top.core_dcache_addr[28] ,
    \u_riscv_top.core_dcache_addr[27] ,
    \u_riscv_top.core_dcache_addr[26] ,
    \u_riscv_top.core_dcache_addr[25] ,
    \u_riscv_top.core_dcache_addr[24] ,
    \u_riscv_top.core_dcache_addr[23] ,
    \u_riscv_top.core_dcache_addr[22] ,
    \u_riscv_top.core_dcache_addr[21] ,
    \u_riscv_top.core_dcache_addr[20] ,
    \u_riscv_top.core_dcache_addr[19] ,
    \u_riscv_top.core_dcache_addr[18] ,
    \u_riscv_top.core_dcache_addr[17] ,
    \u_riscv_top.core_dcache_addr[16] ,
    \u_riscv_top.core_dcache_addr[15] ,
    \u_riscv_top.core_dcache_addr[14] ,
    \u_riscv_top.core_dcache_addr[13] ,
    \u_riscv_top.core_dcache_addr[12] ,
    \u_riscv_top.core_dcache_addr[11] ,
    \u_riscv_top.core_dcache_addr[10] ,
    \u_riscv_top.core_dcache_addr[9] ,
    \u_riscv_top.core_dcache_addr[8] ,
    \u_riscv_top.core_dcache_addr[7] ,
    \u_riscv_top.core_dcache_addr[6] ,
    \u_riscv_top.core_dcache_addr[5] ,
    \u_riscv_top.core_dcache_addr[4] ,
    \u_riscv_top.core_dcache_addr[3] ,
    \u_riscv_top.core_dcache_addr[2] ,
    \u_riscv_top.core_dcache_addr[1] ,
    \u_riscv_top.core_dcache_addr[0] }),
    .core_dcache_rdata({\u_riscv_top.core_dcache_rdata[31] ,
    \u_riscv_top.core_dcache_rdata[30] ,
    \u_riscv_top.core_dcache_rdata[29] ,
    \u_riscv_top.core_dcache_rdata[28] ,
    \u_riscv_top.core_dcache_rdata[27] ,
    \u_riscv_top.core_dcache_rdata[26] ,
    \u_riscv_top.core_dcache_rdata[25] ,
    \u_riscv_top.core_dcache_rdata[24] ,
    \u_riscv_top.core_dcache_rdata[23] ,
    \u_riscv_top.core_dcache_rdata[22] ,
    \u_riscv_top.core_dcache_rdata[21] ,
    \u_riscv_top.core_dcache_rdata[20] ,
    \u_riscv_top.core_dcache_rdata[19] ,
    \u_riscv_top.core_dcache_rdata[18] ,
    \u_riscv_top.core_dcache_rdata[17] ,
    \u_riscv_top.core_dcache_rdata[16] ,
    \u_riscv_top.core_dcache_rdata[15] ,
    \u_riscv_top.core_dcache_rdata[14] ,
    \u_riscv_top.core_dcache_rdata[13] ,
    \u_riscv_top.core_dcache_rdata[12] ,
    \u_riscv_top.core_dcache_rdata[11] ,
    \u_riscv_top.core_dcache_rdata[10] ,
    \u_riscv_top.core_dcache_rdata[9] ,
    \u_riscv_top.core_dcache_rdata[8] ,
    \u_riscv_top.core_dcache_rdata[7] ,
    \u_riscv_top.core_dcache_rdata[6] ,
    \u_riscv_top.core_dcache_rdata[5] ,
    \u_riscv_top.core_dcache_rdata[4] ,
    \u_riscv_top.core_dcache_rdata[3] ,
    \u_riscv_top.core_dcache_rdata[2] ,
    \u_riscv_top.core_dcache_rdata[1] ,
    \u_riscv_top.core_dcache_rdata[0] }),
    .core_dcache_resp({\u_riscv_top.core_dcache_resp[1] ,
    \u_riscv_top.core_dcache_resp[0] }),
    .core_dcache_wdata({\u_riscv_top.core_dcache_wdata[31] ,
    \u_riscv_top.core_dcache_wdata[30] ,
    \u_riscv_top.core_dcache_wdata[29] ,
    \u_riscv_top.core_dcache_wdata[28] ,
    \u_riscv_top.core_dcache_wdata[27] ,
    \u_riscv_top.core_dcache_wdata[26] ,
    \u_riscv_top.core_dcache_wdata[25] ,
    \u_riscv_top.core_dcache_wdata[24] ,
    \u_riscv_top.core_dcache_wdata[23] ,
    \u_riscv_top.core_dcache_wdata[22] ,
    \u_riscv_top.core_dcache_wdata[21] ,
    \u_riscv_top.core_dcache_wdata[20] ,
    \u_riscv_top.core_dcache_wdata[19] ,
    \u_riscv_top.core_dcache_wdata[18] ,
    \u_riscv_top.core_dcache_wdata[17] ,
    \u_riscv_top.core_dcache_wdata[16] ,
    \u_riscv_top.core_dcache_wdata[15] ,
    \u_riscv_top.core_dcache_wdata[14] ,
    \u_riscv_top.core_dcache_wdata[13] ,
    \u_riscv_top.core_dcache_wdata[12] ,
    \u_riscv_top.core_dcache_wdata[11] ,
    \u_riscv_top.core_dcache_wdata[10] ,
    \u_riscv_top.core_dcache_wdata[9] ,
    \u_riscv_top.core_dcache_wdata[8] ,
    \u_riscv_top.core_dcache_wdata[7] ,
    \u_riscv_top.core_dcache_wdata[6] ,
    \u_riscv_top.core_dcache_wdata[5] ,
    \u_riscv_top.core_dcache_wdata[4] ,
    \u_riscv_top.core_dcache_wdata[3] ,
    \u_riscv_top.core_dcache_wdata[2] ,
    \u_riscv_top.core_dcache_wdata[1] ,
    \u_riscv_top.core_dcache_wdata[0] }),
    .core_dcache_width({\u_riscv_top.core_dcache_width[1] ,
    \u_riscv_top.core_dcache_width[0] }),
    .core_dmem_addr({\u_riscv_top.core_dmem_addr[31] ,
    \u_riscv_top.core_dmem_addr[30] ,
    \u_riscv_top.core_dmem_addr[29] ,
    \u_riscv_top.core_dmem_addr[28] ,
    \u_riscv_top.core_dmem_addr[27] ,
    \u_riscv_top.core_dmem_addr[26] ,
    \u_riscv_top.core_dmem_addr[25] ,
    \u_riscv_top.core_dmem_addr[24] ,
    \u_riscv_top.core_dmem_addr[23] ,
    \u_riscv_top.core_dmem_addr[22] ,
    \u_riscv_top.core_dmem_addr[21] ,
    \u_riscv_top.core_dmem_addr[20] ,
    \u_riscv_top.core_dmem_addr[19] ,
    \u_riscv_top.core_dmem_addr[18] ,
    \u_riscv_top.core_dmem_addr[17] ,
    \u_riscv_top.core_dmem_addr[16] ,
    \u_riscv_top.core_dmem_addr[15] ,
    \u_riscv_top.core_dmem_addr[14] ,
    \u_riscv_top.core_dmem_addr[13] ,
    \u_riscv_top.core_dmem_addr[12] ,
    \u_riscv_top.core_dmem_addr[11] ,
    \u_riscv_top.core_dmem_addr[10] ,
    \u_riscv_top.core_dmem_addr[9] ,
    \u_riscv_top.core_dmem_addr[8] ,
    \u_riscv_top.core_dmem_addr[7] ,
    \u_riscv_top.core_dmem_addr[6] ,
    \u_riscv_top.core_dmem_addr[5] ,
    \u_riscv_top.core_dmem_addr[4] ,
    \u_riscv_top.core_dmem_addr[3] ,
    \u_riscv_top.core_dmem_addr[2] ,
    \u_riscv_top.core_dmem_addr[1] ,
    \u_riscv_top.core_dmem_addr[0] }),
    .core_dmem_bl({\u_riscv_top.core_dmem_bl[2] ,
    \u_riscv_top.core_dmem_bl[1] ,
    \u_riscv_top.core_dmem_bl[0] }),
    .core_dmem_rdata({\u_riscv_top.core_dmem_rdata[31] ,
    \u_riscv_top.core_dmem_rdata[30] ,
    \u_riscv_top.core_dmem_rdata[29] ,
    \u_riscv_top.core_dmem_rdata[28] ,
    \u_riscv_top.core_dmem_rdata[27] ,
    \u_riscv_top.core_dmem_rdata[26] ,
    \u_riscv_top.core_dmem_rdata[25] ,
    \u_riscv_top.core_dmem_rdata[24] ,
    \u_riscv_top.core_dmem_rdata[23] ,
    \u_riscv_top.core_dmem_rdata[22] ,
    \u_riscv_top.core_dmem_rdata[21] ,
    \u_riscv_top.core_dmem_rdata[20] ,
    \u_riscv_top.core_dmem_rdata[19] ,
    \u_riscv_top.core_dmem_rdata[18] ,
    \u_riscv_top.core_dmem_rdata[17] ,
    \u_riscv_top.core_dmem_rdata[16] ,
    \u_riscv_top.core_dmem_rdata[15] ,
    \u_riscv_top.core_dmem_rdata[14] ,
    \u_riscv_top.core_dmem_rdata[13] ,
    \u_riscv_top.core_dmem_rdata[12] ,
    \u_riscv_top.core_dmem_rdata[11] ,
    \u_riscv_top.core_dmem_rdata[10] ,
    \u_riscv_top.core_dmem_rdata[9] ,
    \u_riscv_top.core_dmem_rdata[8] ,
    \u_riscv_top.core_dmem_rdata[7] ,
    \u_riscv_top.core_dmem_rdata[6] ,
    \u_riscv_top.core_dmem_rdata[5] ,
    \u_riscv_top.core_dmem_rdata[4] ,
    \u_riscv_top.core_dmem_rdata[3] ,
    \u_riscv_top.core_dmem_rdata[2] ,
    \u_riscv_top.core_dmem_rdata[1] ,
    \u_riscv_top.core_dmem_rdata[0] }),
    .core_dmem_resp({\u_riscv_top.core_dmem_resp[1] ,
    \u_riscv_top.core_dmem_resp[0] }),
    .core_dmem_wdata({\u_riscv_top.core_dmem_wdata[31] ,
    \u_riscv_top.core_dmem_wdata[30] ,
    \u_riscv_top.core_dmem_wdata[29] ,
    \u_riscv_top.core_dmem_wdata[28] ,
    \u_riscv_top.core_dmem_wdata[27] ,
    \u_riscv_top.core_dmem_wdata[26] ,
    \u_riscv_top.core_dmem_wdata[25] ,
    \u_riscv_top.core_dmem_wdata[24] ,
    \u_riscv_top.core_dmem_wdata[23] ,
    \u_riscv_top.core_dmem_wdata[22] ,
    \u_riscv_top.core_dmem_wdata[21] ,
    \u_riscv_top.core_dmem_wdata[20] ,
    \u_riscv_top.core_dmem_wdata[19] ,
    \u_riscv_top.core_dmem_wdata[18] ,
    \u_riscv_top.core_dmem_wdata[17] ,
    \u_riscv_top.core_dmem_wdata[16] ,
    \u_riscv_top.core_dmem_wdata[15] ,
    \u_riscv_top.core_dmem_wdata[14] ,
    \u_riscv_top.core_dmem_wdata[13] ,
    \u_riscv_top.core_dmem_wdata[12] ,
    \u_riscv_top.core_dmem_wdata[11] ,
    \u_riscv_top.core_dmem_wdata[10] ,
    \u_riscv_top.core_dmem_wdata[9] ,
    \u_riscv_top.core_dmem_wdata[8] ,
    \u_riscv_top.core_dmem_wdata[7] ,
    \u_riscv_top.core_dmem_wdata[6] ,
    \u_riscv_top.core_dmem_wdata[5] ,
    \u_riscv_top.core_dmem_wdata[4] ,
    \u_riscv_top.core_dmem_wdata[3] ,
    \u_riscv_top.core_dmem_wdata[2] ,
    \u_riscv_top.core_dmem_wdata[1] ,
    \u_riscv_top.core_dmem_wdata[0] }),
    .core_dmem_width({\u_riscv_top.core_dmem_width[1] ,
    \u_riscv_top.core_dmem_width[0] }),
    .core_icache_addr({\u_riscv_top.core_icache_addr[31] ,
    \u_riscv_top.core_icache_addr[30] ,
    \u_riscv_top.core_icache_addr[29] ,
    \u_riscv_top.core_icache_addr[28] ,
    \u_riscv_top.core_icache_addr[27] ,
    \u_riscv_top.core_icache_addr[26] ,
    \u_riscv_top.core_icache_addr[25] ,
    \u_riscv_top.core_icache_addr[24] ,
    \u_riscv_top.core_icache_addr[23] ,
    \u_riscv_top.core_icache_addr[22] ,
    \u_riscv_top.core_icache_addr[21] ,
    \u_riscv_top.core_icache_addr[20] ,
    \u_riscv_top.core_icache_addr[19] ,
    \u_riscv_top.core_icache_addr[18] ,
    \u_riscv_top.core_icache_addr[17] ,
    \u_riscv_top.core_icache_addr[16] ,
    \u_riscv_top.core_icache_addr[15] ,
    \u_riscv_top.core_icache_addr[14] ,
    \u_riscv_top.core_icache_addr[13] ,
    \u_riscv_top.core_icache_addr[12] ,
    \u_riscv_top.core_icache_addr[11] ,
    \u_riscv_top.core_icache_addr[10] ,
    \u_riscv_top.core_icache_addr[9] ,
    \u_riscv_top.core_icache_addr[8] ,
    \u_riscv_top.core_icache_addr[7] ,
    \u_riscv_top.core_icache_addr[6] ,
    \u_riscv_top.core_icache_addr[5] ,
    \u_riscv_top.core_icache_addr[4] ,
    \u_riscv_top.core_icache_addr[3] ,
    \u_riscv_top.core_icache_addr[2] ,
    \u_riscv_top.core_icache_addr[1] ,
    \u_riscv_top.core_icache_addr[0] }),
    .core_icache_bl({\u_riscv_top.core_icache_bl[2] ,
    \u_riscv_top.core_icache_bl[1] ,
    \u_riscv_top.core_icache_bl[0] }),
    .core_icache_rdata({\u_riscv_top.core_icache_rdata[31] ,
    \u_riscv_top.core_icache_rdata[30] ,
    \u_riscv_top.core_icache_rdata[29] ,
    \u_riscv_top.core_icache_rdata[28] ,
    \u_riscv_top.core_icache_rdata[27] ,
    \u_riscv_top.core_icache_rdata[26] ,
    \u_riscv_top.core_icache_rdata[25] ,
    \u_riscv_top.core_icache_rdata[24] ,
    \u_riscv_top.core_icache_rdata[23] ,
    \u_riscv_top.core_icache_rdata[22] ,
    \u_riscv_top.core_icache_rdata[21] ,
    \u_riscv_top.core_icache_rdata[20] ,
    \u_riscv_top.core_icache_rdata[19] ,
    \u_riscv_top.core_icache_rdata[18] ,
    \u_riscv_top.core_icache_rdata[17] ,
    \u_riscv_top.core_icache_rdata[16] ,
    \u_riscv_top.core_icache_rdata[15] ,
    \u_riscv_top.core_icache_rdata[14] ,
    \u_riscv_top.core_icache_rdata[13] ,
    \u_riscv_top.core_icache_rdata[12] ,
    \u_riscv_top.core_icache_rdata[11] ,
    \u_riscv_top.core_icache_rdata[10] ,
    \u_riscv_top.core_icache_rdata[9] ,
    \u_riscv_top.core_icache_rdata[8] ,
    \u_riscv_top.core_icache_rdata[7] ,
    \u_riscv_top.core_icache_rdata[6] ,
    \u_riscv_top.core_icache_rdata[5] ,
    \u_riscv_top.core_icache_rdata[4] ,
    \u_riscv_top.core_icache_rdata[3] ,
    \u_riscv_top.core_icache_rdata[2] ,
    \u_riscv_top.core_icache_rdata[1] ,
    \u_riscv_top.core_icache_rdata[0] }),
    .core_icache_resp({\u_riscv_top.core_icache_resp[1] ,
    \u_riscv_top.core_icache_resp[0] }),
    .core_icache_width({\u_riscv_top.core_icache_width[1] ,
    \u_riscv_top.core_icache_width[0] }),
    .dcache_mem_addr0({\u_riscv_top.dcache_mem_addr0[8] ,
    \u_riscv_top.dcache_mem_addr0[7] ,
    \u_riscv_top.dcache_mem_addr0[6] ,
    \u_riscv_top.dcache_mem_addr0[5] ,
    \u_riscv_top.dcache_mem_addr0[4] ,
    \u_riscv_top.dcache_mem_addr0[3] ,
    \u_riscv_top.dcache_mem_addr0[2] ,
    \u_riscv_top.dcache_mem_addr0[1] ,
    \u_riscv_top.dcache_mem_addr0[0] }),
    .dcache_mem_addr1({\u_riscv_top.dcache_mem_addr1[8] ,
    \u_riscv_top.dcache_mem_addr1[7] ,
    \u_riscv_top.dcache_mem_addr1[6] ,
    \u_riscv_top.dcache_mem_addr1[5] ,
    \u_riscv_top.dcache_mem_addr1[4] ,
    \u_riscv_top.dcache_mem_addr1[3] ,
    \u_riscv_top.dcache_mem_addr1[2] ,
    \u_riscv_top.dcache_mem_addr1[1] ,
    \u_riscv_top.dcache_mem_addr1[0] }),
    .dcache_mem_din0({\u_riscv_top.dcache_mem_din0[31] ,
    \u_riscv_top.dcache_mem_din0[30] ,
    \u_riscv_top.dcache_mem_din0[29] ,
    \u_riscv_top.dcache_mem_din0[28] ,
    \u_riscv_top.dcache_mem_din0[27] ,
    \u_riscv_top.dcache_mem_din0[26] ,
    \u_riscv_top.dcache_mem_din0[25] ,
    \u_riscv_top.dcache_mem_din0[24] ,
    \u_riscv_top.dcache_mem_din0[23] ,
    \u_riscv_top.dcache_mem_din0[22] ,
    \u_riscv_top.dcache_mem_din0[21] ,
    \u_riscv_top.dcache_mem_din0[20] ,
    \u_riscv_top.dcache_mem_din0[19] ,
    \u_riscv_top.dcache_mem_din0[18] ,
    \u_riscv_top.dcache_mem_din0[17] ,
    \u_riscv_top.dcache_mem_din0[16] ,
    \u_riscv_top.dcache_mem_din0[15] ,
    \u_riscv_top.dcache_mem_din0[14] ,
    \u_riscv_top.dcache_mem_din0[13] ,
    \u_riscv_top.dcache_mem_din0[12] ,
    \u_riscv_top.dcache_mem_din0[11] ,
    \u_riscv_top.dcache_mem_din0[10] ,
    \u_riscv_top.dcache_mem_din0[9] ,
    \u_riscv_top.dcache_mem_din0[8] ,
    \u_riscv_top.dcache_mem_din0[7] ,
    \u_riscv_top.dcache_mem_din0[6] ,
    \u_riscv_top.dcache_mem_din0[5] ,
    \u_riscv_top.dcache_mem_din0[4] ,
    \u_riscv_top.dcache_mem_din0[3] ,
    \u_riscv_top.dcache_mem_din0[2] ,
    \u_riscv_top.dcache_mem_din0[1] ,
    \u_riscv_top.dcache_mem_din0[0] }),
    .dcache_mem_dout0({\u_riscv_top.dcache_mem_dout0[31] ,
    \u_riscv_top.dcache_mem_dout0[30] ,
    \u_riscv_top.dcache_mem_dout0[29] ,
    \u_riscv_top.dcache_mem_dout0[28] ,
    \u_riscv_top.dcache_mem_dout0[27] ,
    \u_riscv_top.dcache_mem_dout0[26] ,
    \u_riscv_top.dcache_mem_dout0[25] ,
    \u_riscv_top.dcache_mem_dout0[24] ,
    \u_riscv_top.dcache_mem_dout0[23] ,
    \u_riscv_top.dcache_mem_dout0[22] ,
    \u_riscv_top.dcache_mem_dout0[21] ,
    \u_riscv_top.dcache_mem_dout0[20] ,
    \u_riscv_top.dcache_mem_dout0[19] ,
    \u_riscv_top.dcache_mem_dout0[18] ,
    \u_riscv_top.dcache_mem_dout0[17] ,
    \u_riscv_top.dcache_mem_dout0[16] ,
    \u_riscv_top.dcache_mem_dout0[15] ,
    \u_riscv_top.dcache_mem_dout0[14] ,
    \u_riscv_top.dcache_mem_dout0[13] ,
    \u_riscv_top.dcache_mem_dout0[12] ,
    \u_riscv_top.dcache_mem_dout0[11] ,
    \u_riscv_top.dcache_mem_dout0[10] ,
    \u_riscv_top.dcache_mem_dout0[9] ,
    \u_riscv_top.dcache_mem_dout0[8] ,
    \u_riscv_top.dcache_mem_dout0[7] ,
    \u_riscv_top.dcache_mem_dout0[6] ,
    \u_riscv_top.dcache_mem_dout0[5] ,
    \u_riscv_top.dcache_mem_dout0[4] ,
    \u_riscv_top.dcache_mem_dout0[3] ,
    \u_riscv_top.dcache_mem_dout0[2] ,
    \u_riscv_top.dcache_mem_dout0[1] ,
    \u_riscv_top.dcache_mem_dout0[0] }),
    .dcache_mem_dout1({\u_riscv_top.dcache_mem_dout1[31] ,
    \u_riscv_top.dcache_mem_dout1[30] ,
    \u_riscv_top.dcache_mem_dout1[29] ,
    \u_riscv_top.dcache_mem_dout1[28] ,
    \u_riscv_top.dcache_mem_dout1[27] ,
    \u_riscv_top.dcache_mem_dout1[26] ,
    \u_riscv_top.dcache_mem_dout1[25] ,
    \u_riscv_top.dcache_mem_dout1[24] ,
    \u_riscv_top.dcache_mem_dout1[23] ,
    \u_riscv_top.dcache_mem_dout1[22] ,
    \u_riscv_top.dcache_mem_dout1[21] ,
    \u_riscv_top.dcache_mem_dout1[20] ,
    \u_riscv_top.dcache_mem_dout1[19] ,
    \u_riscv_top.dcache_mem_dout1[18] ,
    \u_riscv_top.dcache_mem_dout1[17] ,
    \u_riscv_top.dcache_mem_dout1[16] ,
    \u_riscv_top.dcache_mem_dout1[15] ,
    \u_riscv_top.dcache_mem_dout1[14] ,
    \u_riscv_top.dcache_mem_dout1[13] ,
    \u_riscv_top.dcache_mem_dout1[12] ,
    \u_riscv_top.dcache_mem_dout1[11] ,
    \u_riscv_top.dcache_mem_dout1[10] ,
    \u_riscv_top.dcache_mem_dout1[9] ,
    \u_riscv_top.dcache_mem_dout1[8] ,
    \u_riscv_top.dcache_mem_dout1[7] ,
    \u_riscv_top.dcache_mem_dout1[6] ,
    \u_riscv_top.dcache_mem_dout1[5] ,
    \u_riscv_top.dcache_mem_dout1[4] ,
    \u_riscv_top.dcache_mem_dout1[3] ,
    \u_riscv_top.dcache_mem_dout1[2] ,
    \u_riscv_top.dcache_mem_dout1[1] ,
    \u_riscv_top.dcache_mem_dout1[0] }),
    .dcache_mem_wmask0({\u_riscv_top.dcache_mem_wmask0[3] ,
    \u_riscv_top.dcache_mem_wmask0[2] ,
    \u_riscv_top.dcache_mem_wmask0[1] ,
    \u_riscv_top.dcache_mem_wmask0[0] }),
    .icache_mem_addr0({\u_riscv_top.icache_mem_addr0[8] ,
    \u_riscv_top.icache_mem_addr0[7] ,
    \u_riscv_top.icache_mem_addr0[6] ,
    \u_riscv_top.icache_mem_addr0[5] ,
    \u_riscv_top.icache_mem_addr0[4] ,
    \u_riscv_top.icache_mem_addr0[3] ,
    \u_riscv_top.icache_mem_addr0[2] ,
    \u_riscv_top.icache_mem_addr0[1] ,
    \u_riscv_top.icache_mem_addr0[0] }),
    .icache_mem_addr1({\u_riscv_top.icache_mem_addr1[8] ,
    \u_riscv_top.icache_mem_addr1[7] ,
    \u_riscv_top.icache_mem_addr1[6] ,
    \u_riscv_top.icache_mem_addr1[5] ,
    \u_riscv_top.icache_mem_addr1[4] ,
    \u_riscv_top.icache_mem_addr1[3] ,
    \u_riscv_top.icache_mem_addr1[2] ,
    \u_riscv_top.icache_mem_addr1[1] ,
    \u_riscv_top.icache_mem_addr1[0] }),
    .icache_mem_din0({\u_riscv_top.icache_mem_din0[31] ,
    \u_riscv_top.icache_mem_din0[30] ,
    \u_riscv_top.icache_mem_din0[29] ,
    \u_riscv_top.icache_mem_din0[28] ,
    \u_riscv_top.icache_mem_din0[27] ,
    \u_riscv_top.icache_mem_din0[26] ,
    \u_riscv_top.icache_mem_din0[25] ,
    \u_riscv_top.icache_mem_din0[24] ,
    \u_riscv_top.icache_mem_din0[23] ,
    \u_riscv_top.icache_mem_din0[22] ,
    \u_riscv_top.icache_mem_din0[21] ,
    \u_riscv_top.icache_mem_din0[20] ,
    \u_riscv_top.icache_mem_din0[19] ,
    \u_riscv_top.icache_mem_din0[18] ,
    \u_riscv_top.icache_mem_din0[17] ,
    \u_riscv_top.icache_mem_din0[16] ,
    \u_riscv_top.icache_mem_din0[15] ,
    \u_riscv_top.icache_mem_din0[14] ,
    \u_riscv_top.icache_mem_din0[13] ,
    \u_riscv_top.icache_mem_din0[12] ,
    \u_riscv_top.icache_mem_din0[11] ,
    \u_riscv_top.icache_mem_din0[10] ,
    \u_riscv_top.icache_mem_din0[9] ,
    \u_riscv_top.icache_mem_din0[8] ,
    \u_riscv_top.icache_mem_din0[7] ,
    \u_riscv_top.icache_mem_din0[6] ,
    \u_riscv_top.icache_mem_din0[5] ,
    \u_riscv_top.icache_mem_din0[4] ,
    \u_riscv_top.icache_mem_din0[3] ,
    \u_riscv_top.icache_mem_din0[2] ,
    \u_riscv_top.icache_mem_din0[1] ,
    \u_riscv_top.icache_mem_din0[0] }),
    .icache_mem_dout1({\u_riscv_top.icache_mem_dout1[31] ,
    \u_riscv_top.icache_mem_dout1[30] ,
    \u_riscv_top.icache_mem_dout1[29] ,
    \u_riscv_top.icache_mem_dout1[28] ,
    \u_riscv_top.icache_mem_dout1[27] ,
    \u_riscv_top.icache_mem_dout1[26] ,
    \u_riscv_top.icache_mem_dout1[25] ,
    \u_riscv_top.icache_mem_dout1[24] ,
    \u_riscv_top.icache_mem_dout1[23] ,
    \u_riscv_top.icache_mem_dout1[22] ,
    \u_riscv_top.icache_mem_dout1[21] ,
    \u_riscv_top.icache_mem_dout1[20] ,
    \u_riscv_top.icache_mem_dout1[19] ,
    \u_riscv_top.icache_mem_dout1[18] ,
    \u_riscv_top.icache_mem_dout1[17] ,
    \u_riscv_top.icache_mem_dout1[16] ,
    \u_riscv_top.icache_mem_dout1[15] ,
    \u_riscv_top.icache_mem_dout1[14] ,
    \u_riscv_top.icache_mem_dout1[13] ,
    \u_riscv_top.icache_mem_dout1[12] ,
    \u_riscv_top.icache_mem_dout1[11] ,
    \u_riscv_top.icache_mem_dout1[10] ,
    \u_riscv_top.icache_mem_dout1[9] ,
    \u_riscv_top.icache_mem_dout1[8] ,
    \u_riscv_top.icache_mem_dout1[7] ,
    \u_riscv_top.icache_mem_dout1[6] ,
    \u_riscv_top.icache_mem_dout1[5] ,
    \u_riscv_top.icache_mem_dout1[4] ,
    \u_riscv_top.icache_mem_dout1[3] ,
    \u_riscv_top.icache_mem_dout1[2] ,
    \u_riscv_top.icache_mem_dout1[1] ,
    \u_riscv_top.icache_mem_dout1[0] }),
    .icache_mem_wmask0({\u_riscv_top.icache_mem_wmask0[3] ,
    \u_riscv_top.icache_mem_wmask0[2] ,
    \u_riscv_top.icache_mem_wmask0[1] ,
    \u_riscv_top.icache_mem_wmask0[0] }),
    .wb_dcache_adr_o({\u_riscv_top.wb_dcache_adr_o[31] ,
    \u_riscv_top.wb_dcache_adr_o[30] ,
    \u_riscv_top.wb_dcache_adr_o[29] ,
    \u_riscv_top.wb_dcache_adr_o[28] ,
    \u_riscv_top.wb_dcache_adr_o[27] ,
    \u_riscv_top.wb_dcache_adr_o[26] ,
    \u_riscv_top.wb_dcache_adr_o[25] ,
    \u_riscv_top.wb_dcache_adr_o[24] ,
    \u_riscv_top.wb_dcache_adr_o[23] ,
    \u_riscv_top.wb_dcache_adr_o[22] ,
    \u_riscv_top.wb_dcache_adr_o[21] ,
    \u_riscv_top.wb_dcache_adr_o[20] ,
    \u_riscv_top.wb_dcache_adr_o[19] ,
    \u_riscv_top.wb_dcache_adr_o[18] ,
    \u_riscv_top.wb_dcache_adr_o[17] ,
    \u_riscv_top.wb_dcache_adr_o[16] ,
    \u_riscv_top.wb_dcache_adr_o[15] ,
    \u_riscv_top.wb_dcache_adr_o[14] ,
    \u_riscv_top.wb_dcache_adr_o[13] ,
    \u_riscv_top.wb_dcache_adr_o[12] ,
    \u_riscv_top.wb_dcache_adr_o[11] ,
    \u_riscv_top.wb_dcache_adr_o[10] ,
    \u_riscv_top.wb_dcache_adr_o[9] ,
    \u_riscv_top.wb_dcache_adr_o[8] ,
    \u_riscv_top.wb_dcache_adr_o[7] ,
    \u_riscv_top.wb_dcache_adr_o[6] ,
    \u_riscv_top.wb_dcache_adr_o[5] ,
    \u_riscv_top.wb_dcache_adr_o[4] ,
    \u_riscv_top.wb_dcache_adr_o[3] ,
    \u_riscv_top.wb_dcache_adr_o[2] ,
    \u_riscv_top.wb_dcache_adr_o[1] ,
    \u_riscv_top.wb_dcache_adr_o[0] }),
    .wb_dcache_bl_o({\u_riscv_top.wb_dcache_bl_o[9] ,
    \u_riscv_top.wb_dcache_bl_o[8] ,
    \u_riscv_top.wb_dcache_bl_o[7] ,
    \u_riscv_top.wb_dcache_bl_o[6] ,
    \u_riscv_top.wb_dcache_bl_o[5] ,
    \u_riscv_top.wb_dcache_bl_o[4] ,
    \u_riscv_top.wb_dcache_bl_o[3] ,
    \u_riscv_top.wb_dcache_bl_o[2] ,
    \u_riscv_top.wb_dcache_bl_o[1] ,
    \u_riscv_top.wb_dcache_bl_o[0] }),
    .wb_dcache_dat_i({\u_riscv_top.wb_dcache_dat_i[31] ,
    \u_riscv_top.wb_dcache_dat_i[30] ,
    \u_riscv_top.wb_dcache_dat_i[29] ,
    \u_riscv_top.wb_dcache_dat_i[28] ,
    \u_riscv_top.wb_dcache_dat_i[27] ,
    \u_riscv_top.wb_dcache_dat_i[26] ,
    \u_riscv_top.wb_dcache_dat_i[25] ,
    \u_riscv_top.wb_dcache_dat_i[24] ,
    \u_riscv_top.wb_dcache_dat_i[23] ,
    \u_riscv_top.wb_dcache_dat_i[22] ,
    \u_riscv_top.wb_dcache_dat_i[21] ,
    \u_riscv_top.wb_dcache_dat_i[20] ,
    \u_riscv_top.wb_dcache_dat_i[19] ,
    \u_riscv_top.wb_dcache_dat_i[18] ,
    \u_riscv_top.wb_dcache_dat_i[17] ,
    \u_riscv_top.wb_dcache_dat_i[16] ,
    \u_riscv_top.wb_dcache_dat_i[15] ,
    \u_riscv_top.wb_dcache_dat_i[14] ,
    \u_riscv_top.wb_dcache_dat_i[13] ,
    \u_riscv_top.wb_dcache_dat_i[12] ,
    \u_riscv_top.wb_dcache_dat_i[11] ,
    \u_riscv_top.wb_dcache_dat_i[10] ,
    \u_riscv_top.wb_dcache_dat_i[9] ,
    \u_riscv_top.wb_dcache_dat_i[8] ,
    \u_riscv_top.wb_dcache_dat_i[7] ,
    \u_riscv_top.wb_dcache_dat_i[6] ,
    \u_riscv_top.wb_dcache_dat_i[5] ,
    \u_riscv_top.wb_dcache_dat_i[4] ,
    \u_riscv_top.wb_dcache_dat_i[3] ,
    \u_riscv_top.wb_dcache_dat_i[2] ,
    \u_riscv_top.wb_dcache_dat_i[1] ,
    \u_riscv_top.wb_dcache_dat_i[0] }),
    .wb_dcache_dat_o({\u_riscv_top.wb_dcache_dat_o[31] ,
    \u_riscv_top.wb_dcache_dat_o[30] ,
    \u_riscv_top.wb_dcache_dat_o[29] ,
    \u_riscv_top.wb_dcache_dat_o[28] ,
    \u_riscv_top.wb_dcache_dat_o[27] ,
    \u_riscv_top.wb_dcache_dat_o[26] ,
    \u_riscv_top.wb_dcache_dat_o[25] ,
    \u_riscv_top.wb_dcache_dat_o[24] ,
    \u_riscv_top.wb_dcache_dat_o[23] ,
    \u_riscv_top.wb_dcache_dat_o[22] ,
    \u_riscv_top.wb_dcache_dat_o[21] ,
    \u_riscv_top.wb_dcache_dat_o[20] ,
    \u_riscv_top.wb_dcache_dat_o[19] ,
    \u_riscv_top.wb_dcache_dat_o[18] ,
    \u_riscv_top.wb_dcache_dat_o[17] ,
    \u_riscv_top.wb_dcache_dat_o[16] ,
    \u_riscv_top.wb_dcache_dat_o[15] ,
    \u_riscv_top.wb_dcache_dat_o[14] ,
    \u_riscv_top.wb_dcache_dat_o[13] ,
    \u_riscv_top.wb_dcache_dat_o[12] ,
    \u_riscv_top.wb_dcache_dat_o[11] ,
    \u_riscv_top.wb_dcache_dat_o[10] ,
    \u_riscv_top.wb_dcache_dat_o[9] ,
    \u_riscv_top.wb_dcache_dat_o[8] ,
    \u_riscv_top.wb_dcache_dat_o[7] ,
    \u_riscv_top.wb_dcache_dat_o[6] ,
    \u_riscv_top.wb_dcache_dat_o[5] ,
    \u_riscv_top.wb_dcache_dat_o[4] ,
    \u_riscv_top.wb_dcache_dat_o[3] ,
    \u_riscv_top.wb_dcache_dat_o[2] ,
    \u_riscv_top.wb_dcache_dat_o[1] ,
    \u_riscv_top.wb_dcache_dat_o[0] }),
    .wb_dcache_sel_o({\u_riscv_top.wb_dcache_sel_o[3] ,
    \u_riscv_top.wb_dcache_sel_o[2] ,
    \u_riscv_top.wb_dcache_sel_o[1] ,
    \u_riscv_top.wb_dcache_sel_o[0] }),
    .wb_icache_adr_o({\u_riscv_top.wb_icache_adr_o[31] ,
    \u_riscv_top.wb_icache_adr_o[30] ,
    \u_riscv_top.wb_icache_adr_o[29] ,
    \u_riscv_top.wb_icache_adr_o[28] ,
    \u_riscv_top.wb_icache_adr_o[27] ,
    \u_riscv_top.wb_icache_adr_o[26] ,
    \u_riscv_top.wb_icache_adr_o[25] ,
    \u_riscv_top.wb_icache_adr_o[24] ,
    \u_riscv_top.wb_icache_adr_o[23] ,
    \u_riscv_top.wb_icache_adr_o[22] ,
    \u_riscv_top.wb_icache_adr_o[21] ,
    \u_riscv_top.wb_icache_adr_o[20] ,
    \u_riscv_top.wb_icache_adr_o[19] ,
    \u_riscv_top.wb_icache_adr_o[18] ,
    \u_riscv_top.wb_icache_adr_o[17] ,
    \u_riscv_top.wb_icache_adr_o[16] ,
    \u_riscv_top.wb_icache_adr_o[15] ,
    \u_riscv_top.wb_icache_adr_o[14] ,
    \u_riscv_top.wb_icache_adr_o[13] ,
    \u_riscv_top.wb_icache_adr_o[12] ,
    \u_riscv_top.wb_icache_adr_o[11] ,
    \u_riscv_top.wb_icache_adr_o[10] ,
    \u_riscv_top.wb_icache_adr_o[9] ,
    \u_riscv_top.wb_icache_adr_o[8] ,
    \u_riscv_top.wb_icache_adr_o[7] ,
    \u_riscv_top.wb_icache_adr_o[6] ,
    \u_riscv_top.wb_icache_adr_o[5] ,
    \u_riscv_top.wb_icache_adr_o[4] ,
    \u_riscv_top.wb_icache_adr_o[3] ,
    \u_riscv_top.wb_icache_adr_o[2] ,
    \u_riscv_top.wb_icache_adr_o[1] ,
    \u_riscv_top.wb_icache_adr_o[0] }),
    .wb_icache_bl_o({\u_riscv_top.wb_icache_bl_o[9] ,
    \u_riscv_top.wb_icache_bl_o[8] ,
    \u_riscv_top.wb_icache_bl_o[7] ,
    \u_riscv_top.wb_icache_bl_o[6] ,
    \u_riscv_top.wb_icache_bl_o[5] ,
    \u_riscv_top.wb_icache_bl_o[4] ,
    \u_riscv_top.wb_icache_bl_o[3] ,
    \u_riscv_top.wb_icache_bl_o[2] ,
    \u_riscv_top.wb_icache_bl_o[1] ,
    \u_riscv_top.wb_icache_bl_o[0] }),
    .wb_icache_dat_i({\u_riscv_top.wb_icache_dat_i[31] ,
    \u_riscv_top.wb_icache_dat_i[30] ,
    \u_riscv_top.wb_icache_dat_i[29] ,
    \u_riscv_top.wb_icache_dat_i[28] ,
    \u_riscv_top.wb_icache_dat_i[27] ,
    \u_riscv_top.wb_icache_dat_i[26] ,
    \u_riscv_top.wb_icache_dat_i[25] ,
    \u_riscv_top.wb_icache_dat_i[24] ,
    \u_riscv_top.wb_icache_dat_i[23] ,
    \u_riscv_top.wb_icache_dat_i[22] ,
    \u_riscv_top.wb_icache_dat_i[21] ,
    \u_riscv_top.wb_icache_dat_i[20] ,
    \u_riscv_top.wb_icache_dat_i[19] ,
    \u_riscv_top.wb_icache_dat_i[18] ,
    \u_riscv_top.wb_icache_dat_i[17] ,
    \u_riscv_top.wb_icache_dat_i[16] ,
    \u_riscv_top.wb_icache_dat_i[15] ,
    \u_riscv_top.wb_icache_dat_i[14] ,
    \u_riscv_top.wb_icache_dat_i[13] ,
    \u_riscv_top.wb_icache_dat_i[12] ,
    \u_riscv_top.wb_icache_dat_i[11] ,
    \u_riscv_top.wb_icache_dat_i[10] ,
    \u_riscv_top.wb_icache_dat_i[9] ,
    \u_riscv_top.wb_icache_dat_i[8] ,
    \u_riscv_top.wb_icache_dat_i[7] ,
    \u_riscv_top.wb_icache_dat_i[6] ,
    \u_riscv_top.wb_icache_dat_i[5] ,
    \u_riscv_top.wb_icache_dat_i[4] ,
    \u_riscv_top.wb_icache_dat_i[3] ,
    \u_riscv_top.wb_icache_dat_i[2] ,
    \u_riscv_top.wb_icache_dat_i[1] ,
    \u_riscv_top.wb_icache_dat_i[0] }),
    .wb_icache_sel_o({\u_riscv_top.wb_icache_sel_o[3] ,
    \u_riscv_top.wb_icache_sel_o[2] ,
    \u_riscv_top.wb_icache_sel_o[1] ,
    \u_riscv_top.wb_icache_sel_o[0] }),
    .wbd_dmem_adr_o({\u_riscv_top.wbd_dmem_adr_o[31] ,
    \u_riscv_top.wbd_dmem_adr_o[30] ,
    \u_riscv_top.wbd_dmem_adr_o[29] ,
    \u_riscv_top.wbd_dmem_adr_o[28] ,
    \u_riscv_top.wbd_dmem_adr_o[27] ,
    \u_riscv_top.wbd_dmem_adr_o[26] ,
    \u_riscv_top.wbd_dmem_adr_o[25] ,
    \u_riscv_top.wbd_dmem_adr_o[24] ,
    \u_riscv_top.wbd_dmem_adr_o[23] ,
    \u_riscv_top.wbd_dmem_adr_o[22] ,
    \u_riscv_top.wbd_dmem_adr_o[21] ,
    \u_riscv_top.wbd_dmem_adr_o[20] ,
    \u_riscv_top.wbd_dmem_adr_o[19] ,
    \u_riscv_top.wbd_dmem_adr_o[18] ,
    \u_riscv_top.wbd_dmem_adr_o[17] ,
    \u_riscv_top.wbd_dmem_adr_o[16] ,
    \u_riscv_top.wbd_dmem_adr_o[15] ,
    \u_riscv_top.wbd_dmem_adr_o[14] ,
    \u_riscv_top.wbd_dmem_adr_o[13] ,
    \u_riscv_top.wbd_dmem_adr_o[12] ,
    \u_riscv_top.wbd_dmem_adr_o[11] ,
    \u_riscv_top.wbd_dmem_adr_o[10] ,
    \u_riscv_top.wbd_dmem_adr_o[9] ,
    \u_riscv_top.wbd_dmem_adr_o[8] ,
    \u_riscv_top.wbd_dmem_adr_o[7] ,
    \u_riscv_top.wbd_dmem_adr_o[6] ,
    \u_riscv_top.wbd_dmem_adr_o[5] ,
    \u_riscv_top.wbd_dmem_adr_o[4] ,
    \u_riscv_top.wbd_dmem_adr_o[3] ,
    \u_riscv_top.wbd_dmem_adr_o[2] ,
    \u_riscv_top.wbd_dmem_adr_o[1] ,
    \u_riscv_top.wbd_dmem_adr_o[0] }),
    .wbd_dmem_bl_o({\u_riscv_top.wbd_dmem_bl_o[2] ,
    \u_riscv_top.wbd_dmem_bl_o[1] ,
    \u_riscv_top.wbd_dmem_bl_o[0] }),
    .wbd_dmem_dat_i({\u_riscv_top.wbd_dmem_dat_i[31] ,
    \u_riscv_top.wbd_dmem_dat_i[30] ,
    \u_riscv_top.wbd_dmem_dat_i[29] ,
    \u_riscv_top.wbd_dmem_dat_i[28] ,
    \u_riscv_top.wbd_dmem_dat_i[27] ,
    \u_riscv_top.wbd_dmem_dat_i[26] ,
    \u_riscv_top.wbd_dmem_dat_i[25] ,
    \u_riscv_top.wbd_dmem_dat_i[24] ,
    \u_riscv_top.wbd_dmem_dat_i[23] ,
    \u_riscv_top.wbd_dmem_dat_i[22] ,
    \u_riscv_top.wbd_dmem_dat_i[21] ,
    \u_riscv_top.wbd_dmem_dat_i[20] ,
    \u_riscv_top.wbd_dmem_dat_i[19] ,
    \u_riscv_top.wbd_dmem_dat_i[18] ,
    \u_riscv_top.wbd_dmem_dat_i[17] ,
    \u_riscv_top.wbd_dmem_dat_i[16] ,
    \u_riscv_top.wbd_dmem_dat_i[15] ,
    \u_riscv_top.wbd_dmem_dat_i[14] ,
    \u_riscv_top.wbd_dmem_dat_i[13] ,
    \u_riscv_top.wbd_dmem_dat_i[12] ,
    \u_riscv_top.wbd_dmem_dat_i[11] ,
    \u_riscv_top.wbd_dmem_dat_i[10] ,
    \u_riscv_top.wbd_dmem_dat_i[9] ,
    \u_riscv_top.wbd_dmem_dat_i[8] ,
    \u_riscv_top.wbd_dmem_dat_i[7] ,
    \u_riscv_top.wbd_dmem_dat_i[6] ,
    \u_riscv_top.wbd_dmem_dat_i[5] ,
    \u_riscv_top.wbd_dmem_dat_i[4] ,
    \u_riscv_top.wbd_dmem_dat_i[3] ,
    \u_riscv_top.wbd_dmem_dat_i[2] ,
    \u_riscv_top.wbd_dmem_dat_i[1] ,
    \u_riscv_top.wbd_dmem_dat_i[0] }),
    .wbd_dmem_dat_o({\u_riscv_top.wbd_dmem_dat_o[31] ,
    \u_riscv_top.wbd_dmem_dat_o[30] ,
    \u_riscv_top.wbd_dmem_dat_o[29] ,
    \u_riscv_top.wbd_dmem_dat_o[28] ,
    \u_riscv_top.wbd_dmem_dat_o[27] ,
    \u_riscv_top.wbd_dmem_dat_o[26] ,
    \u_riscv_top.wbd_dmem_dat_o[25] ,
    \u_riscv_top.wbd_dmem_dat_o[24] ,
    \u_riscv_top.wbd_dmem_dat_o[23] ,
    \u_riscv_top.wbd_dmem_dat_o[22] ,
    \u_riscv_top.wbd_dmem_dat_o[21] ,
    \u_riscv_top.wbd_dmem_dat_o[20] ,
    \u_riscv_top.wbd_dmem_dat_o[19] ,
    \u_riscv_top.wbd_dmem_dat_o[18] ,
    \u_riscv_top.wbd_dmem_dat_o[17] ,
    \u_riscv_top.wbd_dmem_dat_o[16] ,
    \u_riscv_top.wbd_dmem_dat_o[15] ,
    \u_riscv_top.wbd_dmem_dat_o[14] ,
    \u_riscv_top.wbd_dmem_dat_o[13] ,
    \u_riscv_top.wbd_dmem_dat_o[12] ,
    \u_riscv_top.wbd_dmem_dat_o[11] ,
    \u_riscv_top.wbd_dmem_dat_o[10] ,
    \u_riscv_top.wbd_dmem_dat_o[9] ,
    \u_riscv_top.wbd_dmem_dat_o[8] ,
    \u_riscv_top.wbd_dmem_dat_o[7] ,
    \u_riscv_top.wbd_dmem_dat_o[6] ,
    \u_riscv_top.wbd_dmem_dat_o[5] ,
    \u_riscv_top.wbd_dmem_dat_o[4] ,
    \u_riscv_top.wbd_dmem_dat_o[3] ,
    \u_riscv_top.wbd_dmem_dat_o[2] ,
    \u_riscv_top.wbd_dmem_dat_o[1] ,
    \u_riscv_top.wbd_dmem_dat_o[0] }),
    .wbd_dmem_sel_o({\u_riscv_top.wbd_dmem_sel_o[3] ,
    \u_riscv_top.wbd_dmem_sel_o[2] ,
    \u_riscv_top.wbd_dmem_sel_o[1] ,
    \u_riscv_top.wbd_dmem_sel_o[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 u_tsram0_2kb (.csb0(\u_riscv_top.sram0_csb0 ),
    .csb1(\u_riscv_top.sram0_csb1 ),
    .web0(\u_riscv_top.sram0_web0 ),
    .clk0(\u_riscv_top.sram0_clk0 ),
    .clk1(\u_riscv_top.sram0_clk1 ),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\u_riscv_top.sram0_addr0[8] ,
    \u_riscv_top.sram0_addr0[7] ,
    \u_riscv_top.sram0_addr0[6] ,
    \u_riscv_top.sram0_addr0[5] ,
    \u_riscv_top.sram0_addr0[4] ,
    \u_riscv_top.sram0_addr0[3] ,
    \u_riscv_top.sram0_addr0[2] ,
    \u_riscv_top.sram0_addr0[1] ,
    \u_riscv_top.sram0_addr0[0] }),
    .addr1({\u_riscv_top.sram0_addr1[8] ,
    \u_riscv_top.sram0_addr1[7] ,
    \u_riscv_top.sram0_addr1[6] ,
    \u_riscv_top.sram0_addr1[5] ,
    \u_riscv_top.sram0_addr1[4] ,
    \u_riscv_top.sram0_addr1[3] ,
    \u_riscv_top.sram0_addr1[2] ,
    \u_riscv_top.sram0_addr1[1] ,
    \u_riscv_top.sram0_addr1[0] }),
    .din0({\u_riscv_top.sram0_din0[31] ,
    \u_riscv_top.sram0_din0[30] ,
    \u_riscv_top.sram0_din0[29] ,
    \u_riscv_top.sram0_din0[28] ,
    \u_riscv_top.sram0_din0[27] ,
    \u_riscv_top.sram0_din0[26] ,
    \u_riscv_top.sram0_din0[25] ,
    \u_riscv_top.sram0_din0[24] ,
    \u_riscv_top.sram0_din0[23] ,
    \u_riscv_top.sram0_din0[22] ,
    \u_riscv_top.sram0_din0[21] ,
    \u_riscv_top.sram0_din0[20] ,
    \u_riscv_top.sram0_din0[19] ,
    \u_riscv_top.sram0_din0[18] ,
    \u_riscv_top.sram0_din0[17] ,
    \u_riscv_top.sram0_din0[16] ,
    \u_riscv_top.sram0_din0[15] ,
    \u_riscv_top.sram0_din0[14] ,
    \u_riscv_top.sram0_din0[13] ,
    \u_riscv_top.sram0_din0[12] ,
    \u_riscv_top.sram0_din0[11] ,
    \u_riscv_top.sram0_din0[10] ,
    \u_riscv_top.sram0_din0[9] ,
    \u_riscv_top.sram0_din0[8] ,
    \u_riscv_top.sram0_din0[7] ,
    \u_riscv_top.sram0_din0[6] ,
    \u_riscv_top.sram0_din0[5] ,
    \u_riscv_top.sram0_din0[4] ,
    \u_riscv_top.sram0_din0[3] ,
    \u_riscv_top.sram0_din0[2] ,
    \u_riscv_top.sram0_din0[1] ,
    \u_riscv_top.sram0_din0[0] }),
    .dout0({\u_riscv_top.sram0_dout0[31] ,
    \u_riscv_top.sram0_dout0[30] ,
    \u_riscv_top.sram0_dout0[29] ,
    \u_riscv_top.sram0_dout0[28] ,
    \u_riscv_top.sram0_dout0[27] ,
    \u_riscv_top.sram0_dout0[26] ,
    \u_riscv_top.sram0_dout0[25] ,
    \u_riscv_top.sram0_dout0[24] ,
    \u_riscv_top.sram0_dout0[23] ,
    \u_riscv_top.sram0_dout0[22] ,
    \u_riscv_top.sram0_dout0[21] ,
    \u_riscv_top.sram0_dout0[20] ,
    \u_riscv_top.sram0_dout0[19] ,
    \u_riscv_top.sram0_dout0[18] ,
    \u_riscv_top.sram0_dout0[17] ,
    \u_riscv_top.sram0_dout0[16] ,
    \u_riscv_top.sram0_dout0[15] ,
    \u_riscv_top.sram0_dout0[14] ,
    \u_riscv_top.sram0_dout0[13] ,
    \u_riscv_top.sram0_dout0[12] ,
    \u_riscv_top.sram0_dout0[11] ,
    \u_riscv_top.sram0_dout0[10] ,
    \u_riscv_top.sram0_dout0[9] ,
    \u_riscv_top.sram0_dout0[8] ,
    \u_riscv_top.sram0_dout0[7] ,
    \u_riscv_top.sram0_dout0[6] ,
    \u_riscv_top.sram0_dout0[5] ,
    \u_riscv_top.sram0_dout0[4] ,
    \u_riscv_top.sram0_dout0[3] ,
    \u_riscv_top.sram0_dout0[2] ,
    \u_riscv_top.sram0_dout0[1] ,
    \u_riscv_top.sram0_dout0[0] }),
    .dout1({\u_riscv_top.sram0_dout1[31] ,
    \u_riscv_top.sram0_dout1[30] ,
    \u_riscv_top.sram0_dout1[29] ,
    \u_riscv_top.sram0_dout1[28] ,
    \u_riscv_top.sram0_dout1[27] ,
    \u_riscv_top.sram0_dout1[26] ,
    \u_riscv_top.sram0_dout1[25] ,
    \u_riscv_top.sram0_dout1[24] ,
    \u_riscv_top.sram0_dout1[23] ,
    \u_riscv_top.sram0_dout1[22] ,
    \u_riscv_top.sram0_dout1[21] ,
    \u_riscv_top.sram0_dout1[20] ,
    \u_riscv_top.sram0_dout1[19] ,
    \u_riscv_top.sram0_dout1[18] ,
    \u_riscv_top.sram0_dout1[17] ,
    \u_riscv_top.sram0_dout1[16] ,
    \u_riscv_top.sram0_dout1[15] ,
    \u_riscv_top.sram0_dout1[14] ,
    \u_riscv_top.sram0_dout1[13] ,
    \u_riscv_top.sram0_dout1[12] ,
    \u_riscv_top.sram0_dout1[11] ,
    \u_riscv_top.sram0_dout1[10] ,
    \u_riscv_top.sram0_dout1[9] ,
    \u_riscv_top.sram0_dout1[8] ,
    \u_riscv_top.sram0_dout1[7] ,
    \u_riscv_top.sram0_dout1[6] ,
    \u_riscv_top.sram0_dout1[5] ,
    \u_riscv_top.sram0_dout1[4] ,
    \u_riscv_top.sram0_dout1[3] ,
    \u_riscv_top.sram0_dout1[2] ,
    \u_riscv_top.sram0_dout1[1] ,
    \u_riscv_top.sram0_dout1[0] }),
    .wmask0({\u_riscv_top.sram0_wmask0[3] ,
    \u_riscv_top.sram0_wmask0[2] ,
    \u_riscv_top.sram0_wmask0[1] ,
    \u_riscv_top.sram0_wmask0[0] }));
 uart_i2c_usb_spi_top u_uart_i2c_usb_spi (.app_clk(wbd_clk_uart_skew),
    .i2c_rstn(i2c_rst_n),
    .i2cm_intr_o(i2cm_intr_o),
    .reg_ack(wbd_uart_ack_i),
    .reg_cs(wbd_uart_stb_o),
    .reg_wr(wbd_uart_we_o),
    .scl_pad_i(i2cm_clk_i),
    .scl_pad_o(i2cm_clk_o),
    .scl_pad_oen_o(i2cm_clk_oen),
    .sda_pad_i(i2cm_data_i),
    .sda_pad_o(i2cm_data_o),
    .sda_padoen_o(i2cm_data_oen),
    .spi_rstn(sspim_rst_n),
    .sspim_sck(sspim_sck),
    .sspim_si(sspim_si),
    .sspim_so(sspim_so),
    .usb_clk(usb_clk),
    .usb_in_dn(usb_dn_i),
    .usb_in_dp(usb_dp_i),
    .usb_intr_o(usb_intr_o),
    .usb_out_dn(usb_dn_o),
    .usb_out_dp(usb_dp_o),
    .usb_out_tx_oen(usb_oen),
    .usb_rstn(usb_rst_n),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_clk_int(wbd_clk_uart_rp),
    .wbd_clk_uart(wbd_clk_uart_skew),
    .cfg_cska_uart({\cfg_cska_uart_rp[3] ,
    \cfg_cska_uart_rp[2] ,
    \cfg_cska_uart_rp[1] ,
    \cfg_cska_uart_rp[0] }),
    .reg_addr({\wbd_uart_adr_o[8] ,
    \wbd_uart_adr_o[7] ,
    \wbd_uart_adr_o[6] ,
    \wbd_uart_adr_o[5] ,
    \wbd_uart_adr_o[4] ,
    \wbd_uart_adr_o[3] ,
    \wbd_uart_adr_o[2] ,
    \wbd_uart_adr_o[1] ,
    \wbd_uart_adr_o[0] }),
    .reg_be({\wbd_uart_sel_o[3] ,
    \wbd_uart_sel_o[2] ,
    \wbd_uart_sel_o[1] ,
    \wbd_uart_sel_o[0] }),
    .reg_rdata({\wbd_uart_dat_i[31] ,
    \wbd_uart_dat_i[30] ,
    \wbd_uart_dat_i[29] ,
    \wbd_uart_dat_i[28] ,
    \wbd_uart_dat_i[27] ,
    \wbd_uart_dat_i[26] ,
    \wbd_uart_dat_i[25] ,
    \wbd_uart_dat_i[24] ,
    \wbd_uart_dat_i[23] ,
    \wbd_uart_dat_i[22] ,
    \wbd_uart_dat_i[21] ,
    \wbd_uart_dat_i[20] ,
    \wbd_uart_dat_i[19] ,
    \wbd_uart_dat_i[18] ,
    \wbd_uart_dat_i[17] ,
    \wbd_uart_dat_i[16] ,
    \wbd_uart_dat_i[15] ,
    \wbd_uart_dat_i[14] ,
    \wbd_uart_dat_i[13] ,
    \wbd_uart_dat_i[12] ,
    \wbd_uart_dat_i[11] ,
    \wbd_uart_dat_i[10] ,
    \wbd_uart_dat_i[9] ,
    \wbd_uart_dat_i[8] ,
    \wbd_uart_dat_i[7] ,
    \wbd_uart_dat_i[6] ,
    \wbd_uart_dat_i[5] ,
    \wbd_uart_dat_i[4] ,
    \wbd_uart_dat_i[3] ,
    \wbd_uart_dat_i[2] ,
    \wbd_uart_dat_i[1] ,
    \wbd_uart_dat_i[0] }),
    .reg_wdata({\wbd_uart_dat_o[31] ,
    \wbd_uart_dat_o[30] ,
    \wbd_uart_dat_o[29] ,
    \wbd_uart_dat_o[28] ,
    \wbd_uart_dat_o[27] ,
    \wbd_uart_dat_o[26] ,
    \wbd_uart_dat_o[25] ,
    \wbd_uart_dat_o[24] ,
    \wbd_uart_dat_o[23] ,
    \wbd_uart_dat_o[22] ,
    \wbd_uart_dat_o[21] ,
    \wbd_uart_dat_o[20] ,
    \wbd_uart_dat_o[19] ,
    \wbd_uart_dat_o[18] ,
    \wbd_uart_dat_o[17] ,
    \wbd_uart_dat_o[16] ,
    \wbd_uart_dat_o[15] ,
    \wbd_uart_dat_o[14] ,
    \wbd_uart_dat_o[13] ,
    \wbd_uart_dat_o[12] ,
    \wbd_uart_dat_o[11] ,
    \wbd_uart_dat_o[10] ,
    \wbd_uart_dat_o[9] ,
    \wbd_uart_dat_o[8] ,
    \wbd_uart_dat_o[7] ,
    \wbd_uart_dat_o[6] ,
    \wbd_uart_dat_o[5] ,
    \wbd_uart_dat_o[4] ,
    \wbd_uart_dat_o[3] ,
    \wbd_uart_dat_o[2] ,
    \wbd_uart_dat_o[1] ,
    \wbd_uart_dat_o[0] }),
    .sspim_ssn({\sspim_ssn[3] ,
    \sspim_ssn[2] ,
    \sspim_ssn[1] ,
    \sspim_ssn[0] }),
    .uart_rstn({\uart_rst_n[1] ,
    \uart_rst_n[0] }),
    .uart_rxd({\uart_rxd[1] ,
    \uart_rxd[0] }),
    .uart_txd({\uart_txd[1] ,
    \uart_txd[0] }));
 wb_host u_wb_host (.cfg_dco_mode(cfg_dco_mode),
    .cfg_pll_enb(cfg_pll_enb),
    .cpu_clk(\u_riscv_top.core_clk ),
    .dbg_clk_mon(dbg_clk_mon),
    .pll_ref_clk(pll_ref_clk),
    .rtc_clk(\u_riscv_top.rtc_clk ),
    .uartm_rxd(uartm_rxd),
    .uartm_txd(uartm_txd),
    .usb_clk(usb_clk),
    .user_clock1(wb_clk_i),
    .user_clock2(user_clock2),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wbd_clk_int(wbd_clk_int),
    .wbd_clk_wh(wbd_clk_wh),
    .wbd_int_rst_n(\u_riscv_top.pwrup_rst_n ),
    .wbd_pll_rst_n(wbd_pll_rst_n),
    .wbm_ack_o(wbs_ack_o),
    .wbm_clk_i(wb_clk_i),
    .wbm_cyc_i(wbs_cyc_i),
    .wbm_rst_i(wb_rst_i),
    .wbm_stb_i(wbs_stb_i),
    .wbm_we_i(wbs_we_i),
    .wbs_ack_i(wbd_int_ack_o),
    .wbs_clk_i(wbd_clk_wh),
    .wbs_clk_out(wbd_clk_int),
    .wbs_cyc_o(wbd_int_cyc_i),
    .wbs_err_i(wbd_int_err_o),
    .wbs_stb_o(wbd_int_stb_i),
    .wbs_we_o(wbd_int_we_i),
    .cfg_clk_ctrl1({\cfg_clk_ctrl1[31] ,
    \cfg_clk_ctrl1[30] ,
    \cfg_clk_ctrl1[29] ,
    \cfg_clk_ctrl1[28] ,
    \cfg_clk_ctrl1[27] ,
    \cfg_clk_ctrl1[26] ,
    \cfg_clk_ctrl1[25] ,
    \cfg_clk_ctrl1[24] ,
    \cfg_clk_ctrl1[23] ,
    \cfg_clk_ctrl1[22] ,
    \cfg_clk_ctrl1[21] ,
    \cfg_clk_ctrl1[20] ,
    \cfg_clk_ctrl1[19] ,
    \cfg_clk_ctrl1[18] ,
    \cfg_clk_ctrl1[17] ,
    \cfg_clk_ctrl1[16] ,
    \cfg_clk_ctrl1[15] ,
    \cfg_clk_ctrl1[14] ,
    \cfg_clk_ctrl1[13] ,
    \cfg_clk_ctrl1[12] ,
    \cfg_clk_ctrl1[11] ,
    \cfg_clk_ctrl1[10] ,
    \cfg_clk_ctrl1[9] ,
    \cfg_clk_ctrl1[8] ,
    \cfg_clk_ctrl1[7] ,
    \cfg_clk_ctrl1[6] ,
    \cfg_clk_ctrl1[5] ,
    \cfg_clk_ctrl1[4] ,
    \cfg_clk_ctrl1[3] ,
    \cfg_clk_ctrl1[2] ,
    \cfg_clk_ctrl1[1] ,
    \cfg_clk_ctrl1[0] }),
    .cfg_cska_wh({\cfg_clk_ctrl1[7] ,
    \cfg_clk_ctrl1[6] ,
    \cfg_clk_ctrl1[5] ,
    \cfg_clk_ctrl1[4] }),
    .cfg_dc_trim({\cfg_dc_trim[25] ,
    \cfg_dc_trim[24] ,
    \cfg_dc_trim[23] ,
    \cfg_dc_trim[22] ,
    \cfg_dc_trim[21] ,
    \cfg_dc_trim[20] ,
    \cfg_dc_trim[19] ,
    \cfg_dc_trim[18] ,
    \cfg_dc_trim[17] ,
    \cfg_dc_trim[16] ,
    \cfg_dc_trim[15] ,
    \cfg_dc_trim[14] ,
    \cfg_dc_trim[13] ,
    \cfg_dc_trim[12] ,
    \cfg_dc_trim[11] ,
    \cfg_dc_trim[10] ,
    \cfg_dc_trim[9] ,
    \cfg_dc_trim[8] ,
    \cfg_dc_trim[7] ,
    \cfg_dc_trim[6] ,
    \cfg_dc_trim[5] ,
    \cfg_dc_trim[4] ,
    \cfg_dc_trim[3] ,
    \cfg_dc_trim[2] ,
    \cfg_dc_trim[1] ,
    \cfg_dc_trim[0] }),
    .cfg_pll_fed_div({\cfg_pll_fed_div[4] ,
    \cfg_pll_fed_div[3] ,
    \cfg_pll_fed_div[2] ,
    \cfg_pll_fed_div[1] ,
    \cfg_pll_fed_div[0] }),
    .la_data_in({la_data_in[17],
    la_data_in[16],
    la_data_in[15],
    la_data_in[14],
    la_data_in[13],
    la_data_in[12],
    la_data_in[11],
    la_data_in[10],
    la_data_in[9],
    la_data_in[8],
    la_data_in[7],
    la_data_in[6],
    la_data_in[5],
    la_data_in[4],
    la_data_in[3],
    la_data_in[2],
    la_data_in[1],
    la_data_in[0]}),
    .pll_clk_out({\pll_clk_out[1] ,
    \pll_clk_out[0] }),
    .wbm_adr_i({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .wbm_dat_i({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .wbm_dat_o({wbs_dat_o[31],
    wbs_dat_o[30],
    wbs_dat_o[29],
    wbs_dat_o[28],
    wbs_dat_o[27],
    wbs_dat_o[26],
    wbs_dat_o[25],
    wbs_dat_o[24],
    wbs_dat_o[23],
    wbs_dat_o[22],
    wbs_dat_o[21],
    wbs_dat_o[20],
    wbs_dat_o[19],
    wbs_dat_o[18],
    wbs_dat_o[17],
    wbs_dat_o[16],
    wbs_dat_o[15],
    wbs_dat_o[14],
    wbs_dat_o[13],
    wbs_dat_o[12],
    wbs_dat_o[11],
    wbs_dat_o[10],
    wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}),
    .wbm_sel_i({wbs_sel_i[3],
    wbs_sel_i[2],
    wbs_sel_i[1],
    wbs_sel_i[0]}),
    .wbs_adr_o({\wbd_int_adr_i[31] ,
    \wbd_int_adr_i[30] ,
    \wbd_int_adr_i[29] ,
    \wbd_int_adr_i[28] ,
    \wbd_int_adr_i[27] ,
    \wbd_int_adr_i[26] ,
    \wbd_int_adr_i[25] ,
    \wbd_int_adr_i[24] ,
    \wbd_int_adr_i[23] ,
    \wbd_int_adr_i[22] ,
    \wbd_int_adr_i[21] ,
    \wbd_int_adr_i[20] ,
    \wbd_int_adr_i[19] ,
    \wbd_int_adr_i[18] ,
    \wbd_int_adr_i[17] ,
    \wbd_int_adr_i[16] ,
    \wbd_int_adr_i[15] ,
    \wbd_int_adr_i[14] ,
    \wbd_int_adr_i[13] ,
    \wbd_int_adr_i[12] ,
    \wbd_int_adr_i[11] ,
    \wbd_int_adr_i[10] ,
    \wbd_int_adr_i[9] ,
    \wbd_int_adr_i[8] ,
    \wbd_int_adr_i[7] ,
    \wbd_int_adr_i[6] ,
    \wbd_int_adr_i[5] ,
    \wbd_int_adr_i[4] ,
    \wbd_int_adr_i[3] ,
    \wbd_int_adr_i[2] ,
    \wbd_int_adr_i[1] ,
    \wbd_int_adr_i[0] }),
    .wbs_dat_i({\wbd_int_dat_o[31] ,
    \wbd_int_dat_o[30] ,
    \wbd_int_dat_o[29] ,
    \wbd_int_dat_o[28] ,
    \wbd_int_dat_o[27] ,
    \wbd_int_dat_o[26] ,
    \wbd_int_dat_o[25] ,
    \wbd_int_dat_o[24] ,
    \wbd_int_dat_o[23] ,
    \wbd_int_dat_o[22] ,
    \wbd_int_dat_o[21] ,
    \wbd_int_dat_o[20] ,
    \wbd_int_dat_o[19] ,
    \wbd_int_dat_o[18] ,
    \wbd_int_dat_o[17] ,
    \wbd_int_dat_o[16] ,
    \wbd_int_dat_o[15] ,
    \wbd_int_dat_o[14] ,
    \wbd_int_dat_o[13] ,
    \wbd_int_dat_o[12] ,
    \wbd_int_dat_o[11] ,
    \wbd_int_dat_o[10] ,
    \wbd_int_dat_o[9] ,
    \wbd_int_dat_o[8] ,
    \wbd_int_dat_o[7] ,
    \wbd_int_dat_o[6] ,
    \wbd_int_dat_o[5] ,
    \wbd_int_dat_o[4] ,
    \wbd_int_dat_o[3] ,
    \wbd_int_dat_o[2] ,
    \wbd_int_dat_o[1] ,
    \wbd_int_dat_o[0] }),
    .wbs_dat_o({\wbd_int_dat_i[31] ,
    \wbd_int_dat_i[30] ,
    \wbd_int_dat_i[29] ,
    \wbd_int_dat_i[28] ,
    \wbd_int_dat_i[27] ,
    \wbd_int_dat_i[26] ,
    \wbd_int_dat_i[25] ,
    \wbd_int_dat_i[24] ,
    \wbd_int_dat_i[23] ,
    \wbd_int_dat_i[22] ,
    \wbd_int_dat_i[21] ,
    \wbd_int_dat_i[20] ,
    \wbd_int_dat_i[19] ,
    \wbd_int_dat_i[18] ,
    \wbd_int_dat_i[17] ,
    \wbd_int_dat_i[16] ,
    \wbd_int_dat_i[15] ,
    \wbd_int_dat_i[14] ,
    \wbd_int_dat_i[13] ,
    \wbd_int_dat_i[12] ,
    \wbd_int_dat_i[11] ,
    \wbd_int_dat_i[10] ,
    \wbd_int_dat_i[9] ,
    \wbd_int_dat_i[8] ,
    \wbd_int_dat_i[7] ,
    \wbd_int_dat_i[6] ,
    \wbd_int_dat_i[5] ,
    \wbd_int_dat_i[4] ,
    \wbd_int_dat_i[3] ,
    \wbd_int_dat_i[2] ,
    \wbd_int_dat_i[1] ,
    \wbd_int_dat_i[0] }),
    .wbs_sel_o({\wbd_int_sel_i[3] ,
    \wbd_int_sel_i[2] ,
    \wbd_int_sel_i[1] ,
    \wbd_int_sel_i[0] }));
endmodule
