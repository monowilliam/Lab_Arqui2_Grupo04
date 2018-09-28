Library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--DEFINICIÓN DE LA ENTIDAD
Entity flip_flop_D is port(
	D: 		in std_logic;
	clock:	in std_logic;
	Q: 		out std_logic
);
end entity;

--DEFINICIÓN DE LA ARQUITECTURA
Architecture flip_flop_D_arq of flip_flop_D is
signal temp: std_logic;
begin
process (clock)
begin
	if rising_edge(clock) then
		Q <= D;
	end if;
end process;

end Architecture;

--GRUPO 04 
--Jhoan Lozano
--William Aguirre
--Xavier Garzon
--Hector Amature