library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component mux2g is
  generic (
    N: integer
  );
  port (
    a: in std_logic_vector(0 to 1);
    b: in std_logic_vector(0 to 1);
    s: in std_logic;
    y: out std_logic_vector(0 to 1)
  );
end component;

signal a: std_logic_vector(0 to 1) := "10";
signal b: std_logic_vector(0 to 1) := "01";
signal s: std_logic := '1';
signal y: std_logic_vector(0 to 1);

constant clk_interval: time := 10 ns;

begin
  s <= not s after clk_interval;

  dut: mux2g
  generic map(
    N => 2
  )
  port map(
    a => a,
    b => b,
    s => s,
    y => y
  );
  process begin
    wait;
  end process;
end;
