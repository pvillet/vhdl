library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity porteET_tb is
end porteET_tb;

architecture Behavioral of porteET_tb is
  -- Signaux internes à l'architecture de test
  signal entree1, entree2, sortie : std_logic;
  -- Déclaration du composant à tester
  component porteET is 
    	port ( 	A : in std_logic;
			B : in std_logic;
			S : out std_logic);
  end component;
begin
  -- Instantiation du composant porteET
  uut: porteET port map (
    --mapping des signaux internes à l'architecture
    -- de test vers les ports du composants.
    A => entree1,
    B => entree2,
    S => sortie);
    
  entree1_sti : process
  begin
     entree1 <= '0'; 
     wait for 5 ns;
     entree1 <= '1'; 
     wait for 5 ns;
  end process entree1_sti;
      
  entree2_sti : process
  begin
     entree2 <= '0'; 
     wait for 10 ns;
     entree2 <= '1'; 
     wait;
  end process entree2_sti;
end Behavioral;
    