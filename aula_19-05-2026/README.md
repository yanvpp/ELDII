# Aula 19/05/2026 - Exercícios: Registradores de Deslocamento e Contadores

## Objetivo
Este diretório contém a resolução de três questões práticas abordando diferentes tipos de circuitos sequenciais. O foco principal é a separação entre a lógica de estado (flip-flops/registradores) e a lógica combinacional de próximo estado (next-state logic).

---

## Questão 1: Registrador de Deslocamento Universal (Shift Register)
**Arquivo:** `questao1/questao1.vhd`

- **Objetivo:** Implementar um registrador de deslocamento de 4 bits que pode manter o valor, deslocar para a esquerda, deslocar para a direita ou carregar uma nova palavra (carga paralela).
- **Sinais de Controle (`control`):** A estrutura `case` define a operação com base nos 2 bits do controle:
  - `"00"`: Mantém o estado atual (Pausa).
  - `"01"`: Desloca à direita. Utiliza o operador de concatenação `&` para juntar o bit de entrada `d_to_right` com os 3 bits mais significativos do registrador atual (`r_reg(3 downto 1)`).
  - `"10"`: Desloca à esquerda. Concatena os 3 bits menos significativos (`r_reg(2 downto 0)`) com o bit de entrada `d_to_left`.
  - `"11"`: Carga paralela, atualizando o registrador com o valor da entrada `palavra`.

---

## Questão 2: Contador Sequencial de Estados Específicos
**Arquivo:** `questao2/questao2.vhd`

- **Objetivo:** Projetar um contador de 3 bits que não conta de forma linear, mas sim através de uma sequência de estados predefinida.
- **Lógica de Transição:** O bloco `case` dita a seguinte sequência de estados binários (e os seus respectivos valores decimais):
  - `000` (0) -> `011` (3) -> `100` (4) -> `101` (5) -> `111` (7) -> Volta para `000` (0).
- **Tratamento de Falhas:** A cláusula `when others => d_contador <= "000";` é fundamental. Garante que, se o circuito for inicializado em um estado inválido ou sofrer alguma interferência (estados 1, 2 ou 6), ele se recupere automaticamente para o estado inicial `000` no ciclo de clock seguinte.

---

## Questão 3: Contador Binário Crescente/Decrescente (Up/Down)
**Arquivo:** `questao3/questao3.vhd`

- **Objetivo:** Criar um contador de 8 bits capaz de incrementar ou decrementar o valor atual com base em uma entrada de comando.
- **Tipos de Dados:** Utiliza o tipo `unsigned` da biblioteca `numeric_std` para permitir a soma e subtração aritmética direta.
- **Lógica de Direção (`up`):**
  - Quando a entrada `up = '1'`, a equação `r_next <= r_reg + 1` é executada (conta para cima).
  - Caso contrário (`up = '0'`), a equação `r_next <= r_reg - 1` é executada (conta para baixo).