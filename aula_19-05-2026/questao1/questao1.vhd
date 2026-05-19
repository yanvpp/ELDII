library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity questao1 is
	port
	(
		clk, reset: in std_logic;
        d: in std_logic;
        control: in std_logic_vector (1 downto 0);
        d_to_right: in std_logic;
        d_to_left: in std_logic;
        palavra: in std_logic_vector (3 downto 0);
        q: out std_logic_vector (3 downto 0)
	);
end questao1;

-- 00 para
-- 10 deslocar esquerda
-- 01 deslocar direita
-- 11 pausar

architecture deslocadorUniversal of questao1 is
    signal r_reg  : std_logic_vector (3 downto 0);
    signal r_next : std_logic_vector (3 downto 0);
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

    process (control, r_reg, palavra, d_to_left, d_to_right)
    begin
        case control is 
            when "00" => r_next <= r_reg;
            when "01" => r_next <= d_to_right & r_reg (3 downto 1); -- concatena para direita
            when "10" => r_next <= r_reg (2 downto 0) & d_to_left; -- concatena para a esquerda
            when "11" => r_next <= palavra;
            when others => r_next <= r_reg;
        end case;
    end process;

    q <= r_reg;
end deslocadorUniversal;