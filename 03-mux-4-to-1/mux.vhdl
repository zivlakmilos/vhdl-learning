library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux is
  port (
    a: in std_logic;
    b: in std_logic;
    s: in std_logic;
    y: out std_logic
  );
end mux;

architecture mux of mux is
begin
  y <= (not s and a) or (s and b);
end mux;
