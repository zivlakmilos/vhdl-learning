library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity decoder is
  port (
    a: in std_logic_vector(2 downto 0);
    b: out std_logic_vector(7 downto 0)
  );
end decoder;

architecture decoder of decoder is
begin
  process(a)
    variable j: integer;
  begin
    j := conv_integer(a);
    for i in 0 to 7 loop
      if (i = j) then
        b(i) <= '1';
      else
        b(i) <= '0';
      end if;
    end loop;
  end process;
end decoder;
