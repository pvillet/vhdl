library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity compteur4bits is
   port ( clk      : in std_logic;
          compteur : out std_logic_vector (3 downto 0) );
end compteur4bits;

architecture Behavioral of compteur4bits is

--Declaration d'un signal interne avec initialisation à '0'
signal compteur_interne :  std_logic_vector (3 downto 0) := (others=>'0');

begin

ps_compteur: process(clk)
begin
   if clk'event and clk'last_value='0' and clk = '1' then
      compteur_interne <= compteur_interne + '1';
   end if;
end process ps_compteur;

compteur <= compteur_interne;
end Behavioral;