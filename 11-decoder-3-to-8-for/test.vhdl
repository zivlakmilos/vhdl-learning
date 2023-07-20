library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component decoder is
  port (
    a: in std_logic_vector(2 downto 0);
    b: out std_logic_vector(7 downto 0)
  );
end component;

signal a: std_logic_vector(2 downto 0) := "000";
signal b: std_logic_vector(7 downto 0) := "00000000";

begin
  dut: decoder
  port map(
    a => a,
    b => b
  );
  process begin
    a <= "000";
    wait for 10 ns;
    a <= "001";
    wait for 10 ns;
    a <= "010";
    wait for 10 ns;
    a <= "011";
    wait for 10 ns;
    a <= "100";
    wait for 10 ns;
    a <= "101";
    wait for 10 ns;
    a <= "110";
    wait for 10 ns;
    a <= "111";
    wait for 10 ns;
    wait;
  end process;
end;
