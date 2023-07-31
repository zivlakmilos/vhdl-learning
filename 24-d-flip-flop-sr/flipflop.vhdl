library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity flipflop is
  port (
    clk: in std_logic;
    clr: in std_logic;
    set: in std_logic;
    D: in std_logic;
    q: out std_logic;
    notq: out std_logic
  );
end flipflop;

architecture flipflop of flipflop is
  signal f1, f2, f3, f4, f5, f6: std_logic;
begin
  f1 <= not(f4 and f2 and not set);
  f2 <= not(f1 and f5 and not clr);
  f3 <= not(f6 and f4 and not set);
  f4 <= not(f3 and clk and not clr);
  f5 <= not(f4 and clk and f6 and not set);
  f6 <= not(f5 and d and not clr);

  q <= f1;
  notq <= f2;
end flipflop;
