Library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--DEFINICIÓN DE LA ENTIDAD
Entity flip_flob_lab3 is port(
	entrada : in std_logic_vector(3 downto 0);
	reset : in std_logic;
	av		: in std_logic;
	Qsalida :out std_logic_vector(3 downto 0)
);
end entity;

--DEFINICIÓN DE LA ARQUITECTURA
Architecture flip_flob_lab3_arq of flip_flob_lab3 is
signal S:std_logic_vector(3 downto 0);
signal Q:std_logic_vector(3 downto 0);
signal notQ:std_logic_vector(3 downto 0);
--signal R:std_logic;
begin

--*******Codigo bajo nivel con Flip Flop S-R************
flip: process (reset, av)
begin
	Bucle: for i in 0 to 3 loop
		S(i) <= entrada(i);
		if (reset = '0') then
			if (av = '1') then
				Q(i) <= notQ(i) nor reset;
				notQ(i) <= Q(i) nor S(i); 
				if entrada(i)  /= '1' then
					Q(i) <= '0';
				end if;
			end if;
			else
				Q(i) <= '0';
		end if;
		Qsalida(i) <= Q(i); 
	end loop Bucle;
end process;
--*******Final Codigo bajo nivel con Flip Flop S-R************


--*******Codigo simulando alto nivel simplificado************
--flip: process (reset, av)
--begin
--	if (reset = '0') then
--		if(av = '1') then
--			QSalida <= entrada;
--		end if;
--	else
--		QSalida <="0000";
--	end if;
--end process;
--*******Final Codigo alto nivel simplificado************

end Architecture;

--GRUPO 04 
--Jhoan Lozano
--William Aguirre
--Xavier Garzon
--Hector Amature