library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bin2bcd is
  port (
    b: in std_logic_vector(3 downto 0);
    p: out std_logic_vector(4 downto 0)
  );
end bin2bcd;

architecture bin2bcd of bin2bcd is
begin
  p(4) <= (b(3) and b(2)) or (b(3) and b(1));
  p(3) <= (b(3) and not b(2) and not b(1));
  p(2) <= (not b(3) and b(2)) or (b(2) and b(1));
  p(1) <= (b(3) and b(2) and not b(1)) or (not b(3) and b(1));
  p(0) <= b(0);
end bin2bcd;
