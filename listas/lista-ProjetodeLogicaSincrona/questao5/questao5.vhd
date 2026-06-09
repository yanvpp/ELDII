library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity questao5 is

	port(
		reset, clk : in std_logic;
		q : out std_logic_vector (3 downto 0);
		maxPulse, midPulse : out std_logic
	);

end questao5;

architecture contador of questao5 is
	signal r_reg, r_next : unsigned (3 downto 0);
	begin
		process(clk, reset)
		begin
			if (reset = '1') then
				r_reg <= "0001";				
		   elsif (clk'event and clk = '1') then
            r_reg <= r_next;
			end if;
		end process;
	
		r_next <= "0001" when r_reg = 12 else r_reg + 1;
	
		maxPulse <= '1' when r_reg = 12 else '0';
		midPulse <= '1' when r_reg = 6 else '0';
			
		q <= std_logic_vector(r_reg);

end contador;