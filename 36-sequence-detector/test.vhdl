library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component seqdata is
  port (
    clk: in std_logic;
    clr: in std_logic;
    din: in std_logic;
    dout: out std_logic
  );
end component;

signal clk: std_logic := '0';
signal clr: std_logic := '0';
signal din: std_logic := '0';
signal dout: std_logic := '0';

constant clk_interval: time := 10 ns;

begin
  dut: seqdata
  port map(
    clk => clk,
    clr => clr,
    din => din,
    dout => dout
  );
  process begin
    clr <= '1';
    wait for 5 ns;
    clr <= '0';
    wait for 5 ns;
    din <= '1';
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 5 ns;
    din <= '1';
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 5 ns;
    din <= '0';
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 5 ns;
    din <= '1';
    clk <= '1';
    wait for 10 ns;
    clk <= '0';
    wait for 5 ns;
    din <= '1';
    clk <= '1';
    wait for 10 ns;
    clk <= '1';
    wait for 5 ns;
    din <= '0';
    clk <= '1';
    wait for 10 ns;
    clk <= '1';
    wait for 5 ns;
    din <= '1';
    clk <= '1';
    wait for 10 ns;
    wait;
  end process;
end;
