# Aula 16/04/2026 - Multiplexador 4x1 (mux4x1)

## Objetivo
Demonstrar a implementação de um circuito combinacional Multiplexador (Mux) de 4 entradas e 1 saída através de três diferentes estilos de modelagem (arquiteturas) na linguagem VHDL.

## Entradas e Saídas
- **Entrada (X):** Vetor de 4 bits (`3 downto 0`) representando os canais de dados.
- **Seletor (Sel):** Vetor de 2 bits (`1 downto 0`) para escolher qual canal passar.
- **Saída (Y):** Bit único que recebe o sinal do canal selecionado.

## Arquiteturas Implementadas
Este arquivo explora três sintaxes diferentes para resolver o mesmo problema:
1. **Lógica Pura (`v_logica_pura`):** Resolve o multiplexador escrevendo diretamente a equação booleana, utilizando operadores `and`, `or` e `not`.
2. **Atribuição Condicional (`v_when_else`):** Utiliza a cláusula concorrente `when ... else` para direcionar a saída conforme as combinações de `"00"` a `"10"` do seletor.
3. **Seleção de Sinal (`v_with_select`):** Utiliza a cláusula `with Sel select`, tornando a leitura da tabela verdade direta e lidando com as alternativas via `when` e `when others`.

## Configurations
O arquivo finaliza definindo blocos `configuration` (`logica_pura`, `when_else`, `with_select`) que instruem o compilador/simulador sobre qual arquitetura específica associar à entidade `mux4x1` na hora da síntese ou simulação.