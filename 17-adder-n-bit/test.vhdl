library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component adder is
  generic (N: integer);
  port (
    a: in std_logic_vector(N-1 downto 0);
    b: in std_logic_vector(N-1 downto 0);
    y: out std_logic_vector(N-1 downto 0)
  );
end component;

signal a: std_logic_vector(3 downto 0) := "0000";
signal b: std_logic_vector(3 downto 0) := "1011";
signal y: std_logic_vector(3 downto 0) := "0000";

begin
  dut: adder
  generic map (
    N => 4
  )
  port map(
    a => a,
    b => b,
    y => y
  );
  process begin
    for i in 0 to 15 loop
      a <= conv_std_logic_vector(i, 4);
      wait for 10 ns;
    end loop;
    wait;
  end process;
end;
