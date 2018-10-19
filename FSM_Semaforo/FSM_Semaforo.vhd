Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--DEFINICIÓN DE LA ENTIDAD
Entity FSM_Semaforo is port(
	carro 					: in std_logic;
	clock 					: in std_logic;
	Fin_tiempo 				: in std_logic;
	activar_temporizador : in std_logic;
	sensor 					: in std_logic;
	verde_avenida 			: out std_logic
);
end entity;

--DEFINICIÓN DE LA ARQUITECTURA
Architecture FSM_Semaforo_arq of FSM_Semaforo is
	type estados_semaf is (rojo, verde);
	signal estadoActual : estados_semaf;
begin
	FSM1: process (clock)
	begin
		if (rising_edge(clock)) then
			if (carro = '1' and Fin_tiempo = '0') then
				sensor <= '1';
				verde_avenida <= '0';
				activar_temporizador <= '1';
				estadoActual <= rojo;
			else
				sensor <= '1';
				verde_avenida <= '1';
				activar_temporizador <= '0';
				estadoActual <= verde;
			end if;
		end if;
	end process;

	FSM2: process (clock)
	begin
	CASE estadoActual is
		WHEN rojo =>
			if () then
			
			end if;
		WHEN verde =>
			if () then
			
			end if;
	
	end process;

	end Architecture;

--GRUPO 04 
--Jhoan Lozano
--William Aguirre
--Xavier Garzon
--Hector Amature