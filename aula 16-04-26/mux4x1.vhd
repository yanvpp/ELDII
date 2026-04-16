library ieee;
use IEEE.STD_LOGIC_1164.all;

entity mux4x1 is
	Port (
		-- Input
		X : in bit_vector (3 downto 0);
		Sel : in bit_vector (1 downto 0);
		-- Output
		Y : out bit
		);
				
end mux4x1;

-- boolean logic
architecture v_logica_pura of mux4x1 is
begin
Y <= (X(0) and (not Sel(1)) and (not Sel(0))) or 
	  (X(1) and (not Sel(1)) and Sel(0)) or
	  (X(2) and Sel(1) and (not Sel(0))) or
	  (X(3) and Sel(1) and Sel(0));
end architecture;

-- when-else
architecture v_when_else of mux4x1 is
	begin
		Y<= X(0) when Sel = "00" else
			 X(1) when Sel = "01" else
			 X(2) when Sel = "10" else
			 X(3);
end architecture;

-- with-select
architecture v_with_select of mux4x1 is
	begin
		with Sel select
		Y <= X(0) when "00",
			  X(1) when "01",
			  X(2) when "10",
			  X(3) when others;
end architecture;

configuration logica_pura of mux4x1 is
	for v_logica_pura end for;
end configuration;

configuration when_else of mux4x1 is
	for v_when_else end for;
end configuration;

configuration with_select of mux4x1 is
	for v_with_select end for;
end configuration;