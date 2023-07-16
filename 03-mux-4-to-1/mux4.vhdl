library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux4 is
  port (
    c: in std_logic_vector(0 to 3);
    s: in std_logic_vector(0 to 1);
    z: out std_logic
  );
end mux4;

architecture mux4 of mux4 is
  component mux is
    port (
      a: in std_logic;
      b: in std_logic;
      s: in std_logic;
      y: out std_logic
    );
  end component;

  signal v, w: std_logic;
begin
  M1: mux port map(
    a => c(0),
    b => c(1),
    s => s(0),
    y => v
  );
  M2: mux port map(
    a => c(2),
    b => c(3),
    s => s(0),
    y => w
  );
  M3: mux port map(
    a => v,
    b => w,
    s => s(1),
    y => z
  );
end mux4;
