-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/26/2020 10:13:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sete_seg_test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sete_seg_test_vhd_vec_tst IS
END sete_seg_test_vhd_vec_tst;
ARCHITECTURE sete_seg_test_arch OF sete_seg_test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL add_sig : STD_LOGIC;
SIGNAL out_sig : STD_LOGIC;
COMPONENT sete_seg_test
	PORT (
	add_sig : IN STD_LOGIC;
	out_sig : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sete_seg_test
	PORT MAP (
-- list connections between master ports and signals
	add_sig => add_sig,
	out_sig => out_sig
	);

-- add_sig
t_prcs_add_sig: PROCESS
BEGIN
	add_sig <= '0';
	WAIT FOR 40000 ps;
	add_sig <= '1';
	WAIT FOR 160000 ps;
	add_sig <= '0';
	WAIT FOR 120000 ps;
	add_sig <= '1';
	WAIT FOR 160000 ps;
	add_sig <= '0';
WAIT;
END PROCESS t_prcs_add_sig;
END sete_seg_test_arch;
