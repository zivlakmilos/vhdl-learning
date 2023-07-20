library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity encoder is
  port (
    x: in std_logic_vector(7 downto 0);
    y: out std_logic_vector(2 downto 0);
    valid: out std_logic
  );
end encoder;

architecture encoder of encoder is
begin
  process(x)
    variable j: std_logic;
  begin
    y <= "000";
    valid <= '0';
    for j in 0 to 7 loop
      if x(j) = '1' then
        y <= conv_std_logic_vector(j, 3);
        valid <= '1';
      end if;
    end loop;
  end process;
end encoder;
