library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity mult is
  port (
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    p: out std_logic_vector(7 downto 0)
  );
end mult;

architecture mult of mult is
begin
  process(a, b)
    variable pv, bp: std_logic_vector(7 downto 0);
  begin
    pv := "00000000";
    bp := "0000" & b;
    for i in 0 to 3 loop
      if a(i) = '1' then
        pv := pv + bp;
      end if;
      bp := bp(6 downto 0) & '0';
    end loop;
    p <= pv;
  end process;
end mult;
