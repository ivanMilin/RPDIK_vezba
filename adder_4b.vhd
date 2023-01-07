library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_4b is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           s : out STD_LOGIC_VECTOR (3 downto 0));
end adder_4b;

architecture Structural of adder_4b is
    signal cout1, cout2, cout3 : std_logic;
begin
    f_adder0 : entity work.f_adder
    Port map(   a(0) => b(0),
                a(1) => a(0),
                cin => cin,
                cout => cout1,
                s => s(0));
            
    f_adder1 : entity work.f_adder
    Port map(   a(0) => b(1),
                a(1) => a(1),
                cin => cout1,
                cout => cout2,
                s => s(1));
                
    f_adder2 : entity work.f_adder
    Port map(   a(0) => b(2),
                a(1) => a(2),
                cin => cout2,
                cout => cout3,
                s => s(2));
            
    f_adder3 : entity work.f_adder
    Port map(   a(0) => b(3),
                a(1) => a(3),
                cin => cout3,
                cout => cout,
                s => s(3));
end Structural;
