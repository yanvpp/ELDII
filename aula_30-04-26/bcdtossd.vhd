library ieee;
use ieee.std_logic_1164.all;

entity bcdtossd is

	port (
			sw : in std_logic_vector(3 downto 0);
			hex0: out bit_vector (6 downto 0)
			);
end bcdtossd;

architecture code_v1 of bcdtossd is
begin
	process(sw)
		begin
			case sw is					 --abcdefg
				when "0000" => hex0 <= "0000001";
				when "0001" => hex0 <= "1001111";
				when "0010" => hex0 <= "0010010";
				when "0011" => hex0 <= "0000110";
				when "0100" => hex0 <= "1001100";
				when "0101" => hex0 <= "0100100";
				when "0110" => hex0 <= "0100000";
				when "0111" => hex0 <= "0001111";
				when "1000" => hex0 <= "0000000";
				when "1001" => hex0 <= "0001100";
				when others => hex0 <= "0110000";
			end case;
	end process;
end architecture;

configuration ifsc_v1 of bcdtossd is
	for code_v1 end for;
end configuration;