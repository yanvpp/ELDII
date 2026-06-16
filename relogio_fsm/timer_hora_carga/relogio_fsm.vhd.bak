library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity relogio_fsm is
	port (
		-- INPUTS
		  -- key(0), key(1), key(2),    key(3)
		clk, reset, ajuste, incrementa, decrementa : in std_logic;
		  -- entrada de hora, minuto e segundo
		hora_in 			: in std_logic_vector (4 downto 0); -- vai até 23, precisa de 5 bits
		min_in, seg_in : in std_logic_vector (5 downto 0); -- vai até 59, precisa de 6 bits
		
		-- OUTPUTS
		  -- blink para ajuste individual
		blink_h, blink_m, blink_s : out std_logic;
		  -- sinal de load
		load : out std_logic;
		  -- saídas de hora, minuto e segundo
		hora_out 			: out std_logic_vector (4 downto 0);
		min_out, seg_out 	: out std_logic_vector (5 downto 0)
		);
end relogio_fsm;

architecture estados of relogio_fsm is
    -- definição dos estados
    type mc_state_type is (
        idle,
        ajuste_h, incrementa_h, decrementa_h,
        ajuste_m, incrementa_m, decrementa_m,
        ajuste_s, incrementa_s, decrementa_s
    );

    signal state_reg, next_state : mc_state_type;
begin
    -- state register
    process(clk, reset)
    begin
        if(reset = '1') then
            state_reg <= idle;
        elsif (clk'event and clk = '1') then
            state_reg <= next_state;
        end if;
    end process;

    -- next-state logic
    process(state_reg, ajuste, incrementa, decrementa, hora_in, min_in, seg_in)
    begin
        next_state <= state_reg;
        hora_out <= hora_in;
        min_out <= min_in;
        seg_out <= seg_in;
        blink_h <= '0';
        blink_m <= '0';
        blink_s <= '0';
        load <= '0';

        case state_reg is
            when idle =>
                if (ajuste = '1') then
                    next_state <= ajuste_h;
                end if;

            when ajuste_h =>
                if (incrementa = '1') then
                    next_state <= incrementa_h;
                elsif (decrementa = '1') then
                    next_state <= decrementa_m;
                elsif (ajuste = '1') then
                    next_state <= ajuste_m;
                end if;
            
            when ajuste_m =>
                if (incrementa = '1') then
                    next_state <= incrementa_m;
                elsif (decrementa = '1') then
                    next_state <= decrementa_m;
                elsif (ajuste = '1') then
                    next_state <= ajuste_s;
                end if;

            when ajuste_s =>
                if (incrementa = '1') then
                    next_state <= incrementa_s;
                elsif (decrementa = '1') then
                    next_state <= decrementa_s;
                elsif (ajuste = '1') then
                    next_state <= idle;
                end if;

            when incrementa_h =>
                hora_out <= std_logic_vector(unsigned(hora_in) + 1);
                blink_h <= '1';
                load <= '1';
                next_state <= ajuste_h;
            
            when decrementa_h =>
                hora_out <= std_logic_vector(unsigned(hora_in) - 1);
                blink_h <= '1';
                load <= '1';
                next_state <= ajuste_h;

            when incrementa_m =>
                min_out <= std_logic_vector(unsigned(min_in) + 1);
                blink_m <= '1';
                load <= '1';
                next_state <= ajuste_m;
            
            when decrementa_m =>
                min_out <= std_logic_vector(unsigned(min_in) - 1);
                blink_m <= '1';
                load <= '1';
                next_state <= ajuste_m;

            when incrementa_s =>
                min_out <= std_logic_vector(unsigned(seg_in) + 1);
                blink_s <= '1';
                load <= '1';
                next_state <= ajuste_s;

            when decrementa_s =>
                min_out <= std_logic_vector(unsigned(seg_in) - 1);
                blink_s <= '1';
                load <= '1';
                next_state <= ajuste_s;

            when others =>
                next_state <= idle;

        end case;
    end process;
end estados;