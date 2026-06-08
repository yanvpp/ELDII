# Aula 21/05/2026 - Temporizador Digital (Timer) e Abordagens de Clock

## Objetivo
Implementar um temporizador digital capaz de contar minutos e segundos a partir de um sinal de clock de entrada de 50 MHz. O foco principal deste projeto é contrastar duas filosofias de design em VHDL: o uso de múltiplos clocks em cascata contra a técnica síncrona de clock único com sinais de habilitação (*enables*).

## Entradas e Saídas
- **Entradas:** 
  - `clk`: Sinal de clock de 50 MHz (padrão da placa).
  - `reset`: Sinal assíncrono para reiniciar a contagem.
- **Saídas:** 
  - `sec`: Vetor de 6 bits (representa os segundos de 0 a 59).
  - `min`: Vetor de 6 bits (representa os minutos de 0 a 59).

## Arquiteturas em Análise (`list_09_05_06_timer_CORRIGIDO_50mhz.vhd`)
O arquivo contém uma única entidade acoplada a duas arquiteturas distintas:

1. **A Abordagem Assíncrona (`multi_clock_arch`):**
   - **Como funciona:** Utiliza um contador (módulo 50.000.000) para criar um sinal de 1 Hz que atua diretamente como clock (`sclk`) para o processo dos segundos. O contador dos segundos, por sua vez, gera um clock de minutos (`mclk`).
   - **Nota de Projeto:** Embora seja intuitivo criar divisores de frequência dessa forma, utilizar lógica gerada internamente para alimentar os pinos de *clock* dos flip-flops é considerado uma má prática. Isso introduz problemas de sincronismo, atrasos (*clock skew*) e dificulta a análise de tempo pelas ferramentas de síntese.

2. **A Abordagem Síncrona e Recomendada (`single_clock_arch`):**
   - **Como funciona:** Todos os processos utilizam única e exclusivamente o clock principal (`clk` de 50 MHz). Em vez de derivar clocks, o circuito gera *pulsos de habilitação* de um ciclo de clock (`s_en` para os segundos e `m_en` para os minutos). 
   - **Vantagem:** Os contadores de segundos e minutos avaliam o estado destes *enables* a cada borda de subida do clock principal. Se o *enable* for `'1'`, o valor incrementa. Esta técnica garante um circuito totalmente síncrono e robusto.

## Configurações e Simulação
- **Configuração (`cfg_ifsc`):** No final do arquivo VHDL, o bloco `CONFIGURATION` permite alternar qual das duas arquiteturas será associada à entidade `timer` durante a compilação no Quartus.
- **Simulação (`/simulation/modelsim/`):** O diretório contém arquivos de macro `.do` específicos (`tb_singleClockArch.do` e `tb_multiClockArch.do`) que permitem analisar e comparar o comportamento e os eventuais atrasos das duas abordagens diretamente no ModelSim.