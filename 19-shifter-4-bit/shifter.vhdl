library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shift is
  port (
    d: in std_logic_vector(3 downto 0);
    s: in std_logic_vector(2 downto 0);
    y: out std_logic_vector(3 downto 0)
  );
end shift;

architecture shift of shift is
begin
  process(d, s)
  begin
    case s is
      when "000" =>
        y <= d;
      when "001" =>
        y <= '0' & d(3 downto 1);
      when "010" =>
        y <= d(2 downto 0) & '0';
      when "011" =>
        y <= d(0) & d(3 downto 1);
      when "100" =>
        y <= d(2 downto 0) & d(3);
      when "101" =>
        y <= d(3) & d(3 downto 1);
      when "110" =>
        y <= d(1 downto 0) & d(3 downto 2);
      when "111" =>
        y <= d;
      when others =>
        y <= d;
    end case;
  end process;
end shift;
