library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component bin2bcd is
  port (
    b: in std_logic_vector(3 downto 0);
    p: out std_logic_vector(4 downto 0)
  );
end component;

signal b: std_logic_vector(3 downto 0) := "0000";
signal p: std_logic_vector(4 downto 0) := "00000";

begin
  dut: bin2bcd
  port map(
    b => b,
    p => p
  );
  process begin
    b <= "0000";
    wait for 10 ns;
    b <= "0001";
    wait for 10 ns;
    b <= "0010";
    wait for 10 ns;
    b <= "0011";
    wait for 10 ns;
    b <= "0100";
    wait for 10 ns;
    b <= "0101";
    wait for 10 ns;
    b <= "0110";
    wait for 10 ns;
    b <= "0111";
    wait for 10 ns;
    b <= "1000";
    wait for 10 ns;
    b <= "1001";
    wait for 10 ns;
    b <= "1010";
    wait for 10 ns;
    b <= "1011";
    wait for 10 ns;
    b <= "1100";
    wait for 10 ns;
    b <= "1101";
    wait for 10 ns;
    b <= "1110";
    wait for 10 ns;
    b <= "1111";
    wait for 10 ns;
    wait;
  end process;
end;
