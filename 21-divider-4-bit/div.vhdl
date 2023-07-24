library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity div is
  port (
    num: in std_logic_vector(7 downto 0);
    den: in std_logic_vector(3 downto 0);
    quo: out std_logic_vector(7 downto 0);
    re: out std_logic_vector(3 downto 0)
  );
end div;

architecture div of div is
  procedure div4(
    num: in std_logic_vector(7 downto 0);
    den: in std_logic_vector(3 downto 0);
    quo: out std_logic_vector(3 downto 0);
    re: out std_logic_vector(3 downto 0)) is
    variable d, n1: std_logic_vector(4 downto 0);
    variable n2: std_logic_vector(3 downto 0);
  begin
    d := '0' & den;
    n2 := num(3 downto 0);
    n1 := '0' & num(7 downto 4);
    for i in 0 to 3 loop
      n1 := n1(3 downto 0) & n2(3);
      n2 := n2(2 downto 0) & '0';
      if n1 >= d then
        n1 := n1 - d;
        n2(0) := '1';
      end if;
    end loop;
    quo := n2;
    re := n1(3 downto 0);
  end procedure;
begin
  process(num, den)
    variable remH, remL, quoH, quoL: std_logic_vector(3 downto 0);
  begin
    div4("0000" & num(7 downto 4), den, quoH, remH);
    div4(remH & num(3 downto 0), den, quoL, remL);
    quo(7 downto 4) <= quoH;
    quo(3 downto 0) <= quoL;
    re <= remL;
  end process;
end div;
