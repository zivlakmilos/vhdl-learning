library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counter is
  port (
    clr: in std_logic;
    clk: in std_logic;
    q: out std_logic_vector(2 downto 0)
  );
end counter;

architecture counter of counter is
  signal D, qs: std_logic_vector(2 downto 0);
begin
  D(2) <= (not qs(2) and qs(1) and qs(0))
          or (qs(2) and not qs(1))
          or (qs(2) and not qs(0));
  D(1) <= (not qs(1) and qs(0))
          or (qs(1) and not qs(0));
  D(0) <= not qs(0);

  process(clk, clr)
  begin
    if clr = '1' then
      qs <= "000";
    elsif clk'event and clk = '1' then
      qs <= D;
    end if;
  end process;
  q <= qs;
end counter;
