# Aula 12/05/2026 - Contador Binário (contadorBinario)

## Objetivo
Projetar um contador binário sequencial de 4 bits utilizando o tipo de dado `unsigned` da biblioteca `numeric_std`. 

## Entradas e Saídas
- **Entradas:** `clk` e `reset`.
- **Saídas:** - `q`: Vetor de 4 bits contendo o valor atual da contagem.
  - `max_pulse`: Um pulso ("flag") ativado apenas quando o contador atinge o valor máximo.

## Arquitetura e Modelagem
A arquitetura `exemplo` adota a separação de lógica de estado (registradores) e lógica de transição, uma excelente prática em projetos digitais:
- **Registradores (`r_reg`, `r_next`):** Sinais do tipo `unsigned` (4 bits) armazenam o valor atual e o próximo.
- **Lógica Sequencial (Estado):** Um processo sensível ao `clk` e `reset`. O reset assíncrono zera a contagem com o comando `(others => '0')`. As mudanças regulares ocorrem sempre em transições de subida (`clk'event and clk = '1'`), atualizando o registrador (`r_reg <= r_next`).
- **Lógica de Próximo Estado:** A equação concorrente `r_next <= r_reg + 1` garante que o contador aumente a cada ciclo.
- **Sinalizador de Máximo:** A saída `max_pulse` é combinacional e sobe para `'1'` somente na condição em que o estado é `"1111"` (15 decimal).