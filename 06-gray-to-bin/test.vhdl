library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component gray2bin is
  port (
    g: in std_logic_vector (3 downto 0);
    b: out std_logic_vector(3 downto 0)
  );
end component;

signal g: std_logic_vector(3 downto 0) := "0000";
signal b: std_logic_vector(3 downto 0) := "0000";

constant clk_interval: time := 10 ns;

begin
  -- b(0) <= not b(0) after clk_interval;

  dut: gray2bin
  port map(
    g => g,
    b => b
  );
  process begin
    g <= "0000";
    wait for 10 ns;
    g <= "0001";
    wait for 10 ns;
    g <= "0010";
    wait for 10 ns;
    g <= "0011";
    wait for 10 ns;
    g <= "0100";
    wait for 10 ns;
    g <= "0101";
    wait for 10 ns;
    g <= "0111";
    wait for 10 ns;
    g <= "1000";
    wait for 10 ns;
    g <= "1001";
    wait for 10 ns;
    g <= "1010";
    wait for 10 ns;
    g <= "1011";
    wait for 10 ns;
    g <= "1100";
    wait for 10 ns;
    g <= "1101";
    wait for 10 ns;
    g <= "1111";
    wait for 10 ns;
    wait;
  end process;
end;
