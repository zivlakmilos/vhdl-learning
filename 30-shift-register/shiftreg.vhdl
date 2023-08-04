library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shiftreg is
  port (
    clk: in std_logic;
    clr: in std_logic;
    data_in: in std_logic;
    q: out std_logic_vector(3 downto 0)
  );
end shiftreg;

architecture shiftreg of shiftreg is
  signal qs: std_logic_vector(3 downto 0);
begin
  process(clk, clr)
  begin
    if clr = '1' then
      qs <= "0000";
    elsif clk'event and clk = '1' then
      qs(3) <= data_in;
      qs(2 downto 0) <= qs(3 downto 1);
    end if;

    q <= qs;
  end process;
end shiftreg;
