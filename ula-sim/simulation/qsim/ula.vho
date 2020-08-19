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

-- DATE "10/30/2019 12:32:32"

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

ENTITY 	ula IS
    PORT (
	Ai : IN std_logic_vector(7 DOWNTO 0);
	Bi : IN std_logic_vector(7 DOWNTO 0);
	S1 : IN std_logic;
	S0 : IN std_logic;
	M : IN std_logic;
	Fi : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ula;

ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ai : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bi : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_Fi : std_logic_vector(7 DOWNTO 0);
SIGNAL \Fi[0]~output_o\ : std_logic;
SIGNAL \Fi[1]~output_o\ : std_logic;
SIGNAL \Fi[2]~output_o\ : std_logic;
SIGNAL \Fi[3]~output_o\ : std_logic;
SIGNAL \Fi[4]~output_o\ : std_logic;
SIGNAL \Fi[5]~output_o\ : std_logic;
SIGNAL \Fi[6]~output_o\ : std_logic;
SIGNAL \Fi[7]~output_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \Bi[0]~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Ai[0]~input_o\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Fi~0_combout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Bi[1]~input_o\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Ai[1]~input_o\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Fi~1_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Bi[2]~input_o\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Ai[2]~input_o\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Fi~2_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Bi[3]~input_o\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Ai[3]~input_o\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Fi~3_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Bi[4]~input_o\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Ai[4]~input_o\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Fi~4_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Bi[5]~input_o\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Ai[5]~input_o\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Fi~5_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Bi[6]~input_o\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Ai[6]~input_o\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Fi~6_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Bi[7]~input_o\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Ai[7]~input_o\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Fi~7_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;

BEGIN

ww_Ai <= Ai;
ww_Bi <= Bi;
ww_S1 <= S1;
ww_S0 <= S0;
ww_M <= M;
Fi <= ww_Fi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Fi[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_combout\,
	devoe => ww_devoe,
	o => \Fi[0]~output_o\);

\Fi[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_combout\,
	devoe => ww_devoe,
	o => \Fi[1]~output_o\);

\Fi[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_combout\,
	devoe => ww_devoe,
	o => \Fi[2]~output_o\);

\Fi[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_combout\,
	devoe => ww_devoe,
	o => \Fi[3]~output_o\);

\Fi[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_combout\,
	devoe => ww_devoe,
	o => \Fi[4]~output_o\);

\Fi[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_combout\,
	devoe => ww_devoe,
	o => \Fi[5]~output_o\);

\Fi[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_combout\,
	devoe => ww_devoe,
	o => \Fi[6]~output_o\);

\Fi[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~33_combout\,
	devoe => ww_devoe,
	o => \Fi[7]~output_o\);

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

\Bi[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(0),
	o => \Bi[0]~input_o\);

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

\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\S1~input_o\) # (\Bi[0]~input_o\ $ (\S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datac => \Bi[0]~input_o\,
	datad => \S0~input_o\,
	combout => \Add0~0_combout\);

\Ai[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(0),
	o => \Ai[0]~input_o\);

\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY((!\S1~input_o\ & \S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \S0~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\Ai[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\Ai[0]~input_o\ & (!\Add0~2_cout\)))) # (!\Add0~0_combout\ & ((\Ai[0]~input_o\ & (!\Add0~2_cout\)) # (!\Ai[0]~input_o\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & (!\Ai[0]~input_o\ & !\Add0~2_cout\)) # (!\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\Ai[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Ai[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

\Fi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Fi~0_combout\ = (\Ai[0]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\Bi[0]~input_o\))))) # (!\Ai[0]~input_o\ & ((\S0~input_o\ & ((\Bi[0]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\Bi[0]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \Bi[0]~input_o\,
	datac => \Ai[0]~input_o\,
	datad => \S1~input_o\,
	combout => \Fi~0_combout\);

\M~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\M~input_o\ & (\Add0~3_combout\)) # (!\M~input_o\ & ((\Fi~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Fi~0_combout\,
	datad => \M~input_o\,
	combout => \Add0~5_combout\);

\Bi[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(1),
	o => \Bi[1]~input_o\);

\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \S0~input_o\ $ (((!\S1~input_o\ & \Bi[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \S1~input_o\,
	datad => \Bi[1]~input_o\,
	combout => \Add0~6_combout\);

\Ai[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(1),
	o => \Ai[1]~input_o\);

\Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = ((\Add0~6_combout\ $ (\Ai[1]~input_o\ $ (!\Add0~4\)))) # (GND)
-- \Add0~8\ = CARRY((\Add0~6_combout\ & ((\Ai[1]~input_o\) # (!\Add0~4\))) # (!\Add0~6_combout\ & (\Ai[1]~input_o\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Ai[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

\Fi~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Fi~1_combout\ = (\Ai[1]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\Bi[1]~input_o\))))) # (!\Ai[1]~input_o\ & ((\S0~input_o\ & ((\Bi[1]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\Bi[1]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \Bi[1]~input_o\,
	datac => \Ai[1]~input_o\,
	datad => \S1~input_o\,
	combout => \Fi~1_combout\);

\Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\M~input_o\ & (\Add0~7_combout\)) # (!\M~input_o\ & ((\Fi~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Fi~1_combout\,
	datad => \M~input_o\,
	combout => \Add0~9_combout\);

\Bi[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(2),
	o => \Bi[2]~input_o\);

\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \S0~input_o\ $ (((!\S1~input_o\ & \Bi[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \S1~input_o\,
	datad => \Bi[2]~input_o\,
	combout => \Add0~10_combout\);

\Ai[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(2),
	o => \Ai[2]~input_o\);

\Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~10_combout\ & ((\Ai[2]~input_o\ & (\Add0~8\ & VCC)) # (!\Ai[2]~input_o\ & (!\Add0~8\)))) # (!\Add0~10_combout\ & ((\Ai[2]~input_o\ & (!\Add0~8\)) # (!\Ai[2]~input_o\ & ((\Add0~8\) # (GND)))))
-- \Add0~12\ = CARRY((\Add0~10_combout\ & (!\Ai[2]~input_o\ & !\Add0~8\)) # (!\Add0~10_combout\ & ((!\Add0~8\) # (!\Ai[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Ai[2]~input_o\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

\Fi~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Fi~2_combout\ = (\Ai[2]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\Bi[2]~input_o\))))) # (!\Ai[2]~input_o\ & ((\S0~input_o\ & ((\Bi[2]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\Bi[2]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \Bi[2]~input_o\,
	datac => \Ai[2]~input_o\,
	datad => \S1~input_o\,
	combout => \Fi~2_combout\);

\Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\M~input_o\ & (\Add0~11_combout\)) # (!\M~input_o\ & ((\Fi~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \Fi~2_combout\,
	datad => \M~input_o\,
	combout => \Add0~13_combout\);

\Bi[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(3),
	o => \Bi[3]~input_o\);

\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \S0~input_o\ $ (((!\S1~input_o\ & \Bi[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \S1~input_o\,
	datad => \Bi[3]~input_o\,
	combout => \Add0~14_combout\);

\Ai[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(3),
	o => \Ai[3]~input_o\);

\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = ((\Add0~14_combout\ $ (\Ai[3]~input_o\ $ (!\Add0~12\)))) # (GND)
-- \Add0~16\ = CARRY((\Add0~14_combout\ & ((\Ai[3]~input_o\) # (!\Add0~12\))) # (!\Add0~14_combout\ & (\Ai[3]~input_o\ & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Ai[3]~input_o\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

\Fi~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Fi~3_combout\ = (\Ai[3]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\Bi[3]~input_o\))))) # (!\Ai[3]~input_o\ & ((\S0~input_o\ & ((\Bi[3]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\Bi[3]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \Bi[3]~input_o\,
	datac => \Ai[3]~input_o\,
	datad => \S1~input_o\,
	combout => \Fi~3_combout\);

\Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\M~input_o\ & (\Add0~15_combout\)) # (!\M~input_o\ & ((\Fi~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \Fi~3_combout\,
	datad => \M~input_o\,
	combout => \Add0~17_combout\);

\Bi[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(4),
	o => \Bi[4]~input_o\);

\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \S0~input_o\ $ (((!\S1~input_o\ & \Bi[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \S1~input_o\,
	datad => \Bi[4]~input_o\,
	combout => \Add0~18_combout\);

\Ai[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(4),
	o => \Ai[4]~input_o\);

\Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~18_combout\ & ((\Ai[4]~input_o\ & (\Add0~16\ & VCC)) # (!\Ai[4]~input_o\ & (!\Add0~16\)))) # (!\Add0~18_combout\ & ((\Ai[4]~input_o\ & (!\Add0~16\)) # (!\Ai[4]~input_o\ & ((\Add0~16\) # (GND)))))
-- \Add0~20\ = CARRY((\Add0~18_combout\ & (!\Ai[4]~input_o\ & !\Add0~16\)) # (!\Add0~18_combout\ & ((!\Add0~16\) # (!\Ai[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Ai[4]~input_o\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

\Fi~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Fi~4_combout\ = (\Ai[4]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\Bi[4]~input_o\))))) # (!\Ai[4]~input_o\ & ((\S0~input_o\ & ((\Bi[4]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\Bi[4]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \Bi[4]~input_o\,
	datac => \Ai[4]~input_o\,
	datad => \S1~input_o\,
	combout => \Fi~4_combout\);

\Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\M~input_o\ & (\Add0~19_combout\)) # (!\M~input_o\ & ((\Fi~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~19_combout\,
	datab => \Fi~4_combout\,
	datad => \M~input_o\,
	combout => \Add0~21_combout\);

\Bi[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(5),
	o => \Bi[5]~input_o\);

\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = \S0~input_o\ $ (((!\S1~input_o\ & \Bi[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \S1~input_o\,
	datad => \Bi[5]~input_o\,
	combout => \Add0~22_combout\);

\Ai[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(5),
	o => \Ai[5]~input_o\);

\Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = ((\Add0~22_combout\ $ (\Ai[5]~input_o\ $ (!\Add0~20\)))) # (GND)
-- \Add0~24\ = CARRY((\Add0~22_combout\ & ((\Ai[5]~input_o\) # (!\Add0~20\))) # (!\Add0~22_combout\ & (\Ai[5]~input_o\ & !\Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Ai[5]~input_o\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

\Fi~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Fi~5_combout\ = (\Ai[5]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\Bi[5]~input_o\))))) # (!\Ai[5]~input_o\ & ((\S0~input_o\ & ((\Bi[5]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\Bi[5]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \Bi[5]~input_o\,
	datac => \Ai[5]~input_o\,
	datad => \S1~input_o\,
	combout => \Fi~5_combout\);

\Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\M~input_o\ & (\Add0~23_combout\)) # (!\M~input_o\ & ((\Fi~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \Fi~5_combout\,
	datad => \M~input_o\,
	combout => \Add0~25_combout\);

\Bi[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(6),
	o => \Bi[6]~input_o\);

\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \S0~input_o\ $ (((!\S1~input_o\ & \Bi[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \S1~input_o\,
	datad => \Bi[6]~input_o\,
	combout => \Add0~26_combout\);

\Ai[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(6),
	o => \Ai[6]~input_o\);

\Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~26_combout\ & ((\Ai[6]~input_o\ & (\Add0~24\ & VCC)) # (!\Ai[6]~input_o\ & (!\Add0~24\)))) # (!\Add0~26_combout\ & ((\Ai[6]~input_o\ & (!\Add0~24\)) # (!\Ai[6]~input_o\ & ((\Add0~24\) # (GND)))))
-- \Add0~28\ = CARRY((\Add0~26_combout\ & (!\Ai[6]~input_o\ & !\Add0~24\)) # (!\Add0~26_combout\ & ((!\Add0~24\) # (!\Ai[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Ai[6]~input_o\,
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

\Fi~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Fi~6_combout\ = (\Ai[6]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\Bi[6]~input_o\))))) # (!\Ai[6]~input_o\ & ((\S0~input_o\ & ((\Bi[6]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\Bi[6]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \Bi[6]~input_o\,
	datac => \Ai[6]~input_o\,
	datad => \S1~input_o\,
	combout => \Fi~6_combout\);

\Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\M~input_o\ & (\Add0~27_combout\)) # (!\M~input_o\ & ((\Fi~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \Fi~6_combout\,
	datad => \M~input_o\,
	combout => \Add0~29_combout\);

\Bi[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(7),
	o => \Bi[7]~input_o\);

\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \S0~input_o\ $ (((!\S1~input_o\ & \Bi[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \S1~input_o\,
	datad => \Bi[7]~input_o\,
	combout => \Add0~30_combout\);

\Ai[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(7),
	o => \Ai[7]~input_o\);

\Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = \Add0~30_combout\ $ (\Ai[7]~input_o\ $ (!\Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Ai[7]~input_o\,
	cin => \Add0~28\,
	combout => \Add0~31_combout\);

\Fi~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Fi~7_combout\ = (\Ai[7]~input_o\ & (\S1~input_o\ $ (((\S0~input_o\) # (\Bi[7]~input_o\))))) # (!\Ai[7]~input_o\ & ((\S0~input_o\ & ((\Bi[7]~input_o\) # (\S1~input_o\))) # (!\S0~input_o\ & (\Bi[7]~input_o\ & \S1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \Bi[7]~input_o\,
	datac => \Ai[7]~input_o\,
	datad => \S1~input_o\,
	combout => \Fi~7_combout\);

\Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\M~input_o\ & (\Add0~31_combout\)) # (!\M~input_o\ & ((\Fi~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \Fi~7_combout\,
	datad => \M~input_o\,
	combout => \Add0~33_combout\);

ww_Fi(0) <= \Fi[0]~output_o\;

ww_Fi(1) <= \Fi[1]~output_o\;

ww_Fi(2) <= \Fi[2]~output_o\;

ww_Fi(3) <= \Fi[3]~output_o\;

ww_Fi(4) <= \Fi[4]~output_o\;

ww_Fi(5) <= \Fi[5]~output_o\;

ww_Fi(6) <= \Fi[6]~output_o\;

ww_Fi(7) <= \Fi[7]~output_o\;
END structure;


