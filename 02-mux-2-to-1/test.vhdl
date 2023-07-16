library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component mux is
  port (
    a: in std_logic;
    b: in std_logic;
    s: in std_logic;
    y: out std_logic
  );
end component;

signal a: std_logic;
signal b: std_logic;
signal s: std_logic;
signal y: std_logic;

begin
  dut: mux port map(
    a => a,
    b => b,
    s => s,
    y => y
  );
  process begin
    a <= '0';
    b <= '0';
    s <= '0';
    wait for 10 ns;
    a <= '0';
    b <= '0';
    s <= '1';
    wait for 10 ns;
    a <= '1';
    b <= '0';
    s <= '0';
    wait for 10 ns;
    a <= '1';
    b <= '0';
    s <= '1';
    wait for 10 ns;
    a <= '0';
    b <= '1';
    s <= '0';
    wait for 10 ns;
    a <= '0';
    b <= '1';
    s <= '1';
    wait for 10 ns;
    a <= '1';
    b <= '1';
    s <= '1';
    wait for 10 ns;
    a <= '0';
    b <= '0';
    s <= '1';
    wait for 10 ns;
    wait;
  end process;
end;
