library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component reg is
  port (
    load: in std_logic;
    inp: in std_logic_vector(3 downto 0);
    clk: in std_logic;
    clr: in std_logic;
    q: out std_logic_vector(3 downto 0)
  );
end component;

signal load: std_logic := '0';
signal inp: std_logic_vector(3 downto 0) := "0000";
signal clk: std_logic := '0';
signal clr: std_logic := '0';
signal q: std_logic_vector(3 downto 0) := "0000";

constant clk_interval: time := 10 ns;

begin
  clk <= not clk after clk_interval;
  load <= not load after clk_interval * 2;

  dut: reg
  port map(
    load => load,
    inp => inp,
    clk => clk,
    clr => clr,
    q => q
  );
  process begin
    for i in 0 to 16 loop
      inp <= conv_std_logic_vector(i, 4);
      wait for clk_interval * 4;
    end loop;
    wait;
  end process;
end;
