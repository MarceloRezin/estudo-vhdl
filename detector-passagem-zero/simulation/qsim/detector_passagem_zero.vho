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

-- DATE "04/21/2020 14:01:05"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
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

ENTITY 	detector_passagem_zero IS
    PORT (
	passagem_zero : IN std_logic;
	clock : IN std_logic;
	out_display_unidade : OUT std_logic_vector(6 DOWNTO 0);
	out_display_dezena : OUT std_logic_vector(6 DOWNTO 0);
	out_display_centena : OUT std_logic_vector(6 DOWNTO 0);
	soma : OUT std_logic_vector(10 DOWNTO 0)
	);
END detector_passagem_zero;

ARCHITECTURE structure OF detector_passagem_zero IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_passagem_zero : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_out_display_unidade : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_out_display_dezena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_out_display_centena : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_soma : std_logic_vector(10 DOWNTO 0);
SIGNAL \out_display_unidade[0]~output_o\ : std_logic;
SIGNAL \out_display_unidade[1]~output_o\ : std_logic;
SIGNAL \out_display_unidade[2]~output_o\ : std_logic;
SIGNAL \out_display_unidade[3]~output_o\ : std_logic;
SIGNAL \out_display_unidade[4]~output_o\ : std_logic;
SIGNAL \out_display_unidade[5]~output_o\ : std_logic;
SIGNAL \out_display_unidade[6]~output_o\ : std_logic;
SIGNAL \out_display_dezena[0]~output_o\ : std_logic;
SIGNAL \out_display_dezena[1]~output_o\ : std_logic;
SIGNAL \out_display_dezena[2]~output_o\ : std_logic;
SIGNAL \out_display_dezena[3]~output_o\ : std_logic;
SIGNAL \out_display_dezena[4]~output_o\ : std_logic;
SIGNAL \out_display_dezena[5]~output_o\ : std_logic;
SIGNAL \out_display_dezena[6]~output_o\ : std_logic;
SIGNAL \out_display_centena[0]~output_o\ : std_logic;
SIGNAL \out_display_centena[1]~output_o\ : std_logic;
SIGNAL \out_display_centena[2]~output_o\ : std_logic;
SIGNAL \out_display_centena[3]~output_o\ : std_logic;
SIGNAL \out_display_centena[4]~output_o\ : std_logic;
SIGNAL \out_display_centena[5]~output_o\ : std_logic;
SIGNAL \out_display_centena[6]~output_o\ : std_logic;
SIGNAL \soma[0]~output_o\ : std_logic;
SIGNAL \soma[1]~output_o\ : std_logic;
SIGNAL \soma[2]~output_o\ : std_logic;
SIGNAL \soma[3]~output_o\ : std_logic;
SIGNAL \soma[4]~output_o\ : std_logic;
SIGNAL \soma[5]~output_o\ : std_logic;
SIGNAL \soma[6]~output_o\ : std_logic;
SIGNAL \soma[7]~output_o\ : std_logic;
SIGNAL \soma[8]~output_o\ : std_logic;
SIGNAL \soma[9]~output_o\ : std_logic;
SIGNAL \soma[10]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \unidade_tmp~2_combout\ : std_logic;
SIGNAL \passagem_zero~input_o\ : std_logic;
SIGNAL \reset~q\ : std_logic;
SIGNAL \deteccao_zero~q\ : std_logic;
SIGNAL \unidade_tmp~10_combout\ : std_logic;
SIGNAL \unidade_tmp[0]~4_combout\ : std_logic;
SIGNAL \unidade_tmp[0]~11_combout\ : std_logic;
SIGNAL \unidade_tmp~6_combout\ : std_logic;
SIGNAL \unidade_tmp~7_combout\ : std_logic;
SIGNAL \unidade_tmp[0]~3_combout\ : std_logic;
SIGNAL \unidade_tmp~8_combout\ : std_logic;
SIGNAL \unidade_tmp~9_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \unidade_tmp~5_combout\ : std_logic;
SIGNAL \display_unidade|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_unidade|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_unidade|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_unidade|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_unidade|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade|out_display[6]~6_combout\ : std_logic;
SIGNAL \dezena_tmp~8_combout\ : std_logic;
SIGNAL \dezena_tmp~6_combout\ : std_logic;
SIGNAL \dezena_tmp~7_combout\ : std_logic;
SIGNAL \dezena_tmp~4_combout\ : std_logic;
SIGNAL \dezena_tmp~5_combout\ : std_logic;
SIGNAL \dezena_tmp~0_combout\ : std_logic;
SIGNAL \dezena_tmp~1_combout\ : std_logic;
SIGNAL \dezena_tmp~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \dezena_tmp~3_combout\ : std_logic;
SIGNAL \display_dezena|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_dezena|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_dezena|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_dezena|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_dezena|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena|out_display[6]~6_combout\ : std_logic;
SIGNAL \centena_tmp~0_combout\ : std_logic;
SIGNAL \centena_tmp~1_combout\ : std_logic;
SIGNAL \centena_tmp~2_combout\ : std_logic;
SIGNAL \centena_tmp~6_combout\ : std_logic;
SIGNAL \centena_tmp~5_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \centena_tmp~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \centena_tmp~3_combout\ : std_logic;
SIGNAL \display_centena|out_display[0]~0_combout\ : std_logic;
SIGNAL \display_centena|out_display[1]~1_combout\ : std_logic;
SIGNAL \display_centena|out_display[2]~2_combout\ : std_logic;
SIGNAL \display_centena|out_display[3]~3_combout\ : std_logic;
SIGNAL \display_centena|out_display[4]~4_combout\ : std_logic;
SIGNAL \display_centena|out_display[5]~5_combout\ : std_logic;
SIGNAL \display_centena|out_display[6]~6_combout\ : std_logic;
SIGNAL \soma_tmp[0]~11_combout\ : std_logic;
SIGNAL \soma_tmp[10]~13_combout\ : std_logic;
SIGNAL \soma_tmp[0]~12\ : std_logic;
SIGNAL \soma_tmp[1]~14_combout\ : std_logic;
SIGNAL \soma_tmp[1]~15\ : std_logic;
SIGNAL \soma_tmp[2]~16_combout\ : std_logic;
SIGNAL \soma_tmp[2]~17\ : std_logic;
SIGNAL \soma_tmp[3]~18_combout\ : std_logic;
SIGNAL \soma_tmp[3]~19\ : std_logic;
SIGNAL \soma_tmp[4]~20_combout\ : std_logic;
SIGNAL \soma_tmp[4]~21\ : std_logic;
SIGNAL \soma_tmp[5]~22_combout\ : std_logic;
SIGNAL \soma_tmp[5]~23\ : std_logic;
SIGNAL \soma_tmp[6]~24_combout\ : std_logic;
SIGNAL \soma_tmp[6]~25\ : std_logic;
SIGNAL \soma_tmp[7]~26_combout\ : std_logic;
SIGNAL \soma_tmp[7]~27\ : std_logic;
SIGNAL \soma_tmp[8]~28_combout\ : std_logic;
SIGNAL \soma_tmp[8]~29\ : std_logic;
SIGNAL \soma_tmp[9]~30_combout\ : std_logic;
SIGNAL \soma_tmp[9]~31\ : std_logic;
SIGNAL \soma_tmp[10]~32_combout\ : std_logic;
SIGNAL centena_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL dezena_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL count : std_logic_vector(25 DOWNTO 0);
SIGNAL unidade_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL centena : std_logic_vector(3 DOWNTO 0);
SIGNAL dezena : std_logic_vector(3 DOWNTO 0);
SIGNAL unidade : std_logic_vector(3 DOWNTO 0);
SIGNAL soma_tmp : std_logic_vector(10 DOWNTO 0);
SIGNAL \display_centena|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_dezena|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_dezena|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_unidade|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \display_unidade|ALT_INV_out_display[2]~2_combout\ : std_logic;
SIGNAL \display_centena|ALT_INV_out_display[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_deteccao_zero~q\ : std_logic;
SIGNAL \ALT_INV_reset~q\ : std_logic;

BEGIN

ww_passagem_zero <= passagem_zero;
ww_clock <= clock;
out_display_unidade <= ww_out_display_unidade;
out_display_dezena <= ww_out_display_dezena;
out_display_centena <= ww_out_display_centena;
soma <= ww_soma;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\display_centena|ALT_INV_out_display[2]~2_combout\ <= NOT \display_centena|out_display[2]~2_combout\;
\display_dezena|ALT_INV_out_display[5]~5_combout\ <= NOT \display_dezena|out_display[5]~5_combout\;
\display_dezena|ALT_INV_out_display[2]~2_combout\ <= NOT \display_dezena|out_display[2]~2_combout\;
\display_unidade|ALT_INV_out_display[5]~5_combout\ <= NOT \display_unidade|out_display[5]~5_combout\;
\display_unidade|ALT_INV_out_display[2]~2_combout\ <= NOT \display_unidade|out_display[2]~2_combout\;
\display_centena|ALT_INV_out_display[5]~5_combout\ <= NOT \display_centena|out_display[5]~5_combout\;
\ALT_INV_deteccao_zero~q\ <= NOT \deteccao_zero~q\;
\ALT_INV_reset~q\ <= NOT \reset~q\;

\out_display_unidade[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_display_unidade[0]~output_o\);

\out_display_unidade[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_display_unidade[1]~output_o\);

\out_display_unidade[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_display_unidade[2]~output_o\);

\out_display_unidade[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \out_display_unidade[3]~output_o\);

\out_display_unidade[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \out_display_unidade[4]~output_o\);

\out_display_unidade[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \out_display_unidade[5]~output_o\);

\out_display_unidade[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_unidade|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \out_display_unidade[6]~output_o\);

\out_display_dezena[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_display_dezena[0]~output_o\);

\out_display_dezena[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_display_dezena[1]~output_o\);

\out_display_dezena[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_display_dezena[2]~output_o\);

\out_display_dezena[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \out_display_dezena[3]~output_o\);

\out_display_dezena[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \out_display_dezena[4]~output_o\);

\out_display_dezena[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \out_display_dezena[5]~output_o\);

\out_display_dezena[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_dezena|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \out_display_dezena[6]~output_o\);

\out_display_centena[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|out_display[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_display_centena[0]~output_o\);

\out_display_centena[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|out_display[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_display_centena[1]~output_o\);

\out_display_centena[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|ALT_INV_out_display[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_display_centena[2]~output_o\);

\out_display_centena[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|out_display[3]~3_combout\,
	devoe => ww_devoe,
	o => \out_display_centena[3]~output_o\);

\out_display_centena[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|out_display[4]~4_combout\,
	devoe => ww_devoe,
	o => \out_display_centena[4]~output_o\);

\out_display_centena[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|ALT_INV_out_display[5]~5_combout\,
	devoe => ww_devoe,
	o => \out_display_centena[5]~output_o\);

\out_display_centena[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_centena|out_display[6]~6_combout\,
	devoe => ww_devoe,
	o => \out_display_centena[6]~output_o\);

\soma[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => soma_tmp(0),
	devoe => ww_devoe,
	o => \soma[0]~output_o\);

\soma[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => soma_tmp(1),
	devoe => ww_devoe,
	o => \soma[1]~output_o\);

\soma[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => soma_tmp(2),
	devoe => ww_devoe,
	o => \soma[2]~output_o\);

\soma[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => soma_tmp(3),
	devoe => ww_devoe,
	o => \soma[3]~output_o\);

\soma[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => soma_tmp(4),
	devoe => ww_devoe,
	o => \soma[4]~output_o\);

\soma[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => soma_tmp(5),
	devoe => ww_devoe,
	o => \soma[5]~output_o\);

\soma[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => soma_tmp(6),
	devoe => ww_devoe,
	o => \soma[6]~output_o\);

\soma[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => soma_tmp(7),
	devoe => ww_devoe,
	o => \soma[7]~output_o\);

\soma[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => soma_tmp(8),
	devoe => ww_devoe,
	o => \soma[8]~output_o\);

\soma[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => soma_tmp(9),
	devoe => ww_devoe,
	o => \soma[9]~output_o\);

\soma[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => soma_tmp(10),
	devoe => ww_devoe,
	o => \soma[10]~output_o\);

\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~2_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Equal0~8_combout\,
	combout => \count~2_combout\);

\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~8_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Equal0~8_combout\,
	combout => \count~1_combout\);

\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~10_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Equal0~8_combout\,
	combout => \count~0_combout\);

\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = count(25) $ (\Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add0~0_combout\) # ((\Add0~4_combout\) # ((\Add0~6_combout\) # (!\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~2_combout\,
	combout => \Equal0~0_combout\);

\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Add0~12_combout\) # ((\Add0~14_combout\) # ((!\Add0~10_combout\) # (!\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~10_combout\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Add0~16_combout\) # ((\Add0~18_combout\) # ((\Add0~20_combout\) # (\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \Equal0~2_combout\);

\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Add0~24_combout\) # ((\Add0~26_combout\) # ((\Add0~28_combout\) # (\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~26_combout\,
	datac => \Add0~28_combout\,
	datad => \Add0~30_combout\,
	combout => \Equal0~3_combout\);

\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\) # ((\Equal0~1_combout\) # ((\Equal0~2_combout\) # (\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Add0~32_combout\) # ((\Add0~34_combout\) # ((\Add0~36_combout\) # (\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~34_combout\,
	datac => \Add0~36_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add0~40_combout\) # ((\Add0~42_combout\) # ((\Add0~38_combout\) # (\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add0~42_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Add0~44_combout\) # (\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~48_combout\ & (!\Add0~50_combout\ & (!\Add0~46_combout\ & !\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \Add0~50_combout\,
	datac => \Add0~46_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

\unidade_tmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_tmp~2_combout\ = (unidade_tmp(3) & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(3),
	datab => \Equal0~8_combout\,
	combout => \unidade_tmp~2_combout\);

\passagem_zero~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_passagem_zero,
	o => \passagem_zero~input_o\);

reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \deteccao_zero~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset~q\);

deteccao_zero : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \passagem_zero~input_o\,
	d => VCC,
	clrn => \ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deteccao_zero~q\);

\unidade_tmp~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_tmp~10_combout\ = \deteccao_zero~q\ $ (((!\Equal0~8_combout\ & unidade_tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deteccao_zero~q\,
	datac => \Equal0~8_combout\,
	datad => unidade_tmp(0),
	combout => \unidade_tmp~10_combout\);

\unidade_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \unidade_tmp~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(0));

\unidade_tmp[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_tmp[0]~4_combout\ = (!\Equal0~8_combout\ & (unidade_tmp(0) & (\deteccao_zero~q\ & !unidade_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => unidade_tmp(0),
	datac => \deteccao_zero~q\,
	datad => unidade_tmp(1),
	combout => \unidade_tmp[0]~4_combout\);

\unidade_tmp[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_tmp[0]~11_combout\ = (unidade_tmp(3) & (!\Equal0~8_combout\ & (!unidade_tmp(2) & \unidade_tmp[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(3),
	datab => \Equal0~8_combout\,
	datac => unidade_tmp(2),
	datad => \unidade_tmp[0]~4_combout\,
	combout => \unidade_tmp[0]~11_combout\);

\unidade_tmp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_tmp~6_combout\ = unidade_tmp(2) $ (((\deteccao_zero~q\ & (unidade_tmp(1) & unidade_tmp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(2),
	datab => \deteccao_zero~q\,
	datac => unidade_tmp(1),
	datad => unidade_tmp(0),
	combout => \unidade_tmp~6_combout\);

\unidade_tmp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_tmp~7_combout\ = (!\Equal0~8_combout\ & (\unidade_tmp~6_combout\ & ((!\deteccao_zero~q\) # (!\unidade_tmp[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \unidade_tmp[0]~11_combout\,
	datac => \deteccao_zero~q\,
	datad => \unidade_tmp~6_combout\,
	combout => \unidade_tmp~7_combout\);

\unidade_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \unidade_tmp~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(2));

\unidade_tmp[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_tmp[0]~3_combout\ = (unidade_tmp(3) & (!\Equal0~8_combout\ & !unidade_tmp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(3),
	datab => \Equal0~8_combout\,
	datad => unidade_tmp(2),
	combout => \unidade_tmp[0]~3_combout\);

\unidade_tmp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_tmp~8_combout\ = (unidade_tmp(0) & \deteccao_zero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => unidade_tmp(0),
	datac => \deteccao_zero~q\,
	combout => \unidade_tmp~8_combout\);

\unidade_tmp~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_tmp~9_combout\ = (!\Equal0~8_combout\ & ((unidade_tmp(1) & ((!\unidade_tmp~8_combout\))) # (!unidade_tmp(1) & (!\unidade_tmp[0]~3_combout\ & \unidade_tmp~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \unidade_tmp[0]~3_combout\,
	datac => unidade_tmp(1),
	datad => \unidade_tmp~8_combout\,
	combout => \unidade_tmp~9_combout\);

\unidade_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \unidade_tmp~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(1));

\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (!\Equal0~8_combout\ & (unidade_tmp(1) & (unidade_tmp(2) & unidade_tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => unidade_tmp(1),
	datac => unidade_tmp(2),
	datad => unidade_tmp(0),
	combout => \Add4~0_combout\);

\unidade_tmp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \unidade_tmp~5_combout\ = (\deteccao_zero~q\ & (!\unidade_tmp[0]~11_combout\ & (\unidade_tmp~2_combout\ $ (\Add4~0_combout\)))) # (!\deteccao_zero~q\ & (\unidade_tmp~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_tmp~2_combout\,
	datab => \Add4~0_combout\,
	datac => \unidade_tmp[0]~11_combout\,
	datad => \deteccao_zero~q\,
	combout => \unidade_tmp~5_combout\);

\unidade_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \unidade_tmp~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade_tmp(3));

\unidade[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => unidade_tmp(3),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(3));

\unidade[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => unidade_tmp(2),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(2));

\unidade[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => unidade_tmp(1),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(1));

\unidade[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => unidade_tmp(0),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => unidade(0));

\display_unidade|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[0]~0_combout\ = (unidade(1) & (unidade(3))) # (!unidade(1) & (unidade(2) $ (((!unidade(3) & unidade(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(3),
	datab => unidade(2),
	datac => unidade(1),
	datad => unidade(0),
	combout => \display_unidade|out_display[0]~0_combout\);

\display_unidade|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[1]~1_combout\ = (unidade(2) & ((unidade(3)) # (unidade(0) $ (unidade(1))))) # (!unidade(2) & (((unidade(1) & unidade(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(0),
	datab => unidade(1),
	datac => unidade(2),
	datad => unidade(3),
	combout => \display_unidade|out_display[1]~1_combout\);

\display_unidade|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[2]~2_combout\ = (unidade(2) & (((!unidade(3))))) # (!unidade(2) & (((unidade(0) & !unidade(3))) # (!unidade(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(0),
	datab => unidade(2),
	datac => unidade(1),
	datad => unidade(3),
	combout => \display_unidade|out_display[2]~2_combout\);

\display_unidade|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[3]~3_combout\ = (unidade(1) & ((unidade(3)) # ((unidade(0) & unidade(2))))) # (!unidade(1) & (unidade(2) $ (((unidade(0) & !unidade(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(0),
	datab => unidade(1),
	datac => unidade(2),
	datad => unidade(3),
	combout => \display_unidade|out_display[3]~3_combout\);

\display_unidade|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[4]~4_combout\ = (unidade(0)) # ((unidade(1) & (unidade(3))) # (!unidade(1) & ((unidade(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(0),
	datab => unidade(3),
	datac => unidade(2),
	datad => unidade(1),
	combout => \display_unidade|out_display[4]~4_combout\);

\display_unidade|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[5]~5_combout\ = (unidade(2) & (!unidade(3) & ((!unidade(1)) # (!unidade(0))))) # (!unidade(2) & (!unidade(1) & ((unidade(3)) # (!unidade(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(2),
	datab => unidade(0),
	datac => unidade(3),
	datad => unidade(1),
	combout => \display_unidade|out_display[5]~5_combout\);

\display_unidade|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_unidade|out_display[6]~6_combout\ = (unidade(1) & ((unidade(3)) # ((unidade(2) & unidade(0))))) # (!unidade(1) & (unidade(3) $ ((!unidade(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade(3),
	datab => unidade(1),
	datac => unidade(2),
	datad => unidade(0),
	combout => \display_unidade|out_display[6]~6_combout\);

\dezena_tmp~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp~8_combout\ = (\Equal0~8_combout\ & (\dezena_tmp~1_combout\)) # (!\Equal0~8_combout\ & ((dezena_tmp(0) & ((!\unidade_tmp[0]~11_combout\))) # (!dezena_tmp(0) & (\dezena_tmp~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_tmp~1_combout\,
	datab => \Equal0~8_combout\,
	datac => dezena_tmp(0),
	datad => \unidade_tmp[0]~11_combout\,
	combout => \dezena_tmp~8_combout\);

\dezena_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dezena_tmp~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(0));

\dezena_tmp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp~6_combout\ = (\dezena_tmp~1_combout\ & (dezena_tmp(1) $ (dezena_tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(1),
	datab => dezena_tmp(0),
	datac => \dezena_tmp~1_combout\,
	combout => \dezena_tmp~6_combout\);

\dezena_tmp~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp~7_combout\ = (!\Equal0~8_combout\ & ((\dezena_tmp~6_combout\) # ((!\unidade_tmp[0]~11_combout\ & dezena_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \unidade_tmp[0]~11_combout\,
	datac => dezena_tmp(1),
	datad => \dezena_tmp~6_combout\,
	combout => \dezena_tmp~7_combout\);

\dezena_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dezena_tmp~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(1));

\dezena_tmp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp~4_combout\ = (\dezena_tmp~1_combout\ & (dezena_tmp(2) $ (((dezena_tmp(1) & dezena_tmp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(2),
	datab => dezena_tmp(1),
	datac => dezena_tmp(0),
	datad => \dezena_tmp~1_combout\,
	combout => \dezena_tmp~4_combout\);

\dezena_tmp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp~5_combout\ = (!\Equal0~8_combout\ & ((\dezena_tmp~4_combout\) # ((!\unidade_tmp[0]~11_combout\ & dezena_tmp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \unidade_tmp[0]~11_combout\,
	datac => dezena_tmp(2),
	datad => \dezena_tmp~4_combout\,
	combout => \dezena_tmp~5_combout\);

\dezena_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dezena_tmp~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(2));

\dezena_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp~0_combout\ = (dezena_tmp(3) & (!dezena_tmp(2) & (dezena_tmp(0) & !dezena_tmp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(3),
	datab => dezena_tmp(2),
	datac => dezena_tmp(0),
	datad => dezena_tmp(1),
	combout => \dezena_tmp~0_combout\);

\dezena_tmp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp~1_combout\ = (\unidade_tmp[0]~3_combout\ & (\unidade_tmp[0]~4_combout\ & ((\Equal0~8_combout\) # (!\dezena_tmp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \unidade_tmp[0]~3_combout\,
	datac => \unidade_tmp[0]~4_combout\,
	datad => \dezena_tmp~0_combout\,
	combout => \dezena_tmp~1_combout\);

\dezena_tmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp~2_combout\ = (!\Equal0~8_combout\ & dezena_tmp(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => dezena_tmp(3),
	combout => \dezena_tmp~2_combout\);

\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (!\Equal0~8_combout\ & (dezena_tmp(1) & (dezena_tmp(2) & dezena_tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => dezena_tmp(1),
	datac => dezena_tmp(2),
	datad => dezena_tmp(0),
	combout => \Add3~0_combout\);

\dezena_tmp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dezena_tmp~3_combout\ = (\dezena_tmp~2_combout\ & (((\dezena_tmp~1_combout\ & !\Add3~0_combout\)) # (!\unidade_tmp[0]~11_combout\))) # (!\dezena_tmp~2_combout\ & (\dezena_tmp~1_combout\ & (\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_tmp~1_combout\,
	datab => \dezena_tmp~2_combout\,
	datac => \Add3~0_combout\,
	datad => \unidade_tmp[0]~11_combout\,
	combout => \dezena_tmp~3_combout\);

\dezena_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \dezena_tmp~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena_tmp(3));

\dezena[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => dezena_tmp(3),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena(3));

\dezena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => dezena_tmp(2),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena(2));

\dezena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => dezena_tmp(1),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena(1));

\dezena[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => dezena_tmp(0),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dezena(0));

\display_dezena|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[0]~0_combout\ = (dezena(1) & (dezena(3))) # (!dezena(1) & (dezena(2) $ (((!dezena(3) & dezena(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(3),
	datab => dezena(2),
	datac => dezena(1),
	datad => dezena(0),
	combout => \display_dezena|out_display[0]~0_combout\);

\display_dezena|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[1]~1_combout\ = (dezena(2) & ((dezena(3)) # (dezena(0) $ (dezena(1))))) # (!dezena(2) & (((dezena(1) & dezena(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(0),
	datab => dezena(1),
	datac => dezena(2),
	datad => dezena(3),
	combout => \display_dezena|out_display[1]~1_combout\);

\display_dezena|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[2]~2_combout\ = (dezena(2) & (((!dezena(3))))) # (!dezena(2) & (((dezena(0) & !dezena(3))) # (!dezena(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(0),
	datab => dezena(2),
	datac => dezena(1),
	datad => dezena(3),
	combout => \display_dezena|out_display[2]~2_combout\);

\display_dezena|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[3]~3_combout\ = (dezena(1) & ((dezena(3)) # ((dezena(0) & dezena(2))))) # (!dezena(1) & (dezena(2) $ (((dezena(0) & !dezena(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(0),
	datab => dezena(1),
	datac => dezena(2),
	datad => dezena(3),
	combout => \display_dezena|out_display[3]~3_combout\);

\display_dezena|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[4]~4_combout\ = (dezena(0)) # ((dezena(1) & (dezena(3))) # (!dezena(1) & ((dezena(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(0),
	datab => dezena(3),
	datac => dezena(2),
	datad => dezena(1),
	combout => \display_dezena|out_display[4]~4_combout\);

\display_dezena|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[5]~5_combout\ = (dezena(2) & (!dezena(3) & ((!dezena(1)) # (!dezena(0))))) # (!dezena(2) & (!dezena(1) & ((dezena(3)) # (!dezena(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(2),
	datab => dezena(0),
	datac => dezena(3),
	datad => dezena(1),
	combout => \display_dezena|out_display[5]~5_combout\);

\display_dezena|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_dezena|out_display[6]~6_combout\ = (dezena(1) & ((dezena(3)) # ((dezena(2) & dezena(0))))) # (!dezena(1) & (dezena(3) $ ((!dezena(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena(3),
	datab => dezena(1),
	datac => dezena(2),
	datad => dezena(0),
	combout => \display_dezena|out_display[6]~6_combout\);

\centena_tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp~0_combout\ = (dezena_tmp(0) & (!dezena_tmp(1) & (unidade_tmp(3) & !unidade_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dezena_tmp(0),
	datab => dezena_tmp(1),
	datac => unidade_tmp(3),
	datad => unidade_tmp(2),
	combout => \centena_tmp~0_combout\);

\centena_tmp~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp~1_combout\ = (unidade_tmp(0) & (!unidade_tmp(1) & (dezena_tmp(3) & !dezena_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => unidade_tmp(0),
	datab => unidade_tmp(1),
	datac => dezena_tmp(3),
	datad => dezena_tmp(2),
	combout => \centena_tmp~1_combout\);

\centena_tmp~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp~2_combout\ = (!\Equal0~8_combout\ & (\deteccao_zero~q\ & (\centena_tmp~0_combout\ & \centena_tmp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \deteccao_zero~q\,
	datac => \centena_tmp~0_combout\,
	datad => \centena_tmp~1_combout\,
	combout => \centena_tmp~2_combout\);

\centena_tmp~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp~6_combout\ = \centena_tmp~2_combout\ $ (((!\Equal0~8_combout\ & centena_tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centena_tmp~2_combout\,
	datac => \Equal0~8_combout\,
	datad => centena_tmp(0),
	combout => \centena_tmp~6_combout\);

\centena_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \centena_tmp~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena_tmp(0));

\centena_tmp~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp~5_combout\ = (!\Equal0~8_combout\ & (centena_tmp(1) $ (((centena_tmp(0) & \centena_tmp~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => centena_tmp(1),
	datac => centena_tmp(0),
	datad => \centena_tmp~2_combout\,
	combout => \centena_tmp~5_combout\);

\centena_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \centena_tmp~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena_tmp(1));

\Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = (\Equal0~8_combout\) # (centena_tmp(2) $ (((!centena_tmp(0)) # (!centena_tmp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena_tmp(1),
	datab => centena_tmp(0),
	datac => centena_tmp(2),
	datad => \Equal0~8_combout\,
	combout => \Add2~1_combout\);

\centena_tmp~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp~4_combout\ = (\centena_tmp~2_combout\ & (((!\Add2~1_combout\)))) # (!\centena_tmp~2_combout\ & (!\Equal0~8_combout\ & (centena_tmp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => centena_tmp(2),
	datac => \centena_tmp~2_combout\,
	datad => \Add2~1_combout\,
	combout => \centena_tmp~4_combout\);

\centena_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \centena_tmp~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena_tmp(2));

\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (!\Equal0~8_combout\ & (centena_tmp(1) & (centena_tmp(2) & centena_tmp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => centena_tmp(1),
	datac => centena_tmp(2),
	datad => centena_tmp(0),
	combout => \Add2~0_combout\);

\centena_tmp~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \centena_tmp~3_combout\ = (\Equal0~8_combout\ & (\Add2~0_combout\ & (\centena_tmp~2_combout\))) # (!\Equal0~8_combout\ & (centena_tmp(3) $ (((\Add2~0_combout\ & \centena_tmp~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Add2~0_combout\,
	datac => \centena_tmp~2_combout\,
	datad => centena_tmp(3),
	combout => \centena_tmp~3_combout\);

\centena_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \centena_tmp~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena_tmp(3));

\centena[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => centena_tmp(3),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena(3));

\centena[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => centena_tmp(2),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena(2));

\centena[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => centena_tmp(1),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena(1));

\centena[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => centena_tmp(0),
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centena(0));

\display_centena|out_display[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[0]~0_combout\ = (centena(1) & (centena(3))) # (!centena(1) & (centena(2) $ (((!centena(3) & centena(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena(3),
	datab => centena(2),
	datac => centena(1),
	datad => centena(0),
	combout => \display_centena|out_display[0]~0_combout\);

\display_centena|out_display[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[1]~1_combout\ = (centena(2) & ((centena(3)) # (centena(0) $ (centena(1))))) # (!centena(2) & (((centena(1) & centena(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena(0),
	datab => centena(1),
	datac => centena(2),
	datad => centena(3),
	combout => \display_centena|out_display[1]~1_combout\);

\display_centena|out_display[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[2]~2_combout\ = (centena(2) & (((!centena(3))))) # (!centena(2) & (((centena(0) & !centena(3))) # (!centena(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena(0),
	datab => centena(2),
	datac => centena(1),
	datad => centena(3),
	combout => \display_centena|out_display[2]~2_combout\);

\display_centena|out_display[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[3]~3_combout\ = (centena(1) & ((centena(3)) # ((centena(0) & centena(2))))) # (!centena(1) & (centena(2) $ (((centena(0) & !centena(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena(0),
	datab => centena(1),
	datac => centena(2),
	datad => centena(3),
	combout => \display_centena|out_display[3]~3_combout\);

\display_centena|out_display[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[4]~4_combout\ = (centena(0)) # ((centena(1) & (centena(3))) # (!centena(1) & ((centena(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena(0),
	datab => centena(3),
	datac => centena(2),
	datad => centena(1),
	combout => \display_centena|out_display[4]~4_combout\);

\display_centena|out_display[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[5]~5_combout\ = (centena(2) & (!centena(3) & ((!centena(1)) # (!centena(0))))) # (!centena(2) & (!centena(1) & ((centena(3)) # (!centena(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena(2),
	datab => centena(0),
	datac => centena(3),
	datad => centena(1),
	combout => \display_centena|out_display[5]~5_combout\);

\display_centena|out_display[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display_centena|out_display[6]~6_combout\ = (centena(1) & ((centena(3)) # ((centena(2) & centena(0))))) # (!centena(1) & (centena(3) $ ((!centena(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centena(3),
	datab => centena(1),
	datac => centena(2),
	datad => centena(0),
	combout => \display_centena|out_display[6]~6_combout\);

\soma_tmp[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[0]~11_combout\ = soma_tmp(0) $ (VCC)
-- \soma_tmp[0]~12\ = CARRY(soma_tmp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => soma_tmp(0),
	datad => VCC,
	combout => \soma_tmp[0]~11_combout\,
	cout => \soma_tmp[0]~12\);

\soma_tmp[10]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[10]~13_combout\ = (\Equal0~8_combout\) # (\deteccao_zero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \deteccao_zero~q\,
	combout => \soma_tmp[10]~13_combout\);

\soma_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \soma_tmp[0]~11_combout\,
	sclr => \ALT_INV_deteccao_zero~q\,
	ena => \soma_tmp[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma_tmp(0));

\soma_tmp[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[1]~14_combout\ = (soma_tmp(1) & (!\soma_tmp[0]~12\)) # (!soma_tmp(1) & ((\soma_tmp[0]~12\) # (GND)))
-- \soma_tmp[1]~15\ = CARRY((!\soma_tmp[0]~12\) # (!soma_tmp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => soma_tmp(1),
	datad => VCC,
	cin => \soma_tmp[0]~12\,
	combout => \soma_tmp[1]~14_combout\,
	cout => \soma_tmp[1]~15\);

\soma_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \soma_tmp[1]~14_combout\,
	sclr => \ALT_INV_deteccao_zero~q\,
	ena => \soma_tmp[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma_tmp(1));

\soma_tmp[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[2]~16_combout\ = (soma_tmp(2) & (\soma_tmp[1]~15\ $ (GND))) # (!soma_tmp(2) & (!\soma_tmp[1]~15\ & VCC))
-- \soma_tmp[2]~17\ = CARRY((soma_tmp(2) & !\soma_tmp[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => soma_tmp(2),
	datad => VCC,
	cin => \soma_tmp[1]~15\,
	combout => \soma_tmp[2]~16_combout\,
	cout => \soma_tmp[2]~17\);

\soma_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \soma_tmp[2]~16_combout\,
	sclr => \ALT_INV_deteccao_zero~q\,
	ena => \soma_tmp[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma_tmp(2));

\soma_tmp[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[3]~18_combout\ = (soma_tmp(3) & (!\soma_tmp[2]~17\)) # (!soma_tmp(3) & ((\soma_tmp[2]~17\) # (GND)))
-- \soma_tmp[3]~19\ = CARRY((!\soma_tmp[2]~17\) # (!soma_tmp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => soma_tmp(3),
	datad => VCC,
	cin => \soma_tmp[2]~17\,
	combout => \soma_tmp[3]~18_combout\,
	cout => \soma_tmp[3]~19\);

\soma_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \soma_tmp[3]~18_combout\,
	sclr => \ALT_INV_deteccao_zero~q\,
	ena => \soma_tmp[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma_tmp(3));

\soma_tmp[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[4]~20_combout\ = (soma_tmp(4) & (\soma_tmp[3]~19\ $ (GND))) # (!soma_tmp(4) & (!\soma_tmp[3]~19\ & VCC))
-- \soma_tmp[4]~21\ = CARRY((soma_tmp(4) & !\soma_tmp[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => soma_tmp(4),
	datad => VCC,
	cin => \soma_tmp[3]~19\,
	combout => \soma_tmp[4]~20_combout\,
	cout => \soma_tmp[4]~21\);

\soma_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \soma_tmp[4]~20_combout\,
	sclr => \ALT_INV_deteccao_zero~q\,
	ena => \soma_tmp[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma_tmp(4));

\soma_tmp[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[5]~22_combout\ = (soma_tmp(5) & (!\soma_tmp[4]~21\)) # (!soma_tmp(5) & ((\soma_tmp[4]~21\) # (GND)))
-- \soma_tmp[5]~23\ = CARRY((!\soma_tmp[4]~21\) # (!soma_tmp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => soma_tmp(5),
	datad => VCC,
	cin => \soma_tmp[4]~21\,
	combout => \soma_tmp[5]~22_combout\,
	cout => \soma_tmp[5]~23\);

\soma_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \soma_tmp[5]~22_combout\,
	sclr => \ALT_INV_deteccao_zero~q\,
	ena => \soma_tmp[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma_tmp(5));

\soma_tmp[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[6]~24_combout\ = (soma_tmp(6) & (\soma_tmp[5]~23\ $ (GND))) # (!soma_tmp(6) & (!\soma_tmp[5]~23\ & VCC))
-- \soma_tmp[6]~25\ = CARRY((soma_tmp(6) & !\soma_tmp[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => soma_tmp(6),
	datad => VCC,
	cin => \soma_tmp[5]~23\,
	combout => \soma_tmp[6]~24_combout\,
	cout => \soma_tmp[6]~25\);

\soma_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \soma_tmp[6]~24_combout\,
	sclr => \ALT_INV_deteccao_zero~q\,
	ena => \soma_tmp[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma_tmp(6));

\soma_tmp[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[7]~26_combout\ = (soma_tmp(7) & (!\soma_tmp[6]~25\)) # (!soma_tmp(7) & ((\soma_tmp[6]~25\) # (GND)))
-- \soma_tmp[7]~27\ = CARRY((!\soma_tmp[6]~25\) # (!soma_tmp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => soma_tmp(7),
	datad => VCC,
	cin => \soma_tmp[6]~25\,
	combout => \soma_tmp[7]~26_combout\,
	cout => \soma_tmp[7]~27\);

\soma_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \soma_tmp[7]~26_combout\,
	sclr => \ALT_INV_deteccao_zero~q\,
	ena => \soma_tmp[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma_tmp(7));

\soma_tmp[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[8]~28_combout\ = (soma_tmp(8) & (\soma_tmp[7]~27\ $ (GND))) # (!soma_tmp(8) & (!\soma_tmp[7]~27\ & VCC))
-- \soma_tmp[8]~29\ = CARRY((soma_tmp(8) & !\soma_tmp[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => soma_tmp(8),
	datad => VCC,
	cin => \soma_tmp[7]~27\,
	combout => \soma_tmp[8]~28_combout\,
	cout => \soma_tmp[8]~29\);

\soma_tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \soma_tmp[8]~28_combout\,
	sclr => \ALT_INV_deteccao_zero~q\,
	ena => \soma_tmp[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma_tmp(8));

\soma_tmp[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[9]~30_combout\ = (soma_tmp(9) & (!\soma_tmp[8]~29\)) # (!soma_tmp(9) & ((\soma_tmp[8]~29\) # (GND)))
-- \soma_tmp[9]~31\ = CARRY((!\soma_tmp[8]~29\) # (!soma_tmp(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => soma_tmp(9),
	datad => VCC,
	cin => \soma_tmp[8]~29\,
	combout => \soma_tmp[9]~30_combout\,
	cout => \soma_tmp[9]~31\);

\soma_tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \soma_tmp[9]~30_combout\,
	sclr => \ALT_INV_deteccao_zero~q\,
	ena => \soma_tmp[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma_tmp(9));

\soma_tmp[10]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \soma_tmp[10]~32_combout\ = soma_tmp(10) $ (!\soma_tmp[9]~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => soma_tmp(10),
	cin => \soma_tmp[9]~31\,
	combout => \soma_tmp[10]~32_combout\);

\soma_tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \soma_tmp[10]~32_combout\,
	sclr => \ALT_INV_deteccao_zero~q\,
	ena => \soma_tmp[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => soma_tmp(10));

ww_out_display_unidade(0) <= \out_display_unidade[0]~output_o\;

ww_out_display_unidade(1) <= \out_display_unidade[1]~output_o\;

ww_out_display_unidade(2) <= \out_display_unidade[2]~output_o\;

ww_out_display_unidade(3) <= \out_display_unidade[3]~output_o\;

ww_out_display_unidade(4) <= \out_display_unidade[4]~output_o\;

ww_out_display_unidade(5) <= \out_display_unidade[5]~output_o\;

ww_out_display_unidade(6) <= \out_display_unidade[6]~output_o\;

ww_out_display_dezena(0) <= \out_display_dezena[0]~output_o\;

ww_out_display_dezena(1) <= \out_display_dezena[1]~output_o\;

ww_out_display_dezena(2) <= \out_display_dezena[2]~output_o\;

ww_out_display_dezena(3) <= \out_display_dezena[3]~output_o\;

ww_out_display_dezena(4) <= \out_display_dezena[4]~output_o\;

ww_out_display_dezena(5) <= \out_display_dezena[5]~output_o\;

ww_out_display_dezena(6) <= \out_display_dezena[6]~output_o\;

ww_out_display_centena(0) <= \out_display_centena[0]~output_o\;

ww_out_display_centena(1) <= \out_display_centena[1]~output_o\;

ww_out_display_centena(2) <= \out_display_centena[2]~output_o\;

ww_out_display_centena(3) <= \out_display_centena[3]~output_o\;

ww_out_display_centena(4) <= \out_display_centena[4]~output_o\;

ww_out_display_centena(5) <= \out_display_centena[5]~output_o\;

ww_out_display_centena(6) <= \out_display_centena[6]~output_o\;

ww_soma(0) <= \soma[0]~output_o\;

ww_soma(1) <= \soma[1]~output_o\;

ww_soma(2) <= \soma[2]~output_o\;

ww_soma(3) <= \soma[3]~output_o\;

ww_soma(4) <= \soma[4]~output_o\;

ww_soma(5) <= \soma[5]~output_o\;

ww_soma(6) <= \soma[6]~output_o\;

ww_soma(7) <= \soma[7]~output_o\;

ww_soma(8) <= \soma[8]~output_o\;

ww_soma(9) <= \soma[9]~output_o\;

ww_soma(10) <= \soma[10]~output_o\;
END structure;


