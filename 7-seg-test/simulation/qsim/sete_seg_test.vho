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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "01/26/2020 10:13:47"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sete_seg_test IS
    PORT (
	add_sig : IN std_logic;
	out_sig : OUT std_logic
	);
END sete_seg_test;

ARCHITECTURE structure OF sete_seg_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_add_sig : std_logic;
SIGNAL ww_out_sig : std_logic;
SIGNAL \out_sig~output_o\ : std_logic;
SIGNAL \add_sig~input_o\ : std_logic;
SIGNAL \s_temp[0]~1_combout\ : std_logic;
SIGNAL \s_temp[1]~0_combout\ : std_logic;
SIGNAL s_temp : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_add_sig <= add_sig;
out_sig <= ww_out_sig;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out_sig~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_temp(1),
	devoe => ww_devoe,
	o => \out_sig~output_o\);

\add_sig~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add_sig,
	o => \add_sig~input_o\);

\s_temp[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_temp[0]~1_combout\ = !s_temp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_temp(0),
	combout => \s_temp[0]~1_combout\);

\s_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \add_sig~input_o\,
	d => \s_temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_temp(0));

\s_temp[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_temp[1]~0_combout\ = s_temp(1) $ (s_temp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_temp(1),
	datad => s_temp(0),
	combout => \s_temp[1]~0_combout\);

\s_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \add_sig~input_o\,
	d => \s_temp[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_temp(1));

ww_out_sig <= \out_sig~output_o\;
END structure;


