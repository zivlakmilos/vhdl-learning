library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component mux4 is
  port (
    c: in std_logic_vector(0 to 3);
    s: in std_logic_vector(0 to 1);
    z: out std_logic
  );
end component;

signal c: std_logic_vector(0 to 3) := "0000";
signal s: std_logic_vector(0 to 1) := "00";
signal z: std_logic;

constant clk_interval: time := 10 ns;

begin

  s(1) <= not s(1) after clk_interval;
  s(0) <= not s(0) after clk_interval * 2;

  c(3) <= not c(3) after clk_interval * 4;
  c(2) <= not c(2) after clk_interval * 8;
  c(1) <= not c(1) after clk_interval * 16;
  c(0) <= not c(0) after clk_interval * 32;

  dut: mux4 port map(
    c => c,
    s => s,
    z => z
  );
  process begin
    wait;
  end process;
end;
