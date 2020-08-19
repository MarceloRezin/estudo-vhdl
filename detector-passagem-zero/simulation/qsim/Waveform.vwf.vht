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
-- Generated on "04/21/2020 14:01:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          detector_passagem_zero
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY detector_passagem_zero_vhd_vec_tst IS
END detector_passagem_zero_vhd_vec_tst;
ARCHITECTURE detector_passagem_zero_arch OF detector_passagem_zero_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL out_display_centena : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL out_display_dezena : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL out_display_unidade : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL passagem_zero : STD_LOGIC;
SIGNAL soma : STD_LOGIC_VECTOR(10 DOWNTO 0);
COMPONENT detector_passagem_zero
	PORT (
	clock : IN STD_LOGIC;
	out_display_centena : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	out_display_dezena : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	out_display_unidade : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	passagem_zero : IN STD_LOGIC;
	soma : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : detector_passagem_zero
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	out_display_centena => out_display_centena,
	out_display_dezena => out_display_dezena,
	out_display_unidade => out_display_unidade,
	passagem_zero => passagem_zero,
	soma => soma
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- passagem_zero
t_prcs_passagem_zero: PROCESS
BEGIN
LOOP
	passagem_zero <= '0';
	WAIT FOR 100000 ps;
	passagem_zero <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_passagem_zero;
END detector_passagem_zero_arch;
