library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux2g is
  generic (N: integer);
  port (
    a: in std_logic_vector(0 to N - 1);
    b: in std_logic_vector(0 to N - 1);
    s: in std_logic;
    y: out std_logic_vector(0 to N - 1)
  );
end mux2g;

architecture mux2g of mux2g is
begin
  process(a, b, s)
  begin
    if s = '0' then
      y <= a;
    else
      y <= b;
    end if;
  end process;
end mux2g;
