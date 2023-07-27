library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity alu is
  port (
    alusel: in std_logic_vector(2 downto 0);
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    nf: out std_logic;
    zf: out std_logic;
    cf: out std_logic;
    ovf: out std_logic;
    y: out std_logic_vector(3 downto 0)
  );
end alu;

architecture alu of alu is
begin
  process(a, b, alusel)
    variable temp: std_logic_vector(4 downto 0);
    variable yv: std_logic_vector(3 downto 0);
    variable cfv, zfv: std_logic;
  begin
    cf <= '0';
    ovf <= '0';
    temp := "00000";
    zfv := '0';
    case alusel is
      when "000" =>
        yv := a;
      when "001" =>
        temp := ('0' & a) + ('0' & b);
        yv := temp(3 downto 0);
        cfv := temp(4);
        ovf <= yv(3) xor a(3) xor b(3) xor cfv;
        cf <= cfv;
      when "010" =>
        temp := ('0' & a) - ('0' & b);
        yv := temp(3 downto 0);
        cfv := temp(4);
        ovf <= yv(3) xor a(3) xor b(3) xor cfv;
        cf <= cfv;
      when "011" =>
        temp := ('0' & b) - ('0' & a);
        yv := temp(3 downto 0);
        cfv := temp(4);
        ovf <= yv(3) xor a(3) xor b(3) xor cfv;
        cf <= cfv;
      when "100" =>
        yv := not a;
      when "101" =>
        yv := a and b;
      when "110" =>
        yv := a or b;
      when "111" =>
        yv := a xor b;
      when others =>
        yv := a;
    end case;
    for i in 0 to 3 loop
      zfv := zfv or yv(i);
    end loop;
    y <= yv;
    zf <= zfv;
    nf <= yv(3);
  end process;
end alu;
