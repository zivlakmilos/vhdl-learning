library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bin2gray is
  port (
    b: in std_logic_vector (3 downto 0);
    g: out std_logic_vector(3 downto 0)
  );
end bin2gray;

architecture bin2gray of bin2gray is
begin
  process(b)
  begin
    g(3) <= b(3);
    for i in 2 downto 0 loop
      g(i) <= b(i+1) xor b(i);
    end loop;
  end process;
end bin2gray;
