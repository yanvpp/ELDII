library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seqDec is
	port(
		a: in std_logic_vector (7 downto 0);
		b: in std_logic_vector (7 downto 0);
		
		gt: out std_logic;
		eq: out std_logic;
		lt: out std_logic
	);
end seqDec;

architecture exemplo of seqDec is
	signal a_signed, b_signed : signed(7 downto 0);

begin
	a_signed <= signed(a);
	b_signed <= signed(b);

	process (a, b)
		begin
		   if (a > b) then
			  gt <= '1';
		   elsif (a = b) then
		 	  eq <= '1';
		   else
			  lt <= '1';
		   end if;
	end process;

end architecture;

architecture correcao1 of seqDec is
	signal a_signed, b_signed : signed(7 downto 0);
begin
	a_signed <= signed(a);
	b_signed <= signed(b);
	
	process (a_signed, b_signed)
		
      begin
			if (a_signed > b_signed) then
				gt <= '1';
				eq <= '0';
				lt <= '0';
			elsif (a_signed = b_signed) then
				gt <= '0';
				eq <= '1';
				lt <= '0';
			else
				gt <= '0';
				eq <= '0';
				lt <= '1';
			end if;
	end process;

end architecture;

architecture correcao2 of seqDec is
	signal a_signed, b_signed : signed(7 downto 0);
begin
	a_signed <= signed(a);
	b_signed <= signed(b);
	
	process (a_signed, b_signed)
		begin
			gt <= '0';
			eq <= '0';
			lt	<= '0';
			
			if (a_signed > b_signed) then
				gt <= '1';
			elsif (a_signed = b_signed) then
				eq <= '1';
			else
				lt <= '1';
			end if;
	end process;
end architecture;

configuration seqDec_v1 of seqDec is
	for exemplo end for;
end configuration;

configuration seqDec_v2 of seqDec is
	for correcao1 end for;
end configuration;

configuration seqDec_v3 of seqDec is
	for correcao2 end for;
end configuration;