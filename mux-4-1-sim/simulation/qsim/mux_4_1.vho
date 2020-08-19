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

-- DATE "10/29/2019 12:49:39"

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

ENTITY 	mux_4_1 IS
    PORT (
	D0 : IN std_logic;
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	S0 : IN std_logic;
	S1 : IN std_logic;
	Y : BUFFER std_logic
	);
END mux_4_1;

ARCHITECTURE structure OF mux_4_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \D2~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \D0~input_o\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \D3~input_o\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;

BEGIN

ww_D0 <= D0;
ww_D1 <= D1;
ww_D2 <= D2;
ww_D3 <= D3;
ww_S0 <= S0;
ww_S1 <= S1;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~1_combout\,
	devoe => ww_devoe,
	o => \Y~output_o\);

\D2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2,
	o => \D2~input_o\);

\S1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

\D1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

\S0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

\D0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0,
	o => \D0~input_o\);

\Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = (\S1~input_o\ & (((\S0~input_o\)))) # (!\S1~input_o\ & ((\S0~input_o\ & (\D1~input_o\)) # (!\S0~input_o\ & ((\D0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \D1~input_o\,
	datac => \S0~input_o\,
	datad => \D0~input_o\,
	combout => \Y~0_combout\);

\D3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3,
	o => \D3~input_o\);

\Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = (\S1~input_o\ & ((\Y~0_combout\ & ((\D3~input_o\))) # (!\Y~0_combout\ & (\D2~input_o\)))) # (!\S1~input_o\ & (((\Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2~input_o\,
	datab => \S1~input_o\,
	datac => \Y~0_combout\,
	datad => \D3~input_o\,
	combout => \Y~1_combout\);

ww_Y <= \Y~output_o\;
END structure;


