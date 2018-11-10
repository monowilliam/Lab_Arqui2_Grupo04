Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--DEFINICIÓN DE LA ENTIDAD
Entity FSM_Semaforo is port(
	clock 					: in std_logic;
	Fin_tiempo 				: in std_logic;
	sensor 					: in std_logic;
	activar_temporizador : out std_logic;
	verde_avenida 			: out std_logic;
	verde_calle				: out std_logic
);
end entity;

--DEFINICIÓN DE LA ARQUITECTURA
Architecture FSM_Semaforo_arq of FSM_Semaforo is
	type estados_semaf is (rojo, verde);
	shared variable estadoActual : estados_semaf := verde;
	shared variable estadoSiguiente : estados_semaf := verde;
begin
	process(clock, sensor)
		begin
		estadoActual := estadoSiguiente;
	end process;

	process (clock)
		begin
		if rising_edge(clock) then
			case estadoActual is
				when verde =>
					if(sensor ='1') then
						activar_temporizador <= '1';
						estadoSiguiente := rojo;
					end if;
					activar_temporizador <='0';
					verde_avenida <= '1';
					verde_calle <= '0';
				when rojo =>
					if(sensor ='0' and fin_tiempo ='1') then
						estadoSiguiente := verde;
					end if;
					activar_temporizador <='0';
					verde_avenida <= '0';
					verde_calle <= '1';
			end case;
		end if;
	end process;

end Architecture;

--GRUPO 04 
--Jhoan Lozano
--William Aguirre
--Xavier Garzon
--Hector Amature
