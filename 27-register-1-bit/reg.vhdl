library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity reg is
  port (
    load: in std_logic;
    inp0: in std_logic;
    clk: in std_logic;
    clr: in std_logic;
    q0: out std_logic
  );
end reg;

architecture reg of reg is
  signal D, q: std_logic;
begin
  D <= (q and (not load)) or (inp0 and load);

  process(clk, clr)
  begin
    if clr = '1' then
      q <= '0';
    elsif clk'event and clk = '1' then
      q <= D;
    end if;
  end process;

  q0 <= q;
end reg;
