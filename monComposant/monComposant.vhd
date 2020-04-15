library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity monComposant is
	port ( 	ENTREE1 : in std_logic;
		ENTREE2 : in std_logic;
		ENTREE3 : in std_logic;
		SORTIE : out std_logic);
end monComposant;

architecture Behavioral of monComposant is
	signal S_interne1 : std_logic;
	signal S_interne2 : std_logic;

	component porteET
		port (	A : in std_logic;
			B : in std_logic;
			S : out std_logic);
	end component;
	
	component INVERTER
		port (	I : in std_logic;
			O : out std_logic);
	end component;

begin
	
U1 : porteET
	port map (	A => ENTREE1,
			B => ENTREE2,
			S => S_interne1);
				
U2 : INVERTER
	port map (	I => S_interne1,
			O => S_interne2);
				
U3 : porteET
	port map (	A => S_interne2,
			B => ENTREE3,
			S => SORTIE);
				
end Behavioral;
