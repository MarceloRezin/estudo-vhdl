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

-- DATE "10/28/2019 12:49:48"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ffjk IS
    PORT (
	j : IN std_logic;
	k : IN std_logic;
	clk : IN std_logic;
	q : BUFFER std_logic;
	q_bar : BUFFER std_logic
	);
END ffjk;

ARCHITECTURE structure OF ffjk IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_j : std_logic;
SIGNAL ww_k : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_q_bar : std_logic;
SIGNAL \q~output_o\ : std_logic;
SIGNAL \q_bar~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \k~input_o\ : std_logic;
SIGNAL \a[2]~1_combout\ : std_logic;
SIGNAL \j~input_o\ : std_logic;
SIGNAL \a[2]~2_combout\ : std_logic;
SIGNAL \q~1_combout\ : std_logic;
SIGNAL \q_bar~0_combout\ : std_logic;
SIGNAL \ALT_INV_q~1_combout\ : std_logic;

BEGIN

ww_j <= j;
ww_k <= k;
ww_clk <= clk;
q <= ww_q;
q_bar <= ww_q_bar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_q~1_combout\ <= NOT \q~1_combout\;

\q~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_q~1_combout\,
	devoe => ww_devoe,
	o => \q~output_o\);

\q_bar~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_bar~0_combout\,
	devoe => ww_devoe,
	o => \q_bar~output_o\);

\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\k~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k,
	o => \k~input_o\);

\a[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a[2]~1_combout\ = (!\a[2]~2_combout\ & ((\q~1_combout\) # ((!\k~input_o\) # (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~1_combout\,
	datab => \clk~input_o\,
	datac => \k~input_o\,
	datad => \a[2]~2_combout\,
	combout => \a[2]~1_combout\);

\j~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j,
	o => \j~input_o\);

\a[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a[2]~2_combout\ = (!\a[2]~1_combout\ & (((!\j~input_o\) # (!\clk~input_o\)) # (!\q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~1_combout\,
	datab => \q~1_combout\,
	datac => \clk~input_o\,
	datad => \j~input_o\,
	combout => \a[2]~2_combout\);

\q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q~1_combout\ = (\clk~input_o\ & (\q~1_combout\)) # (!\clk~input_o\ & ((\a[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~1_combout\,
	datab => \a[2]~2_combout\,
	datad => \clk~input_o\,
	combout => \q~1_combout\);

\q_bar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \q_bar~0_combout\ = (\q~1_combout\) # ((\a[2]~2_combout\ & !\clk~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q~1_combout\,
	datab => \a[2]~2_combout\,
	datad => \clk~input_o\,
	combout => \q_bar~0_combout\);

ww_q <= \q~output_o\;

ww_q_bar <= \q_bar~output_o\;
END structure;


