library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity gray2bin is
  port (
    g: in std_logic_vector(3 downto 0);
    b: out std_logic_vector(3 downto 0)
  );
end gray2bin;

architecture gray2bin of gray2bin is
begin
  process(g)
  variable bv: std_logic_vector(3 downto 0);
  begin
    bv(3) := g(3);
    for i in 2 downto 0 loop
      bv(i) := bv(i+1) xor g(i);
    end loop;
    b <= bv;
  end process;
end gray2bin;
