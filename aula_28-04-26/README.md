# Aula 28/04/2026 - Comparador de Magnitude (Problemas de Latch) (seqDec)

## Objetivo
Implementar um comparador de magnitude de 8 bits (Maior que, Igual, Menor que) utilizando processos sequenciais (`process`). O foco principal desta aula é demonstrar como declarações condicionais incompletas geram *latches* indesejados e como corrigir esse problema.

## Entradas e Saídas
- **Entradas:** - `a`, `b`: Vetores de 8 bits (`std_logic_vector`).
- **Saídas:** - `gt` (Greater Than - Maior que).
  - `eq` (Equal - Igual).
  - `lt` (Less Than - Menor que).

## Arquiteturas e o Problema do Latch Involuntário
O arquivo `seqDec.vhd` apresenta três abordagens, mostrando a evolução e correção do código:

1. **A Problemática (`exemplo`):** - Utiliza as entradas cruas (`a`, `b`) na comparação ao invés dos sinais convertidos para `signed`. 
   - **Erro Crítico:** No bloco `if`, a saída `gt` recebe `'1'`, mas as saídas `eq` e `lt` não recebem nada. Como o VHDL precisa manter o valor anterior das saídas não atribuídas, o sintetizador infere um *Latch* (memória), o que é péssimo para circuitos combinacionais e gera *warnings* na compilação.

2. **A Correção Extensa (`correcao1`):**
   - Compara corretamente os sinais convertidos (`a_signed`, `b_signed`).
   - **Solução:** Em cada ramificação do `if`, `elsif` e `else`, **todas** as três saídas (`gt`, `eq`, `lt`) recebem explicitamente `'0'` ou `'1'`. Isso garante que o circuito seja 100% combinacional, sem memorização de estado.

3. **A Correção Elegante (`correcao2`):**
   - Utiliza a técnica de **Atribuição Padrão (Default Assignment)**.
   - **Solução:** Logo no início do `process`, antes do `if`, atribui-se `'0'` a todas as saídas (`gt <= '0'; eq <= '0'; lt <= '0';`). Dentro do `if`, você só precisa se preocupar em mudar para `'1'` a saída que for verdadeira. O código fica muito mais limpo e imune à criação de latches.

## Configurations
Atualmente, a configuração `seqDec_v1` está descomentada, instanciando a arquitetura `exemplo` (com erro) para fins de demonstração. Para testar as soluções na simulação, basta comentar a primeira e descomentar `seqDec_v2` ou `seqDec_v3` no final do arquivo.