Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--DEFINICIÓN DE LA ENTIDAD
Entity contador is port(
	Q : inout std_logic_vector(1 downto 0);
	reset : in std_logic;
	clock		: in std_logic
);
end entity;

--DEFINICIÓN DE LA ARQUITECTURA
Architecture contador_arq of contador is

begin

cont: process (reset, clock)
begin
	if (reset = '0') then
		if(rising_edge(clock)) then
			Q <= Q + "01";
 		end if;
	else
		Q <="00";
	end if;
end process;
end Architecture;

--GRUPO 04 
--Jhoan Lozano
--William Aguirre
--Xavier Garzon
--Hector Amature