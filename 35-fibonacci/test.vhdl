library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component fib is
  port (
    clk: in std_logic;
    clr: in std_logic;
    f: out std_logic_vector(13 downto 0)
  );
end component;

signal clk: std_logic := '0';
signal clr: std_logic := '0';
signal f: std_logic_vector(13 downto 0);

constant clk_interval: time := 10 ns;

begin
  clk <= not clk after clk_interval;

  dut: fib
  port map(
    clk => clk,
    clr => clr,
    f => f
  );
  process begin
    clr <= '1';
    wait for 5 ns;
    clr <= '0';
    wait for 100 ns;
    wait;
  end process;
end;
