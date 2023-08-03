library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity reg is
  port (
    load: in std_logic;
    inp: in std_logic_vector(3 downto 0);
    clk: in std_logic;
    clr: in std_logic;
    q: out std_logic_vector(3 downto 0)
  );
end reg;

architecture reg of reg is
begin
  process(clk, clr)
  begin
    if clr = '1' then
      q <= "0000";
    elsif clk'event and clk = '1' then
      if load = '1' then
        q <= inp;
      end if;
    end if;
  end process;
end reg;
