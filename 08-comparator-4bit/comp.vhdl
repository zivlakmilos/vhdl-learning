library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity comp4 is
  port (
    x: in std_logic_vector(3 downto 0);
    y: in std_logic_vector(3 downto 0);
    gt: out std_logic;
    eq: out std_logic;
    lt: out std_logic
  );
end comp4;

architecture comp4 of comp4 is
  procedure comp1bit (
    x: in std_logic;
    y: in std_logic;
    Gin: in std_logic;
    Lin: in std_logic;
    Gout: out std_logic;
    Lout: out std_logic;
    Eout: out std_logic) is
  begin
    Gout := (x and not y) or (x and Gin) or (not y and Gin);
    Eout := (not x and not y and not Gin and not Lin) or (x and y and not Gin and not Lin);
    Lout := (not x and y) or (not x and Lin) or (y and Lin);
  end procedure;
begin
  process(x, y)
    variable G, L, E: std_logic_vector(4 downto 0);
  begin
    G(0) := '0';
    L(0) := '0';
    for i in 0 to 3 loop
      comp1bit(x(i), y(i), G(i), L(i), G(i+1), L(i+1), E(i+1));
    end loop;
    gt <= G(4);
    eq <= E(4);
    lt <= L(4);
  end process;
end comp4;
