library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

use std.textio.all;

entity test is
end;

architecture test of test is
component alu is
  port (
    alusel: in std_logic_vector(2 downto 0);
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    nf: out std_logic;
    zf: out std_logic;
    cf: out std_logic;
    ovf: out std_logic;
    y: out std_logic_vector(3 downto 0)
  );
end component;

signal alusel: std_logic_vector(2 downto 0);
signal a: std_logic_vector(3 downto 0);
signal b: std_logic_vector(3 downto 0);
signal nf: std_logic;
signal zf: std_logic;
signal cf: std_logic;
signal ovf: std_logic;
signal y: std_logic_vector(3 downto 0);

begin
  dut: alu
  port map(
    alusel => alusel,
    a => a,
    b => b,
    nf => nf,
    zf => zf,
    cf => cf,
    ovf => ovf,
    y => y
  );
  process begin
    for i in 0 to 16 loop
      a <= conv_std_logic_vector(i, 4);
      b <= "0111";
      for j in 0 to 7 loop
        alusel <= conv_std_logic_vector(j, 3);
        wait for 10 ns;
      end loop;
    end loop;
    wait;
  end process;
end;
