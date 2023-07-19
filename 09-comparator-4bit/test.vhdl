library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component comp is
  generic (N: integer := 8);
  port (
    x: in std_logic_vector(N-1 downto 0);
    y: in std_logic_vector(N-1 downto 0);
    gt: out std_logic;
    eq: out std_logic;
    lt: out std_logic
  );
end component;

signal x: std_logic_vector(3 downto 0) := "0000";
signal y: std_logic_vector(3 downto 0) := "0000";

begin
  dut: comp
  generic map (
    N => 4
  )
  port map(
    x => x,
    y => y
  );
  process begin
    x <= "0000";
    y <= "1111";
    wait for 10 ns;
    x <= "0001";
    y <= "1110";
    wait for 10 ns;
    x <= "0010";
    y <= "1101";
    wait for 10 ns;
    x <= "0011";
    y <= "1100";
    wait for 10 ns;
    x <= "0100";
    y <= "1011";
    wait for 10 ns;
    x <= "0101";
    y <= "1010";
    wait for 10 ns;
    x <= "0110";
    y <= "1001";
    wait for 10 ns;
    x <= "0111";
    y <= "1000";
    wait for 10 ns;
    x <= "1000";
    y <= "1000";
    wait for 10 ns;
    x <= "1001";
    wait for 10 ns;
    x <= "1010";
    wait for 10 ns;
    x <= "1011";
    wait for 10 ns;
    x <= "1100";
    wait for 10 ns;
    x <= "1101";
    wait for 10 ns;
    x <= "1110";
    wait for 10 ns;
    x <= "1111";
    wait for 10 ns;
    wait;
  end process;
end;
