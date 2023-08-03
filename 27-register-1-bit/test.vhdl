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
    inp0: in std_logic;
    clk: in std_logic;
    clr: in std_logic;
    q0: out std_logic
  );
end component;

signal load: std_logic := '0';
signal inp0: std_logic := '0';
signal clk: std_logic := '0';
signal clr: std_logic := '0';
signal q0: std_logic := '0';

constant clk_interval: time := 10 ns;

begin
  clk <= not clk after clk_interval;
  load <= not inp0 after clk_interval * 2;
  inp0 <= not inp0 after clk_interval * 4;

  dut: reg
  port map(
    load => load,
    inp0 => inp0,
    clk => clk,
    clr => clr,
    q0 => q0
  );
  process begin
    wait for 100 ns;
    wait;
  end process;
end;
