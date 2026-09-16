# Plano de desenvolvimento — SatoOne V1

**Direção definida:** 2026-09-15
**Publicação consolidada:** 2026-09-16
**Estado:** planejamento e seleção de componentes

## Baseline V0

A V0 executa Debian na Radxa Zero 3W com display touch de 5", teclado físico e alimentação portátil. Fotos e vídeo comprovam a integração. A autonomia física informada é de **1h04**. O health check observou SoC em **70,6 °C**, com pico de **77,5 °C**.

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
| Energia | bateria, proteção, power-path, boost e barramento 5 V | Planejada |
| Telemetria | fuel gauge e medição de corrente/potência via I²C | Planejada |
| Mecânica | nova case mais fina e componentes removíveis | Planejada |
| Térmica | caminho passivo e reserva para fan de 30 mm | Planejada |
| Software | driver/serviço de bateria e integração no dashboard | Planejada |
| Validação | autonomia, estabilidade de 5 V e ensaio térmico | Planejada |

## Sequência

1. Confirmar especificações físicas e elétricas da bateria.
2. Comprar somente componentes com corrente, tensão e documentação compatíveis.
3. Testar a cadeia de energia com carga eletrônica antes da Radxa.
4. Validar sensores I²C e drivers no kernel do dispositivo.
5. Criar CAD V1 sem sobrescrever a V0.
6. Imprimir coupons e validar folgas, fixação e térmica.
7. Montar V1 e executar o plano de aceitação.
