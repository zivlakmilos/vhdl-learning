library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component bin2gray is
  port (
    b: in std_logic_vector (3 downto 0);
    g: out std_logic_vector(3 downto 0)
  );
end component;

signal b: std_logic_vector(3 downto 0) := "0000";
signal g: std_logic_vector(3 downto 0) := "0000";

constant clk_interval: time := 10 ns;

begin
  -- b(0) <= not b(0) after clk_interval;

  dut: bin2gray
  port map(
    b => b,
    g => g
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
    b <= "1111";
    wait for 10 ns;
    wait;
  end process;
end;
