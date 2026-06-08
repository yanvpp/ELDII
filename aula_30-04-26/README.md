# Aula 30/04/2026 - Decodificador BCD para Display de 7 Segmentos (bcdtossd)

## Objetivo
Implementar um decodificador que recebe um número no formato BCD (Binary-Coded Decimal) e o converte para os sinais correspondentes aos 7 segmentos de um display numérico.

## Entradas e Saídas
- **Entrada (`sw`):** Chaves de entrada, mapeadas em um vetor de 4 bits.
- **Saída (`hex0`):** Saída para o display, usando um vetor de 7 bits (representando os segmentos de 'a' a 'g').

## Funcionamento e Lógica
- O circuito utiliza um bloco sequencial `process` sensível à entrada `sw`.
- Dentro do processo, a estrutura condicional `case` mapeia os números BCD (0 a 9). Por exemplo, a entrada `"0000"` (zero) gera a saída `"0000001"`. Isso indica o acionamento em lógica negativa (o segmento 'g', último bit, está em '1' ou seja, apagado, e os demais formando um "0" estão acesos).
- As chaves de `"0000"` a `"1001"` geram os dígitos válidos.
- Há um tratamento `when others` garantindo estabilidade do circuito que exibirá o padrão `"0110000"` caso entradas superiores a 9 sejam ativadas.