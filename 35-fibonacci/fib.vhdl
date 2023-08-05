library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity fib is
  port (
    clk: in std_logic;
    clr: in std_logic;
    f: out std_logic_vector(13 downto 0)
  );
end fib;

architecture fib of fib is
  signal fn1, fn: std_logic_vector(13 downto 0);
  constant fib_max: integer := 9999;
begin
  P1: process(clk, clr)
  begin
    if clr = '1' then
      fn <= "00000000000000";
      fn1 <= "00000000000001";
    elsif clk'event and clk = '1' then
      if fn1 < fib_max then
        fn1 <= fn1 + fn;
        fn <= fn1;
      else
        fn <= "00000000000000";
        fn1 <= "00000000000001";
      end if;
    end if;
  end process;
  f <= fn;
end fib;
