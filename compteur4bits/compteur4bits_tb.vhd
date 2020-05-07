library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity compteur4bits_tb is
end compteur4bits_tb;

architecture Behavioral of compteur4bits_tb is
  -- Signaux internes à l'architecture de test
  signal clk : std_logic;
  signal COMPTEUR : std_logic_vector(3 downto 0);

  -- Déclaration du composant à tester
  component compteur4bits is 
   port ( clk      : in std_logic;
          compteur : out std_logic_vector (3 downto 0) );
  end component;
begin
  -- Instantiation du composant porteET
  uut: compteur4bits port map (
    --mapping des signaux internes à l'architecture
    -- de test vers les ports du composants.
   clk      => clk,
   compteur => compteur);
    
  clk_generation : process
  begin
     clk <= '1'; 
     wait for 15 ns;
     clk <= '0'; 
     wait for 15 ns;
  end process clk_generation;
      
end Behavioral;
    