# Aula 05/05/2026 - Verificador de Paridade com For Loop (seqAForLoop)

## Objetivo
Demonstrar a implementação de um circuito Verificador de Paridade utilizando estruturas de repetição (`for loop`) dentro de um bloco sequencial (`process`) na linguagem VHDL.

## Entradas e Saídas
- **Entrada:** Um vetor de dados (normalmente um `std_logic_vector` de tamanho parametrizável ou fixo, como 8 bits) que será analisado.
- **Saídas:** Um sinal de bit (ou dois, para indicar explicitamente paridade par ou ímpar) que reflete o cálculo da paridade dos bits de entrada.

## Arquitetura e Modelagem (`seqAForLoop.vhd`)
A modelagem comportamental presente neste arquivo utiliza a repetição para criar um circuito que, na prática, é combinacional:
- **Laço de Repetição (`for ... loop`):** Em vez de escrever a operação manual para cada bit (ex: `a(0) xor a(1) xor a(2)...`), o código itera sobre todos os índices do vetor de entrada.
- **Acumulação com XOR:** Dentro do laço, uma variável ou sinal acumulador recebe a operação lógica `xor` entre o seu valor atual e o próximo bit do vetor. Se a quantidade de bits `'1'` no vetor de entrada for ímpar, o resultado final do XOR será `'1'`.
- **Síntese de Laços:** É fundamental compreender que, como não há sinal de clock (relógio) controlando este `process`, o sintetizador "desenrola" (unroll) esse laço `for` durante a compilação, gerando uma grande porta lógica combinacional em cascata (ou árvore de XORs).

## Simulação e Estrutura do Projeto
- **`tb_paridade.do`:** Arquivo de macro para o ModelSim. Ele contém os comandos de estímulo (forces) aplicados à entrada do circuito para varrer diferentes combinações de bits e verificar se a saída de paridade se comporta conforme o esperado na forma de onda.
- **`verificadorParidade.qar`:** Arquivo de projeto arquivado (Quartus Archive). Contém toda a base do projeto já configurada, bastando restaurá-lo no Quartus para ter o ambiente pronto.