library ieee;
use ieee.std_logic_1164.all;

entity flipFlopEnable is

	port (
		rst : in std_logic;
		clk : in std_logic;
		enable : in std_logic;
		d : in std_logic;
		q : out std_logic
	);

end flipFlopEnable;

architecture ffde of flipFlopEnable is
begin
	process (clk, rst)
	begin
		if rst = '1' then
			q <= '0';
		elsif rising_edge(clk) then -- rising edge sensitive
			if enable = '1' then
				q <= d;
			end if;
		end if;
	end process;
end architecture;

configuration ifsc_v1 of flipFlopEnable is
	for ffde end for;
end configuration;