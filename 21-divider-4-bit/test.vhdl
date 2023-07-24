library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component div is
  port (
    num: in std_logic_vector(7 downto 0);
    den: in std_logic_vector(3 downto 0);
    quo: out std_logic_vector(7 downto 0);
    re: out std_logic_vector(3 downto 0)
  );
end component;

signal num: std_logic_vector(7 downto 0) := "00000000";
signal den: std_logic_vector(3 downto 0) := "0101";
signal quo: std_logic_vector(7 downto 0) := "00000000";
signal re: std_logic_vector(3 downto 0) := "0000";

begin
  dut: div
  port map(
    num => num,
    den => den,
    quo => quo,
    re => re
  );
  process begin
    for i in 100 to 150 loop
      num <= conv_std_logic_vector(i, 8);
      wait for 10 ns;
    end loop;
    wait;
  end process;
end;
