library IEEE;
use IEEE.std_logic_1164.all;
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
    variable valid_var: std_logic;
  begin
    y(2) <= x(7) or x(6) or x(5) or x(4);
    y(1) <= x(7) or x(6) or x(3) or x(2);
    y(0) <= x(7) or x(5) or x(3) or x(1);
    valid_var := '0';
    for i in 7 downto 0 loop
      valid_var := valid_var or x(i);
    end loop;
    valid <= valid_var;
  end process;
end encoder;
