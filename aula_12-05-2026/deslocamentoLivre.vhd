library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity deslocamentoLivre is
	port (
		clk, reset, d: in std_logic;
		q: out std_logic
	);
end deslocamentoLivre;

architecture exemplo of deslocamentoLivre is
	signal r_reg : std_logic_vector (3 downto 0);
	signal r_next : std_logic_vector(3 downto 0);
begin
	-- register
	process(clk, reset)
	begin
		if (reset = '1') then
			r_reg <= (others => '0');
		elsif (clk'event and clk = '1') then
			r_reg <= r_next;
		end if;
	end process;
	-- next-state logic
	r_next <= d & r_reg(3 downto 1);
	-- output logic
	q <= r_reg(0);
end exemplo;