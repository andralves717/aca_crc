LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateXOR6 IS
  PORT (x0, x1, x2, x3, x4, x5 : IN STD_LOGIC;
										y: OUT STD_LOGIC);
END gateXOR6;

ARCHITECTURE logicFunction OF gateXOR6 IS
	signal y0, y1 : std_logic;

	component gateXOR2
		port(x0,x1 : in STD_LOGIC;
					y : out STD_LOGIC);
	end component;
	component gateXOR4
		port(x0,x1,x2,x3 : in STD_LOGIC;
						  y : out STD_LOGIC);
	end component;

BEGIN

   xor_1: gateXOR4 port map(x0, x1, x2, x3, y0);
	xor_2: gateXOR2 port map(x4, x5, y1);
	xor_final: gateXOR2 port map(y0, y1, y);
  
END logicFunction;