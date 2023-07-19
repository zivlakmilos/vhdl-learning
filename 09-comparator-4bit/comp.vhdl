library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity comp is
  generic (N: integer := 8);
  port (
    x: in std_logic_vector(N-1 downto 0);
    y: in std_logic_vector(N-1 downto 0);
    gt: out std_logic;
    eq: out std_logic;
    lt: out std_logic
  );
end comp;

architecture comp of comp is
begin
  process(x, y)
  begin
    gt <= '0';
    eq <= '0';
    lt <= '0';

    if (x > y) then
      gt <= '1';
    elsif (x = y) then
      eq <= '1';
    else
      lt <= '1';
    end if;
  end process;
end comp;
