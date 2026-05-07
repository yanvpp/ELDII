library ieee;
use ieee.std_logic_1164.all;

entity seqAForLoop is
	port (
		a : in std_logic_vector(7 downto 0);
		p : inout std_logic_vector(7 downto 0);
		
		y : out std_logic	
	);
end seqAForLoop;

architecture code_v1 of seqAForLoop is
	begin
		process(a, p)
			begin
				p(0) <= a(0);
								
				for i in 1 to 7 loop
					p(i) <= a(i) xor p(i - 1);
				end loop;		
				
				y <= p(7);
		end process;
end architecture;

configuration ifsc_v1 of seqAForLoop is
	for code_v1 end for;
end configuration;