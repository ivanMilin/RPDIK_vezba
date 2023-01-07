library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_4b_tb is
--  Port ( );
end adder_4b_tb;

architecture Behavioral of adder_4b_tb is
    signal cin_s : std_logic;    
    signal a_s, b_s : std_logic_vector(3 downto 0);
    signal s_s : std_logic_vector(3 downto 0);
    signal cout_s : std_logic;
begin
    adder_4b : entity work.adder_4b
    Port map(   a => a_s,
                b => b_s,
                cin => cin_s,
                cout => cout_s,
                s => s_s);
    
    cin_s <= '0', '1' after 1600ns;
    -- Podesavamo kobiaciju ulaza za a_s
    a_s(3) <= '0', '1' after 800ns;
    a_s(2) <= '0', '1' after 400ns, '0' after 800ns, '1' after 1200ns;
    a_s(1) <= '0', '1' after 200ns, '0' after 400ns, '1' after 600ns, '0' after 800ns, '1' after 1000ns,
                   '0' after 1200ns, '1' after 1400ns;
    a_s(0) <= '0', '1' after 100ns, '0' after 200ns, '1' after 300ns, '0' after 400ns, '1' after 500ns,
                   '0' after 600ns, '1' after 700ns, '0' after 800ns, '1' after 900ns, '0' after 1000ns,
                   '1' after 1100ns,'0' after 1200ns,'1' after 1300ns,'0' after 1400ns,'1' after 1500ns;
               
    -- Podesavamo kobiaciju ulaza za b_s
    b_s(3) <= '0', '1' after 800ns;
    b_s(2) <= '0', '1' after 400ns, '0' after 800ns, '1' after 1200ns;
    b_s(1) <= '0', '1' after 200ns, '0' after 400ns, '1' after 600ns, '0' after 800ns, '1' after 1000ns,
                   '0' after 1200ns, '1' after 1400ns;
    b_s(0) <= '0', '1' after 100ns, '0' after 200ns, '1' after 300ns, '0' after 400ns, '1' after 500ns,
                   '0' after 600ns, '1' after 700ns, '0' after 800ns, '1' after 900ns, '0' after 1000ns,
                   '1' after 1100ns,'0' after 1200ns,'1' after 1300ns,'0' after 1400ns,'1' after 1500ns;                   
                   
                               

end Behavioral;
