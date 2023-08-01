library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity flipflop is
  port (
    clk: in std_logic;
    clr: in std_logic;
    D: in std_logic;
    q: out std_logic
  );
end flipflop;

architecture flipflop of flipflop is
begin
  process(clk, clr)
  begin
    if (clr = '1') then
      q <= '0';
    elsif (rising_edge(clk)) then
      q <= D;
    end if;
  end process;
end flipflop;
