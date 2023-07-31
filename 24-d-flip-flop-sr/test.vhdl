library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component flipflop is
  port (
    clk: in std_logic;
    clr: in std_logic;
    set: in std_logic;
    D: in std_logic;
    q: out std_logic;
    notq: out std_logic
  );
end component;

signal clk: std_logic := '0';
signal clr: std_logic := '0';
signal set: std_logic := '0';
signal D: std_logic := '0';
signal q: std_logic := '0';
signal notq: std_logic := '0';

constant clk_interval: time := 10 ns;

begin
  clk <= not clk after clk_interval;
  D <= not D after clk_interval - 3 ns;

  dut: flipflop
  port map(
    clk => clk,
    D => D,
    q => q,
    notq => notq
  );
  process begin
    wait for 100 ns;
    wait;
  end process;
end;
