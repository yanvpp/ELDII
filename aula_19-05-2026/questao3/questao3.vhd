library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity questao3 is
    port
    (
        clk, reset : in std_logic;
        up       : in std_logic;
        q        : out std_logic_vector (7 downto 0)
    );
end questao3;

architecture contadorBinario of questao3 is
    signal r_reg  : unsigned (7 downto 0);
    signal r_next : unsigned (7 downto 0);
begin

    -- flipflop d
    process (clk, reset)
    begin
        if (reset = '1') then
            r_reg <= (others => '0');
        elsif (rising_edge(clk)) then
            r_reg <= r_next;
        end if;
    end process;

    -- next state logic
    process (up, r_reg)
    begin
        if (up = '1') then
            r_next <= r_reg + 1;      
        else
            r_next <= r_reg - 1;      
        end if;
    end process;

    q <= std_logic_vector(r_reg);

end contadorBinario;				