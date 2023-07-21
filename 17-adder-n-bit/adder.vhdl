library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity adder is
  generic (N: integer := 4);
  port (
    a: in std_logic_vector(N-1 downto 0);
    b: in std_logic_vector(N-1 downto 0);
    y: out std_logic_vector(N-1 downto 0)
  );
end adder;

architecture adder of adder is
begin
  process(a, b)
  begin
    y <= a + b;
  end process;
end adder;
