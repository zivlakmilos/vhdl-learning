library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ring is
  port (
    clk: in std_logic;
    clr: in std_logic;
    q: out std_logic_vector(3 downto 0)
  );
end ring;

architecture ring of ring is
  signal qs: std_logic_vector(3 downto 0);
begin
  process(clk, clr)
  begin
    if clr = '1' then
      qs <= "0001";
    elsif clk'event and clk = '1' then
      qs(3) <= qs(0);
      qs(2 downto 0) <= qs(3 downto 1);
    end if;
  end process;
  q <= qs;
end ring;
