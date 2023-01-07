library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity f_adder_tb is
--  Port ( );
end f_adder_tb;

architecture Behavioral of f_adder_tb is
    signal a_s :STD_LOGIC_VECTOR (1 downto 0);
    signal cin_s :STD_LOGIC;
    signal cout_s :STD_LOGIC;
    signal s_s :STD_LOGIC; 
begin
    F_ADDER : entity work.f_adder
    Port map(   a => a_s,
                cin => cin_s,
                cout => cout_s,
                s => s_s);
            
    a_s <= "00", "01" after 100ns,"10" after 200ns,"11" after 300ns,"00" after 400ns,
                 "01" after 500ns,"10" after 600ns,"11" after 700ns;
    
    cin_s <= '0', '0' after 100ns, '0' after 200ns,'0' after 300ns, '1' after 400ns,        
                  '1' after 500ns, '1' after 600ns,'1' after 700ns;
    
end Behavioral;
