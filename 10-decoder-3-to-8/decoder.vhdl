library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decoder is
  port (
    a: in std_logic_vector(2 downto 0);
    b: out std_logic_vector(7 downto 0)
  );
end decoder;

architecture decoder of decoder is
begin
  b(0) <= not a(2) and not a(1) and not a(0);
  b(1) <= not a(2) and not a(1) and a(0);
  b(2) <= not a(2) and a(1) and not a(0);
  b(3) <= not a(2) and a(1) and a(0);
  b(4) <= a(2) and not a(1) and not a(0);
  b(5) <= a(2) and not a(1) and a(0);
  b(6) <= a(2) and a(1) and not a(0);
  b(7) <= a(2) and a(1) and a(0);
end decoder;
