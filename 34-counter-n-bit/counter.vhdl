library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity counter is
  generic (N: integer := 4);
  port (
    clr: in std_logic;
    clk: in std_logic;
    q: out std_logic_vector(N-1 downto 0)
  );
end counter;

architecture counter of counter is
  signal count: std_logic_vector(N-1 downto 0);
begin
  process(clk, clr)
  begin
    if clr = '1' then
      count <= (others => '0');
    elsif clk'event and clk = '1' then
      count <= count + 1;
    end if;
  end process;
  q <= count;
end counter;
