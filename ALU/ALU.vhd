-----------------------------------------
-- Actividad : Creación de la primera ALU en vhdl
-- Autores: GRUPO 04 
--				Jhoan Lozano
--				William Aguirre
--				Xavier Garzon
--				Hector Amature
-- Fecha : 19/10/2018
-- Curso : Arquitectura de Computadores II
-- Archivo : ALU.vhd
-----------------------------------------
-- Descripcion : Creación de la primera ALU en vhdl
-----------------------------------------
-- Cambios : primera version 19/10/2018
-----------------------------------------
Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--DEFINICIÓN DE LA ENTIDAD
Entity ALU is --generic(
--	TAMAÑO_BUS : natural := 1 ); 
port(
	S  : in std_logic_vector(1 downto 0);
	BA : in std_logic;
	BB : in std_logic;
	BC : out std_logic_vector(1 downto 0)
);
end entity;

--DEFINICIÓN DE LA ARQUITECTURA
Architecture ALU_arq of ALU is
begin

	BC <= ('0'&BA) + BB when S = "00" else
			('0'&BA) + 1  when S = "01" else
			'0'&(BA and BB)  when S = "10" else
			'0'&(BA xor BB)  when S = "11";
			
end Architecture;