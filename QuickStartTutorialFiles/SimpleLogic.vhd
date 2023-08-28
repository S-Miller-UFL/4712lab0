LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY SimpleLogic IS

	PORT (A, B, C, D	: IN 	STD_LOGIC ;
		Z: OUT STD_LOGIC) ;
		
END SimpleLogic ;

ARCHITECTURE Behavior OF SimpleLogic IS	
BEGIN

    Z <= (B AND NOT C) OR (NOT A) OR D;
		
END Behavior ;
