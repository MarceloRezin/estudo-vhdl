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

-- DATE "11/12/2019 21:01:06"

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

ENTITY 	carry_ripple_adder IS
    PORT (
	A : IN std_logic_vector(11 DOWNTO 0);
	B : IN std_logic_vector(11 DOWNTO 0);
	CARRY_IN : IN std_logic;
	S : OUT std_logic_vector(11 DOWNTO 0);
	CARRY_OUT : OUT std_logic
	);
END carry_ripple_adder;

ARCHITECTURE structure OF carry_ripple_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_CARRY_IN : std_logic;
SIGNAL ww_S : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_CARRY_OUT : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \CARRY_OUT~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \CARRY_IN~input_o\ : std_logic;
SIGNAL \gen:0:FA|ha2|SUM~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \gen:0:FA|CARRY~0_combout\ : std_logic;
SIGNAL \gen:1:FA|ha2|SUM~combout\ : std_logic;
SIGNAL \gen:1:FA|CARRY~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \gen:2:FA|ha2|SUM~combout\ : std_logic;
SIGNAL \gen:2:FA|CARRY~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \gen:3:FA|ha2|SUM~combout\ : std_logic;
SIGNAL \gen:3:FA|CARRY~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \gen:4:FA|ha2|SUM~combout\ : std_logic;
SIGNAL \gen:4:FA|CARRY~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \gen:5:FA|ha2|SUM~combout\ : std_logic;
SIGNAL \gen:5:FA|CARRY~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \gen:6:FA|ha2|SUM~combout\ : std_logic;
SIGNAL \gen:6:FA|CARRY~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \gen:7:FA|ha2|SUM~combout\ : std_logic;
SIGNAL \gen:7:FA|CARRY~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \gen:8:FA|ha2|SUM~combout\ : std_logic;
SIGNAL \gen:8:FA|CARRY~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \gen:9:FA|ha2|SUM~combout\ : std_logic;
SIGNAL \gen:9:FA|CARRY~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \gen:10:FA|ha2|SUM~combout\ : std_logic;
SIGNAL \gen:10:FA|CARRY~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \gen:11:FA|ha2|SUM~combout\ : std_logic;
SIGNAL \gen:11:FA|CARRY~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_CARRY_IN <= CARRY_IN;
S <= ww_S;
CARRY_OUT <= ww_CARRY_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:0:FA|ha2|SUM~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

\S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:1:FA|ha2|SUM~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

\S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:2:FA|ha2|SUM~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

\S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:3:FA|ha2|SUM~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

\S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:4:FA|ha2|SUM~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

\S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:5:FA|ha2|SUM~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

\S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:6:FA|ha2|SUM~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

\S[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:7:FA|ha2|SUM~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

\S[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:8:FA|ha2|SUM~combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

\S[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:9:FA|ha2|SUM~combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

\S[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:10:FA|ha2|SUM~combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

\S[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:11:FA|ha2|SUM~combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

\CARRY_OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:11:FA|CARRY~0_combout\,
	devoe => ww_devoe,
	o => \CARRY_OUT~output_o\);

\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\CARRY_IN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CARRY_IN,
	o => \CARRY_IN~input_o\);

\gen:0:FA|ha2|SUM~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:0:FA|ha2|SUM~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\ $ (\CARRY_IN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \CARRY_IN~input_o\,
	combout => \gen:0:FA|ha2|SUM~0_combout\);

\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\gen:0:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:0:FA|CARRY~0_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\CARRY_IN~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & \CARRY_IN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \CARRY_IN~input_o\,
	combout => \gen:0:FA|CARRY~0_combout\);

\gen:1:FA|ha2|SUM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:1:FA|ha2|SUM~combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (\gen:0:FA|CARRY~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \gen:0:FA|CARRY~0_combout\,
	combout => \gen:1:FA|ha2|SUM~combout\);

\gen:1:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:1:FA|CARRY~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # (\gen:0:FA|CARRY~0_combout\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & \gen:0:FA|CARRY~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \gen:0:FA|CARRY~0_combout\,
	combout => \gen:1:FA|CARRY~0_combout\);

\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\gen:2:FA|ha2|SUM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:2:FA|ha2|SUM~combout\ = \gen:1:FA|CARRY~0_combout\ $ (\A[2]~input_o\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:1:FA|CARRY~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \gen:2:FA|ha2|SUM~combout\);

\gen:2:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:2:FA|CARRY~0_combout\ = (\gen:1:FA|CARRY~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) # (!\gen:1:FA|CARRY~0_combout\ & (\A[2]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:1:FA|CARRY~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \gen:2:FA|CARRY~0_combout\);

\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\gen:3:FA|ha2|SUM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:3:FA|ha2|SUM~combout\ = \gen:2:FA|CARRY~0_combout\ $ (\A[3]~input_o\ $ (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:2:FA|CARRY~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \gen:3:FA|ha2|SUM~combout\);

\gen:3:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:3:FA|CARRY~0_combout\ = (\gen:2:FA|CARRY~0_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) # (!\gen:2:FA|CARRY~0_combout\ & (\A[3]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:2:FA|CARRY~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \gen:3:FA|CARRY~0_combout\);

\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\gen:4:FA|ha2|SUM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:4:FA|ha2|SUM~combout\ = \gen:3:FA|CARRY~0_combout\ $ (\A[4]~input_o\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:3:FA|CARRY~0_combout\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	combout => \gen:4:FA|ha2|SUM~combout\);

\gen:4:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:4:FA|CARRY~0_combout\ = (\gen:3:FA|CARRY~0_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\))) # (!\gen:3:FA|CARRY~0_combout\ & (\A[4]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:3:FA|CARRY~0_combout\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	combout => \gen:4:FA|CARRY~0_combout\);

\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\gen:5:FA|ha2|SUM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:5:FA|ha2|SUM~combout\ = \gen:4:FA|CARRY~0_combout\ $ (\A[5]~input_o\ $ (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:4:FA|CARRY~0_combout\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \gen:5:FA|ha2|SUM~combout\);

\gen:5:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:5:FA|CARRY~0_combout\ = (\gen:4:FA|CARRY~0_combout\ & ((\A[5]~input_o\) # (\B[5]~input_o\))) # (!\gen:4:FA|CARRY~0_combout\ & (\A[5]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:4:FA|CARRY~0_combout\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \gen:5:FA|CARRY~0_combout\);

\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\gen:6:FA|ha2|SUM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:6:FA|ha2|SUM~combout\ = \gen:5:FA|CARRY~0_combout\ $ (\A[6]~input_o\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:5:FA|CARRY~0_combout\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	combout => \gen:6:FA|ha2|SUM~combout\);

\gen:6:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:6:FA|CARRY~0_combout\ = (\gen:5:FA|CARRY~0_combout\ & ((\A[6]~input_o\) # (\B[6]~input_o\))) # (!\gen:5:FA|CARRY~0_combout\ & (\A[6]~input_o\ & \B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:5:FA|CARRY~0_combout\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	combout => \gen:6:FA|CARRY~0_combout\);

\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\gen:7:FA|ha2|SUM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:7:FA|ha2|SUM~combout\ = \gen:6:FA|CARRY~0_combout\ $ (\A[7]~input_o\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:6:FA|CARRY~0_combout\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	combout => \gen:7:FA|ha2|SUM~combout\);

\gen:7:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:7:FA|CARRY~0_combout\ = (\gen:6:FA|CARRY~0_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\))) # (!\gen:6:FA|CARRY~0_combout\ & (\A[7]~input_o\ & \B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:6:FA|CARRY~0_combout\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	combout => \gen:7:FA|CARRY~0_combout\);

\A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\B[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\gen:8:FA|ha2|SUM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:8:FA|ha2|SUM~combout\ = \gen:7:FA|CARRY~0_combout\ $ (\A[8]~input_o\ $ (\B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:7:FA|CARRY~0_combout\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	combout => \gen:8:FA|ha2|SUM~combout\);

\gen:8:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:8:FA|CARRY~0_combout\ = (\gen:7:FA|CARRY~0_combout\ & ((\A[8]~input_o\) # (\B[8]~input_o\))) # (!\gen:7:FA|CARRY~0_combout\ & (\A[8]~input_o\ & \B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:7:FA|CARRY~0_combout\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	combout => \gen:8:FA|CARRY~0_combout\);

\A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\B[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\gen:9:FA|ha2|SUM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:9:FA|ha2|SUM~combout\ = \gen:8:FA|CARRY~0_combout\ $ (\A[9]~input_o\ $ (\B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:8:FA|CARRY~0_combout\,
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	combout => \gen:9:FA|ha2|SUM~combout\);

\gen:9:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:9:FA|CARRY~0_combout\ = (\gen:8:FA|CARRY~0_combout\ & ((\A[9]~input_o\) # (\B[9]~input_o\))) # (!\gen:8:FA|CARRY~0_combout\ & (\A[9]~input_o\ & \B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:8:FA|CARRY~0_combout\,
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	combout => \gen:9:FA|CARRY~0_combout\);

\A[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\B[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\gen:10:FA|ha2|SUM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:10:FA|ha2|SUM~combout\ = \gen:9:FA|CARRY~0_combout\ $ (\A[10]~input_o\ $ (\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:9:FA|CARRY~0_combout\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	combout => \gen:10:FA|ha2|SUM~combout\);

\gen:10:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:10:FA|CARRY~0_combout\ = (\gen:9:FA|CARRY~0_combout\ & ((\A[10]~input_o\) # (\B[10]~input_o\))) # (!\gen:9:FA|CARRY~0_combout\ & (\A[10]~input_o\ & \B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:9:FA|CARRY~0_combout\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	combout => \gen:10:FA|CARRY~0_combout\);

\A[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\B[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\gen:11:FA|ha2|SUM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:11:FA|ha2|SUM~combout\ = \gen:10:FA|CARRY~0_combout\ $ (\A[11]~input_o\ $ (\B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:10:FA|CARRY~0_combout\,
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	combout => \gen:11:FA|ha2|SUM~combout\);

\gen:11:FA|CARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen:11:FA|CARRY~0_combout\ = (\gen:10:FA|CARRY~0_combout\ & ((\A[11]~input_o\) # (\B[11]~input_o\))) # (!\gen:10:FA|CARRY~0_combout\ & (\A[11]~input_o\ & \B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen:10:FA|CARRY~0_combout\,
	datab => \A[11]~input_o\,
	datac => \B[11]~input_o\,
	combout => \gen:11:FA|CARRY~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_CARRY_OUT <= \CARRY_OUT~output_o\;
END structure;


