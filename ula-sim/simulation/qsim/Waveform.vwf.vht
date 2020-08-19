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
-- Generated on "10/30/2019 12:32:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ula
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ula_vhd_vec_tst IS
END ula_vhd_vec_tst;
ARCHITECTURE ula_arch OF ula_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ai : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Bi : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Fi : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL M : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
COMPONENT ula
	PORT (
	Ai : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Bi : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Fi : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	M : IN STD_LOGIC;
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ula
	PORT MAP (
-- list connections between master ports and signals
	Ai => Ai,
	Bi => Bi,
	Fi => Fi,
	M => M,
	S0 => S0,
	S1 => S1
	);
-- Ai[7]
t_prcs_Ai_7: PROCESS
BEGIN
	Ai(7) <= '1';
	WAIT FOR 200000 ps;
	Ai(7) <= '0';
	WAIT FOR 200000 ps;
	Ai(7) <= '1';
	WAIT FOR 100000 ps;
	Ai(7) <= '0';
	WAIT FOR 100000 ps;
	Ai(7) <= '1';
	WAIT FOR 100000 ps;
	Ai(7) <= '0';
	WAIT FOR 200000 ps;
	Ai(7) <= '1';
WAIT;
END PROCESS t_prcs_Ai_7;
-- Ai[6]
t_prcs_Ai_6: PROCESS
BEGIN
	Ai(6) <= '0';
	WAIT FOR 300000 ps;
	Ai(6) <= '1';
	WAIT FOR 100000 ps;
	Ai(6) <= '0';
	WAIT FOR 100000 ps;
	Ai(6) <= '1';
	WAIT FOR 100000 ps;
	Ai(6) <= '0';
	WAIT FOR 300000 ps;
	Ai(6) <= '1';
WAIT;
END PROCESS t_prcs_Ai_6;
-- Ai[5]
t_prcs_Ai_5: PROCESS
BEGIN
	Ai(5) <= '0';
	WAIT FOR 100000 ps;
	Ai(5) <= '1';
	WAIT FOR 300000 ps;
	Ai(5) <= '0';
	WAIT FOR 200000 ps;
	Ai(5) <= '1';
	WAIT FOR 300000 ps;
	Ai(5) <= '0';
WAIT;
END PROCESS t_prcs_Ai_5;
-- Ai[4]
t_prcs_Ai_4: PROCESS
BEGIN
	Ai(4) <= '1';
	WAIT FOR 300000 ps;
	Ai(4) <= '0';
	WAIT FOR 200000 ps;
	Ai(4) <= '1';
	WAIT FOR 300000 ps;
	Ai(4) <= '0';
	WAIT FOR 100000 ps;
	Ai(4) <= '1';
WAIT;
END PROCESS t_prcs_Ai_4;
-- Ai[3]
t_prcs_Ai_3: PROCESS
BEGIN
	Ai(3) <= '0';
	WAIT FOR 100000 ps;
	Ai(3) <= '1';
	WAIT FOR 200000 ps;
	Ai(3) <= '0';
	WAIT FOR 200000 ps;
	Ai(3) <= '1';
	WAIT FOR 100000 ps;
	Ai(3) <= '0';
	WAIT FOR 100000 ps;
	Ai(3) <= '1';
WAIT;
END PROCESS t_prcs_Ai_3;
-- Ai[2]
t_prcs_Ai_2: PROCESS
BEGIN
	Ai(2) <= '0';
	WAIT FOR 100000 ps;
	Ai(2) <= '1';
	WAIT FOR 100000 ps;
	Ai(2) <= '0';
	WAIT FOR 200000 ps;
	Ai(2) <= '1';
	WAIT FOR 200000 ps;
	Ai(2) <= '0';
	WAIT FOR 100000 ps;
	Ai(2) <= '1';
	WAIT FOR 100000 ps;
	Ai(2) <= '0';
	WAIT FOR 100000 ps;
	Ai(2) <= '1';
WAIT;
END PROCESS t_prcs_Ai_2;
-- Ai[1]
t_prcs_Ai_1: PROCESS
BEGIN
	Ai(1) <= '0';
	WAIT FOR 100000 ps;
	Ai(1) <= '1';
	WAIT FOR 200000 ps;
	Ai(1) <= '0';
	WAIT FOR 100000 ps;
	Ai(1) <= '1';
	WAIT FOR 100000 ps;
	Ai(1) <= '0';
	WAIT FOR 100000 ps;
	Ai(1) <= '1';
	WAIT FOR 300000 ps;
	Ai(1) <= '0';
WAIT;
END PROCESS t_prcs_Ai_1;
-- Ai[0]
t_prcs_Ai_0: PROCESS
BEGIN
	Ai(0) <= '1';
	WAIT FOR 500000 ps;
	Ai(0) <= '0';
	WAIT FOR 100000 ps;
	Ai(0) <= '1';
	WAIT FOR 200000 ps;
	Ai(0) <= '0';
WAIT;
END PROCESS t_prcs_Ai_0;
-- Bi[7]
t_prcs_Bi_7: PROCESS
BEGIN
	Bi(7) <= '0';
WAIT;
END PROCESS t_prcs_Bi_7;
-- Bi[6]
t_prcs_Bi_6: PROCESS
BEGIN
	Bi(6) <= '0';
WAIT;
END PROCESS t_prcs_Bi_6;
-- Bi[5]
t_prcs_Bi_5: PROCESS
BEGIN
	Bi(5) <= '0';
WAIT;
END PROCESS t_prcs_Bi_5;
-- Bi[4]
t_prcs_Bi_4: PROCESS
BEGIN
	Bi(4) <= '0';
WAIT;
END PROCESS t_prcs_Bi_4;
-- Bi[3]
t_prcs_Bi_3: PROCESS
BEGIN
	Bi(3) <= '0';
	WAIT FOR 800000 ps;
	Bi(3) <= '1';
WAIT;
END PROCESS t_prcs_Bi_3;
-- Bi[2]
t_prcs_Bi_2: PROCESS
BEGIN
	Bi(2) <= '0';
	WAIT FOR 400000 ps;
	Bi(2) <= '1';
	WAIT FOR 400000 ps;
	Bi(2) <= '0';
WAIT;
END PROCESS t_prcs_Bi_2;
-- Bi[1]
t_prcs_Bi_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		Bi(1) <= '0';
		WAIT FOR 200000 ps;
		Bi(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	Bi(1) <= '0';
WAIT;
END PROCESS t_prcs_Bi_1;
-- Bi[0]
t_prcs_Bi_0: PROCESS
BEGIN
LOOP
	Bi(0) <= '0';
	WAIT FOR 100000 ps;
	Bi(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Bi_0;

-- M
t_prcs_M: PROCESS
BEGIN
	M <= '1';
WAIT;
END PROCESS t_prcs_M;

-- S0
t_prcs_S0: PROCESS
BEGIN
	S0 <= '1';
WAIT;
END PROCESS t_prcs_S0;

-- S1
t_prcs_S1: PROCESS
BEGIN
	S1 <= '0';
WAIT;
END PROCESS t_prcs_S1;
END ula_arch;
