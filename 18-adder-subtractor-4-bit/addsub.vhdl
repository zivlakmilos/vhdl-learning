library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity addsub is
  port (
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    E: in std_logic;
    cf: out std_logic;
    ovf: out std_logic;
    s: out std_logic_vector(3 downto 0)
  );
end addsub;

architecture addsub of addsub is
component adder
  port (
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    ci: in std_logic;
    cf: out std_logic;
    ovf: out std_logic;
    s: out std_logic_vector(3 downto 0)
  );
end component;
signal bx: std_logic_vector(3 downto 0);
begin
  bx <= b xor E & E & E & E;
  add: adder
  port map(
    a => a,
    b => bx,
    ci => E,
    cf => cf,
    ovf => ovf,
    s => s
  );
end addsub;
