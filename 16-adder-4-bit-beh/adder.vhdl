library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity adder is
  port (
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    cf: out std_logic;
    ovf: out std_logic;
    s: out std_logic_vector(3 downto 0)
  );
end adder;

architecture adder of adder is
begin
  process(a, b)
    variable temp: std_logic_vector(4 downto 0);
  begin
    temp := ('0' & a) + ('0' & b);
    s <= temp(3 downto 0);
    cf <= temp(4);
    ovf <= temp(3) xor a(3) xor b(3) xor temp(4);
  end process;
end adder;
