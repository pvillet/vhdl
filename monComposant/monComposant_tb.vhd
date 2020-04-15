library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity monComposant_tb is
end monComposant_tb;

architecture Behavioral of monComposant_tb is
  -- Signaux internes à l'architecture de test
  signal entree1, entree2, entree3, sortie : std_logic;
  -- Déclaration du composant à tester
  component monComposant is 
	port ( 	ENTREE1 : in std_logic;
		ENTREE2 : in std_logic;
		ENTREE3 : in std_logic;
		SORTIE : out std_logic);
  end component;
begin
  -- Instantiation du composant monComposant
  uut: monComposant port map (
    --mapping des signaux internes à l'architecture
    -- de test vers les ports du composants.
    ENTREE1 => entree1,
    ENTREE2 => entree2,
    ENTREE3 => entree3,
    SORTIE => sortie);
    
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
     wait for 8 ns;
     entree2 <= '1'; 
     wait for 8 ns;
  end process entree2_sti;

  entree3_sti : process
  begin
     entree3 <= '0'; 
     wait for 14 ns;
     entree3 <= '1'; 
     wait for 28 ns;
  end process entree3_sti;


end Behavioral;
    