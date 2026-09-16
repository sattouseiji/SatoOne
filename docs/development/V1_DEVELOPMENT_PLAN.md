# Plano de desenvolvimento — SatoOne V1

**Direção definida:** 2026-09-15
**Publicação consolidada:** 2026-09-16
**Estado:** hardware de energia comprado/em trânsito; integração pendente

## Baseline V0

A V0 executa Debian na Radxa Zero 3W com display touch de 5", teclado físico e alimentação portátil. Fotos e vídeo comprovam a integração. O registro anterior de 1h04 foi marcado como não definitivo; o ensaio iniciado com carga completa em 2026-09-15 ainda está [PENDING VALIDATION]. O health check observou SoC em **70,6 °C**, com pico de **77,5 °C**.

## Objetivos da V1

1. Atingir no mínimo duas horas de autonomia em cenário de teste definido.
2. Substituir o UPS e as duas 18650 por uma Li‑Po pouch 1S de 10.000 mAh e eletrônica dedicada.
3. Expor percentual, tensão, corrente, potência e autonomia estimada ao Debian.
4. Reduzir volume e espessura, posicionando a bateria atrás do teclado.
5. Melhorar a dissipação passiva e usar ventoinha somente se medições justificarem.
6. Preparar montagem repetível, manutenção e uma futura pequena série piloto.

## Frentes de trabalho

| Frente | Entrega | Estado |
| --- | --- | --- |
| Energia | Li-Po 10 Ah + IP5310 antes do switch existente | Comprada/em trânsito; validar |
| Telemetria | INA219 antes/depois do boost via I²C | Comprada/em trânsito; decisão pendente |
| Mecânica | nova case mais fina e componentes removíveis | Planejada |
| Térmica | caminho passivo e reserva para fan de 30 mm | Planejada |
| Software | driver/serviço de bateria e integração no dashboard | Planejada |
| Validação | autonomia, estabilidade de 5 V e ensaio térmico | Planejada |

## Sequência

1. Receber, fotografar e medir Li-Po, IP5310 e INA219 até 2026-09-19.
2. Confirmar PCM/BMS, A58/polaridade e pinout do IP5310.
3. Testar 5 V sem carga, depois Radxa, Radxa + hub e sistema completo.
4. Validar carga/uso simultâneos e temperatura sob YouTube.
5. Decidir posição e limite do INA219; integrar leitura Linux.
6. Implementar indicador, low-battery warning e shutdown automático.
7. Medir autonomia com a Li-Po 10 Ah.
8. Criar CAD V1 após medições reais, sem sobrescrever a V0.
