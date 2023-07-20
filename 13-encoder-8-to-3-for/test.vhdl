library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component encoder is
  port (
    x: in std_logic_vector(7 downto 0);
    y: out std_logic_vector(2 downto 0);
    valid: out std_logic
  );
end component;

signal x: std_logic_vector(7 downto 0) := "00000000";
signal y: std_logic_vector(2 downto 0) := "000";

begin
  dut: encoder
  port map(
    x => x,
    y => y
  );
  process begin
    for i in 0 to 7 loop
      x <= "00000000";
      x(i) <= '1';
      wait for 10 ns;
    end loop;
    wait;
  end process;
end;
