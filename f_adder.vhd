library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity f_adder is
    Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC);
end f_adder;

architecture Behavioral of f_adder is
    
begin
    s <= a(0) xor a(1) xor cin;
    cout <= ((a(0) xor a(1)) and cin) or (a(0) and a(1));

end Behavioral;
