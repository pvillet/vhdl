
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inverter is
	port ( 	I : in std_logic;
			O : out std_logic);
end inverter;

architecture Behavioral of inverter is
begin
	
 O <= not(I);
				
end Behavioral;
