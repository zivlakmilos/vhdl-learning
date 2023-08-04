library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component counter is
  generic (N: integer := 4);
  port (
    clk: in std_logic;
    clr: in std_logic;
    q: out std_logic_vector(N-1 downto 0)
  );
end component;

signal clk: std_logic := '0';
signal clr: std_logic := '0';
signal q: std_logic_vector(3 downto 0) := "0000";

constant clk_interval: time := 10 ns;

begin
  clk <= not clk after clk_interval;

  dut: counter
  generic map (N => 4)
  port map(
    clk => clk,
    clr => clr,
    q => q
  );
  process begin
    clr <= '1';
    wait for 5 ns;
    clr <= '0';
    wait for 100 ns;
    wait;
  end process;
end;
