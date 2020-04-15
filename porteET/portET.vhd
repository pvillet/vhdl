library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity porteET is
	port ( 	A : in std_logic;
		B : in std_logic;
		S : out std_logic);
end porteET;

architecture Behavioral of porteET is
begin
	
 S <= A and B;
				
end Behavioral;
