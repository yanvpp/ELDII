# Aula 26/05/2026 - Top Level Timer para Placa DE2-115

## Objetivo
Este é o arquivo de integração (Top-Level). Ele interliga diversos componentes de hierarquia mais baixa para construir um relógio digital completo (Timer: Horas, Minutos e Segundos) utilizando a infraestrutura da placa DE2-115.

## Componentes Instanciados
- `pll_timer`: Recebe o `CLOCK_50` (50 MHz) da placa e gera um sinal de clock reduzido derivado (`clk_2khz`).
- `timer`: Unidade de processamento central que controla o incremento de tempo e devolve os vetores de `hour` (5 bits), `min` (6 bits) e `sec` (6 bits).
- `bin2bcd`: Conversores que recebem sinais binários brutos do tempo e os subdividem em Unidade (`bcd0`) e Dezena (`bcd1`) no formato BCD (4 bits cada). Foram instanciados separadamente para segundos, minutos e horas (`bin2bcd0`, `bin2bcd1`, `bin2bcd2`).
- `bcd2ssd`: Diversos decodificadores idênticos que transformam o código BCD gerado no formato compreensível pelos displays de 7 segmentos físicos da placa (`HEX0` a `HEX5`).

## Comportamento Geral
O sistema funciona com um reset mapeado para o push-button `KEY(0)` utilizando lógica negada (`reset <= not KEY(0)`). O fluxo de dados segue a ordem: Placa (Clock) -> PLL -> Lógica Temporizadora -> Conversão BCD -> Decodificador de Display -> Saída Física.