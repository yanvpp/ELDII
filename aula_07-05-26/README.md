# Aula 07/05/2026 - Flip-Flop D com Habilitação (flipFlopEnable)

## Objetivo
Construir um Flip-Flop tipo D equipado com um controle de Enable (Habilitação) síncrono e um Reset assíncrono.

## Sinais da Entidade
- **Entradas:**
  - `clk` (Clock), `rst` (Reset), `enable` (Habilitação), `d` (Dado).
- **Saídas:**
  - `q` (Saída do registrador).

## Funcionamento
O Flip-Flop processa os sinais `clk` e `rst` em sua lista de sensibilidade:
1. **Prioridade do Reset:** Se `rst = '1'`, a saída `q` vai imediatamente para `'0'`, ignorando o relógio (comportamento assíncrono).
2. **Atualização Síncrona:** Apenas na borda de subida do relógio (`elsif rising_edge(clk)`), o circuito verifica a condição de habilitação.
3. **Enable:** O dado `d` só é transferido para a saída `q` se o pino `enable` estiver em nível lógico alto (`'1'`).