////////////////////////////////////////////////////////////////////////////
// SPDX-FileCopyrightText:  2021 , Dinesh Annayya
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0
// SPDX-FileContributor: Modified by Dinesh Annayya <dinesha@opencores.org>
//////////////////////////////////////////////////////////////////////
////                                                              ////
////  Standalone User validation Test bench                       ////
////                                                              ////
////  This file is part of the YIFive cores project               ////
////  https://github.com/dineshannayya/yifive_r0.git              ////
////  http://www.opencores.org/cores/yifive/                      ////
////                                                              ////
////  Description                                                 ////
////   This is a standalone test bench to validate the            ////
////   gpio interfaface through External WB i/F.                  ////
////                                                              ////
////  To Do:                                                      ////
////    nothing                                                   ////
////                                                              ////
////  Author(s):                                                  ////
////      - Dinesh Annayya, dinesha@opencores.org                 ////
////                                                              ////
////  Revision :                                                  ////
////    0.1 - 01 Oct 2021, Dinesh A                               ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////

`default_nettype wire

`timescale 1 ns / 1 ns

// Note in caravel, 0x30XX_XXXX only come to user interface
// So, using wb_host bank select we have changing MSB address [31:24] = 0x10
`define ADDR_SPACE_UART    32'h3001_0000
`define ADDR_SPACE_SSPI    32'h3001_00C0
`define ADDR_SPACE_PINMUX  32'h3002_0000

`define TB_GLBL    user_gpio_tb

`include "uprj_netlists.v"
`include "is62wvs1288.v"
`include "user_reg_map.v"


module user_gpio_tb;
	reg clock;
	reg wb_rst_i;
	reg power1, power2;
	reg power3, power4;

        reg        wbd_ext_cyc_i;  // strobe/request
        reg        wbd_ext_stb_i;  // strobe/request
        reg [31:0] wbd_ext_adr_i;  // address
        reg        wbd_ext_we_i;  // write
        reg [31:0] wbd_ext_dat_i;  // data output
        reg [3:0]  wbd_ext_sel_i;  // byte enable

        wire [31:0] wbd_ext_dat_o;  // data input
        wire        wbd_ext_ack_o;  // acknowlegement
        wire        wbd_ext_err_o;  // error

	// User I/O
	wire [37:0] io_oeb;
	wire [37:0] io_out;
	wire [37:0] io_in;


	reg [1:0] spi_chip_no;

	wire gpio;
	wire [37:0] mprj_io;
	wire [7:0] mprj_io_0;
	reg        test_fail;
	reg [31:0] read_data;
        integer    test_step;
        wire       clock_mon;


	// External clock is used by default.  Make this artificially fast for the
	// simulation.  Normally this would be a slow clock and the digital PLL
	// would be the fast clock.

	always #12.5 clock <= (clock === 1'b0);


	initial begin
		OneUsPeriod = 1;
		clock = 0;
                wbd_ext_cyc_i ='h0;  // strobe/request
                wbd_ext_stb_i ='h0;  // strobe/request
                wbd_ext_adr_i ='h0;  // address
                wbd_ext_we_i  ='h0;  // write
                wbd_ext_dat_i ='h0;  // data output
                wbd_ext_sel_i ='h0;  // byte enable
	end

	`ifdef WFDUMP
	   initial begin
	   	$dumpfile("simx.vcd");
	   	$dumpvars(1, `TB_GLBL);
	   	$dumpvars(0, `TB_GLBL.u_top.u_pinmux);
	   end
       `endif

	initial begin
		$dumpon;

		#200; // Wait for reset removal
	        repeat (10) @(posedge clock);
		$display("Monitor: Standalone User Risc Boot Test Started");

		// Remove Wb Reset
		wb_user_core_write('h3080_0000,'h1);

	        repeat (2) @(posedge clock);
		#1;
                wb_user_core_write('h3080_0004,'h10); // Change the Bank Sel 10

                // Remove the reset
		// Remove WB and SPI/UART Reset, Keep CORE under Reset
                wb_user_core_write(`ADDR_SPACE_PINMUX+`PINMUX_GBL_CFG0,'h01F);

		// config 1us based on system clock - 1000/25ns = 40 
                wb_user_core_write(`ADDR_SPACE_PINMUX+`PINMUX_GBL_CFG1,39);

		// Enable GPIO Interrupt
                wb_user_core_write(`ADDR_SPACE_PINMUX+`PINMUX_GBL_INTR_MSK,'h8000);

		test_fail = 0;
	        repeat (200) @(posedge clock);


		repeat (100) @(posedge clock);
			// $display("+1000 cycles");

          	if(test_fail == 0) begin
		   `ifdef GL
	    	       $display("Monitor: GPIO Mode (GL) Passed");
		   `else
		       $display("Monitor: GPIO Mode (RTL) Passed");
		   `endif
	        end else begin
		    `ifdef GL
	    	        $display("Monitor: GPIO Mode (GL) Failed");
		    `else
		        $display("Monitor: GPIO Mode (RTL) Failed");
		    `endif
		 end
	    	$display("###################################################");
	        $finish;
	end

	initial begin
		wb_rst_i <= 1'b1;
		#100;
		wb_rst_i <= 1'b0;	    	// Release reset
	end
wire USER_VDD1V8 = 1'b1;
wire VSS = 1'b0;


user_project_wrapper u_top(
`ifdef USE_POWER_PINS
    .vccd1(USER_VDD1V8),	// User area 1 1.8V supply
    .vssd1(VSS),	// User area 1 digital ground
`endif
    .wb_clk_i        (clock),  // System clock
    .user_clock2     (1'b1),  // Real-time clock
    .wb_rst_i        (wb_rst_i),  // Regular Reset signal

    .wbs_cyc_i   (wbd_ext_cyc_i),  // strobe/request
    .wbs_stb_i   (wbd_ext_stb_i),  // strobe/request
    .wbs_adr_i   (wbd_ext_adr_i),  // address
    .wbs_we_i    (wbd_ext_we_i),  // write
    .wbs_dat_i   (wbd_ext_dat_i),  // data output
    .wbs_sel_i   (wbd_ext_sel_i),  // byte enable

    .wbs_dat_o   (wbd_ext_dat_o),  // data input
    .wbs_ack_o   (wbd_ext_ack_o),  // acknowlegement

 
    // Logic Analyzer Signals
    .la_data_in      ('1) ,
    .la_data_out     (),
    .la_oenb         ('0),
 

    // IOs
    .io_in          (io_in)  ,
    .io_out         (io_out) ,
    .io_oeb         (io_oeb) ,

    .user_irq       () 

);

`ifndef GL // Drive Power for Hold Fix Buf
    // All standard cell need power hook-up for functionality work
    initial begin

    end
`endif    

//------------------------------------------------------
//  Integrate the Serial flash with qurd support to
//  user core using the gpio pads
//  ----------------------------------------------------
   wire flash_io1;
   wire flash_clk = io_out[16];
   wire spiram_csb = io_out[13];
   tri  #1 flash_io0 = io_out[15];
   assign io_in[14] = flash_io1;

   tri  #1 flash_io2 = 1'b1;
   tri  #1 flash_io3 = 1'b1;


   is62wvs1288 #(.mem_file_name("flash1.hex"))
	u_sfram (
         // Data Inputs/Outputs
           .io0     (flash_io0),
           .io1     (flash_io1),
           // Controls
           .clk    (flash_clk),
           .csb    (spiram_csb),
           .io2    (flash_io2),
           .io3    (flash_io3)
    );


//----------------------------------------------------
//  Task
// --------------------------------------------------
task test_err;
begin
     test_fail = 1;
end
endtask

task wb_user_core_write;
input [31:0] address;
input [31:0] data;
begin
  repeat (1) @(posedge clock);
  #1;
  wbd_ext_adr_i =address;  // address
  wbd_ext_we_i  ='h1;  // write
  wbd_ext_dat_i =data;  // data output
  wbd_ext_sel_i ='hF;  // byte enable
  wbd_ext_cyc_i ='h1;  // strobe/request
  wbd_ext_stb_i ='h1;  // strobe/request
  wait(wbd_ext_ack_o == 1);
  repeat (1) @(posedge clock);
  #1;
  wbd_ext_cyc_i ='h0;  // strobe/request
  wbd_ext_stb_i ='h0;  // strobe/request
  wbd_ext_adr_i ='h0;  // address
  wbd_ext_we_i  ='h0;  // write
  wbd_ext_dat_i ='h0;  // data output
  wbd_ext_sel_i ='h0;  // byte enable
  $display("STATUS: WB USER ACCESS WRITE Address : 0x%x, Data : 0x%x",address,data);
  repeat (2) @(posedge clock);
end
endtask

task  wb_user_core_read;
input [31:0] address;
output [31:0] data;
reg    [31:0] data;
begin
  repeat (1) @(posedge clock);
  #1;
  wbd_ext_adr_i =address;  // address
  wbd_ext_we_i  ='h0;  // write
  wbd_ext_dat_i ='0;  // data output
  wbd_ext_sel_i ='hF;  // byte enable
  wbd_ext_cyc_i ='h1;  // strobe/request
  wbd_ext_stb_i ='h1;  // strobe/request
  wait(wbd_ext_ack_o == 1);
  repeat (1) @(negedge clock);
  data  = wbd_ext_dat_o;  
  repeat (1) @(posedge clock);
  #1;
  wbd_ext_cyc_i ='h0;  // strobe/request
  wbd_ext_stb_i ='h0;  // strobe/request
  wbd_ext_adr_i ='h0;  // address
  wbd_ext_we_i  ='h0;  // write
  wbd_ext_dat_i ='h0;  // data output
  wbd_ext_sel_i ='h0;  // byte enable
  //$display("STATUS: WB USER ACCESS READ  Address : 0x%x, Data : 0x%x",address,data);
  repeat (2) @(posedge clock);
end
endtask

task  wb_user_core_read_check;
input [31:0] address;
output [31:0] data;
input [31:0] cmp_data;
reg    [31:0] data;
begin
  repeat (1) @(posedge clock);
  #1;
  wbd_ext_adr_i =address;  // address
  wbd_ext_we_i  ='h0;  // write
  wbd_ext_dat_i ='0;  // data output
  wbd_ext_sel_i ='hF;  // byte enable
  wbd_ext_cyc_i ='h1;  // strobe/request
  wbd_ext_stb_i ='h1;  // strobe/request
  wait(wbd_ext_ack_o == 1);
  repeat (1) @(negedge clock);
  data  = wbd_ext_dat_o;  
  repeat (1) @(posedge clock);
  #1;
  wbd_ext_cyc_i ='h0;  // strobe/request
  wbd_ext_stb_i ='h0;  // strobe/request
  wbd_ext_adr_i ='h0;  // address
  wbd_ext_we_i  ='h0;  // write
  wbd_ext_dat_i ='h0;  // data output
  wbd_ext_sel_i ='h0;  // byte enable
  if(data !== cmp_data) begin
     $display("ERROR : WB USER ACCESS READ  Address : 0x%x, Exd: 0x%x Rxd: 0x%x ",address,cmp_data,data);
     `TB_GLBL.test_fail = 1;
  end else begin
     $display("STATUS: WB USER ACCESS READ  Address : 0x%x, Data : 0x%x",address,data);
  end
  repeat (2) @(posedge clock);
end
endtask
// GPIO Pin Mapping
//Pin-1        PC6/RESET*          digital_io[0]
//Pin-2        PD0/RXD             digital_io[1]
//Pin-3        PD1/TXD             digital_io[2]
//Pin-4        PD2/INT0            digital_io[3]
//Pin-5        PD3/INT1/OC2B(PWM0)  digital_io[4]
//Pin-6        PD4                 digital_io[5]
//Pin-9        PB6/XTAL1/TOSC1     digital_io[6]
//Pin-10       PB7/XTAL2/TOSC2     digital_io[7]
//Pin-11       PD5/OC0B(PWM1)/T1   digital_io[8]
//Pin-12       PD6/OC0A(PWM2)/AIN0 digital_io[9] /analog_io[2]
//Pin-13       PD7/A1N1            digital_io[10]/analog_io[3]
//Pin-14       PB0/CLKO/ICP1       digital_io[11]
//Pin-15       PB1/OC1A(PWM3)      digital_io[12]
//Pin-16       PB2/SS/OC1B(PWM4)   digital_io[13]
//Pin-17       PB3/MOSI/OC2A(PWM5) digital_io[14]
//Pin-18       PB4/MISO            digital_io[15]
//Pin-19       PB5/SCK             digital_io[16]
//Pin-23       PC0/ADC0            digital_io[18]/analog_io[11]
//Pin-24       PC1/ADC1            digital_io[19]/analog_io[12]
//Pin-25       PC2/ADC2            digital_io[20]/analog_io[13]
//Pin-26       PC3/ADC3            digital_io[21]/analog_io[14]
//Pin-27       PC4/ADC4/SDA        digital_io[22]/analog_io[15]
//Pin-28       PC5/ADC5/SCL        digital_io[23]/analog_io[16]

// Generate GPIO out data

task gen_gpio_out;
input  [31:0] datain;
output [7:0] port_a_out;
output [7:0] port_b_out;
output [7:0] port_c_out;
output [7:0] port_d_out;

reg [7:0] port_a_out;
reg [7:0] port_b_out;
reg [7:0] port_c_out;
reg [7:0] port_d_out;
begin
    port_a_out ='h0;
    port_b_out ='h0;
    port_c_out ='h0;
    port_d_out ='h0;

    port_c_out[6] =  datain[0];
    port_d_out[0] =  datain[1];
    port_d_out[1] =  datain[2];
    port_d_out[2] =  datain[3];
    port_d_out[3] =  datain[4];
    port_d_out[4] =  datain[5];
    port_b_out[6] =  datain[6];
    port_b_out[7] =  datain[7];
    port_d_out[5] =  datain[8];
    port_d_out[6] =  datain[9];
    port_d_out[7] =  datain[10];
    port_b_out[0] =  datain[11];
    port_b_out[1] =  datain[12];
    port_b_out[2] =  datain[13];
    port_b_out[3] =  datain[14];
    port_b_out[4] =  datain[15];
    port_b_out[5] =  datain[16];
    port_c_out[0] =  datain[18];
    port_c_out[1] =  datain[19];
    port_c_out[2] =  datain[20];
    port_c_out[3] =  datain[21];
    port_c_out[4] =  datain[22];
    port_c_out[5] =  datain[23];
end
endtask

// generate expected gpio data out
task exp_gpio_in;
output [7:0] port_a_in;
output [7:0] port_b_in;
output [7:0] port_c_in;
output [7:0] port_d_in;
reg [7:0] port_a_in;
reg [7:0] port_b_in;
reg [7:0] port_c_in;
reg [7:0] port_d_in;
begin
    port_a_in ='h0;
    port_b_in ='h0;
    port_c_in ='h0;
    port_d_in ='h0;
    
    port_c_in[6] =  io_out[0];
    port_d_in[0] =  io_out[1];
    port_d_in[1] =  io_out[2];
    port_d_in[2] =  io_out[3];
    port_d_in[3] =  io_out[4];
    port_d_in[4] =  io_out[5];
    port_b_in[6] =  io_out[6];
    port_b_in[7] =  io_out[7];
    port_d_in[5] =  io_out[8];
    port_d_in[6] =  io_out[9];
    port_d_in[7] =  io_out[10];
    port_b_in[0] =  io_out[11];
    port_b_in[1] =  io_out[12];
    port_b_in[2] =  io_out[13];
    port_b_in[3] =  io_out[14];
    port_b_in[4] =  io_out[15];
    port_b_in[5] =  io_out[16];
    port_c_in[0] =  io_out[18];
    port_c_in[1] =  io_out[19];
    port_c_in[2] =  io_out[20];
    port_c_in[3] =  io_out[21];
    port_c_in[4] =  io_out[22];
    port_c_in[5] =  io_out[23];
end
endtask


`ifdef GL

wire        wbd_spi_stb_i   = u_top.u_spi_master.wbd_stb_i;
wire        wbd_spi_ack_o   = u_top.u_spi_master.wbd_ack_o;
wire        wbd_spi_we_i    = u_top.u_spi_master.wbd_we_i;
wire [31:0] wbd_spi_adr_i   = u_top.u_spi_master.wbd_adr_i;
wire [31:0] wbd_spi_dat_i   = u_top.u_spi_master.wbd_dat_i;
wire [31:0] wbd_spi_dat_o   = u_top.u_spi_master.wbd_dat_o;
wire [3:0]  wbd_spi_sel_i   = u_top.u_spi_master.wbd_sel_i;

wire        wbd_uart_stb_i  = u_top.u_uart_i2c_usb.reg_cs;
wire        wbd_uart_ack_o  = u_top.u_uart_i2c_usb.reg_ack;
wire        wbd_uart_we_i   = u_top.u_uart_i2c_usb.reg_wr;
wire [7:0]  wbd_uart_adr_i  = u_top.u_uart_i2c_usb.reg_addr;
wire [7:0]  wbd_uart_dat_i  = u_top.u_uart_i2c_usb.reg_wdata;
wire [7:0]  wbd_uart_dat_o  = u_top.u_uart_i2c_usb.reg_rdata;
wire        wbd_uart_sel_i  = u_top.u_uart_i2c_usb.reg_be;

`endif

/**
`ifdef GL
//-----------------------------------------------------------------------------
// RISC IMEM amd DMEM Monitoring TASK
//-----------------------------------------------------------------------------

`define RISC_CORE  user_uart_tb.u_top.u_core.u_riscv_top

always@(posedge `RISC_CORE.wb_clk) begin
    if(`RISC_CORE.wbd_imem_ack_i)
          $display("RISCV-DEBUG => IMEM ADDRESS: %x Read Data : %x", `RISC_CORE.wbd_imem_adr_o,`RISC_CORE.wbd_imem_dat_i);
    if(`RISC_CORE.wbd_dmem_ack_i && `RISC_CORE.wbd_dmem_we_o)
          $display("RISCV-DEBUG => DMEM ADDRESS: %x Write Data: %x Resonse: %x", `RISC_CORE.wbd_dmem_adr_o,`RISC_CORE.wbd_dmem_dat_o);
    if(`RISC_CORE.wbd_dmem_ack_i && !`RISC_CORE.wbd_dmem_we_o)
          $display("RISCV-DEBUG => DMEM ADDRESS: %x READ Data : %x Resonse: %x", `RISC_CORE.wbd_dmem_adr_o,`RISC_CORE.wbd_dmem_dat_i);
end

`endif
**/

endmodule
`default_nettype wire
