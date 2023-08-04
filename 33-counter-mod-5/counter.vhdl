library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity counter is
  port (
    clr: in std_logic;
    clk: in std_logic;
    q: out std_logic_vector(2 downto 0)
  );
end counter;

architecture counter of counter is
  signal count: std_logic_vector(2 downto 0);
begin
  process(clk, clr)
  begin
    if clr = '1' then
      count <= "000";
    elsif clk'event and clk = '1' then
      if count = "100" then
        count <= "000";
      else
        count <= count + 1;
      end if;
    end if;
  end process;
  q <= count;
end counter;
