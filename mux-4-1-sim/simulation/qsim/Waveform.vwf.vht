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
-- Generated on "10/29/2019 12:49:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_4_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_4_1_vhd_vec_tst IS
END mux_4_1_vhd_vec_tst;
ARCHITECTURE mux_4_1_arch OF mux_4_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D0 : STD_LOGIC;
SIGNAL D1 : STD_LOGIC;
SIGNAL D2 : STD_LOGIC;
SIGNAL D3 : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT mux_4_1
	PORT (
	D0 : IN STD_LOGIC;
	D1 : IN STD_LOGIC;
	D2 : IN STD_LOGIC;
	D3 : IN STD_LOGIC;
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC;
	Y : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux_4_1
	PORT MAP (
-- list connections between master ports and signals
	D0 => D0,
	D1 => D1,
	D2 => D2,
	D3 => D3,
	S0 => S0,
	S1 => S1,
	Y => Y
	);

-- D0
t_prcs_D0: PROCESS
BEGIN
	D0 <= '0';
WAIT;
END PROCESS t_prcs_D0;

-- D1
t_prcs_D1: PROCESS
BEGIN
	D1 <= '0';
WAIT;
END PROCESS t_prcs_D1;

-- D2
t_prcs_D2: PROCESS
BEGIN
	D2 <= '0';
WAIT;
END PROCESS t_prcs_D2;

-- D3
t_prcs_D3: PROCESS
BEGIN
	D3 <= '1';
WAIT;
END PROCESS t_prcs_D3;

-- S0
t_prcs_S0: PROCESS
BEGIN
	S0 <= '1';
WAIT;
END PROCESS t_prcs_S0;

-- S1
t_prcs_S1: PROCESS
BEGIN
	S1 <= '1';
WAIT;
END PROCESS t_prcs_S1;
END mux_4_1_arch;
