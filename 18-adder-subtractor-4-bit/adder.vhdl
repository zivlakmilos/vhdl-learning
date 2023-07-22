library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder is
  port (
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    ci: in std_logic;
    cf: out std_logic;
    ovf: out std_logic;
    s: out std_logic_vector(3 downto 0)
  );
end adder;

architecture adder of adder is
signal c: std_logic_vector(4 downto 0);
begin
  c(0) <= ci;
  s <= a xor b xor c(3 downto 0);
  c(4 downto 1) <= (a and b) or (c(3 downto 0) and (a xor b));
  cf <= c(4);
  ovf <= c(3) xor c(4);
end adder;
