library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component shiftreg is
  port (
    clk: in std_logic;
    clr: in std_logic;
    data_in: in std_logic;
    q: out std_logic_vector(3 downto 0)
  );
end component;

signal clk: std_logic := '0';
signal clr: std_logic := '0';
signal data_in: std_logic := '0';
signal q: std_logic_vector(3 downto 0) := "0000";

constant clk_interval: time := 10 ns;

begin
  clk <= not clk after clk_interval;
  data_in <= not data_in after clk_interval * 2;

  dut: shiftreg
  port map(
    clk => clk,
    clr => clr,
    data_in => data_in,
    q => q
  );
  process begin
    wait;
  end process;
end;
