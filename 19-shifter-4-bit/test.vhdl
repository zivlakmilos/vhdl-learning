library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component shift is
  port (
    d: in std_logic_vector(3 downto 0);
    s: in std_logic_vector(2 downto 0);
    y: out std_logic_vector(3 downto 0)
  );
end component;

signal d: std_logic_vector(3 downto 0) := "1011";
signal s: std_logic_vector(2 downto 0) := "000";
signal y: std_logic_vector(3 downto 0) := "0000";

begin
  dut: shift
  port map(
    d => d,
    s => s,
    y => y
  );
  process begin
    for i in 0 to 7 loop
      s <= conv_std_logic_vector(i, 3);
      wait for 10 ns;
    end loop;
    wait;
  end process;
end;
