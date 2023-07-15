library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component logic is
  port (
    i1: in std_logic;
    i2: in std_logic;
    a: out std_logic;
    o: out std_logic;
    na: out std_logic;
    no: out std_logic;
    xo: out std_logic
  );
end component;

signal i1: std_logic := '0';
signal i2: std_logic := '0';
signal output: std_logic_vector(0 to 4);

begin
  dut: logic port map(
    i1 => i1,
    i2 => i2,
    a => output(0),
    o => output(1),
    na => output(2),
    no => output(3),
    xo => output(4)
  );
  process begin
    i1 <= '0';
    i2 <= '0';
    wait for 10 ns;
    i1 <= '0';
    i2 <= '1';
    wait for 10 ns;
    i1 <= '1';
    i2 <= '0';
    wait for 10 ns;
    i1 <= '1';
    i2 <= '1';
    wait for 10 ns;
    wait;
  end process;
end;
