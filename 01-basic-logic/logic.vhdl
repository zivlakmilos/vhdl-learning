
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity logic is
  port (
    i1: in std_logic;
    i2: in std_logic;
    a: out std_logic;
    o: out std_logic;
    na: out std_logic;
    no: out std_logic;
    xo: out std_logic
  );
end;

architecture logic of logic is
begin
  a <= i1 and i2;
  o <= i1 or i2;
  na <= i1 nand i2;
  no <= i1 nor i2;
  xo <= i1 xor i2;
end;
