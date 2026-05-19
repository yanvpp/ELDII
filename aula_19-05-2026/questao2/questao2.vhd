library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity questao2 is
	port
	(
        clk, reset: in std_logic;
        q: out std_logic_vector (2 downto 0)
	);
end questao2;


architecture contadorSequencial of questao2 is
    signal q_contador : std_logic_vector (2 downto 0);
    signal d_contador : std_logic_vector (2 downto 0);
begin
    process (clk,reset)
    begin
        if (reset = '1') then
            q_contador <= "000";
        elsif (rising_edge(clk)) then
            q_contador <= d_contador; 
        end if;
    end process;

    process (q_contador)
    begin
        case q_contador is
            when "000" => d_contador <= "011";
            when "011" => d_contador <= "100";
            when "100" => d_contador <= "101";
            when "101" => d_contador <= "111";
            when others => d_contador <= "000"; 
        end case;               
    end process;

    q <= q_contador;

end contadorSequencial;