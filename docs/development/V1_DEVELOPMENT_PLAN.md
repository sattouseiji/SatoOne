# Plano de desenvolvimento — SatoOne V1

**Direção definida:** 2026-09-15
**Publicação consolidada:** 2026-09-16
**Atualização:** 2026-09-25
**Estado:** LiPo 10 Ah + UPS antigo sem holder validados conforme relato físico; software, autonomia, telemetria e novo Back pendentes

## Baseline V0

A V0 executa Debian na Radxa Zero 3W com display touch de 5", teclado físico e alimentação portátil. Fotos e vídeo comprovam a integração. O registro anterior de 1h04 foi marcado como não definitivo; o ensaio iniciado com carga completa em 2026-09-15 ainda está [PENDING VALIDATION]. O health check observou SoC em **70,6 °C**, com pico de **77,5 °C**.

## Objetivos da V1

1. Atingir no mínimo duas horas de autonomia em cenário de teste definido.
2. Manter a LiPo 1S 10 Ah integrada ao UPS antigo sem suporte 18650; IP5310 experimental.
3. Expor percentual, tensão, corrente, potência e autonomia estimada ao Debian.
4. Reduzir o Back com LiPo e UPS preferencialmente no mesmo plano.
5. Melhorar a dissipação passiva e usar ventoinha somente se medições justificarem.
6. Preparar montagem repetível, manutenção e uma futura pequena série piloto.

## Frentes de trabalho

| Frente | Entrega | Estado |
| --- | --- | --- |
| Energia | LiPo 10 Ah + UPS antigo sem holder | ~4,92 V estáveis sob carga completa, relato físico |
| Telemetria | INA219 antes/depois do boost via I²C | Integração futura; recebimento não reconfirmado |
| Mecânica | nova case mais fina e componentes removíveis | Planejada |
| Térmica | caminho passivo e reserva para fan de 30 mm | Planejada |
| Software | corrigir inicialização; depois integrar serviço de bateria | Falha identificada no health check de 25/09 |
| Validação | autonomia, estabilidade de 5 V e ensaio térmico | Planejada |

## Sequência atual

1. Corrigir a inicialização do aplicativo e repetir a validação funcional.
2. Medir dimensões finais e altura máxima da PCB do UPS sem holder.
3. Definir LiPo + UPS no mesmo plano, fixação removível, USB-C de carga acessível e organização dos cabos.
4. Redesenhar o Back sem sobrescrever a V0; a LiPo mede 111,2 × 65,0 × 11,0 mm para CAD.
5. Integrar INA219 e implementar monitoramento, alerta de bateria baixa e shutdown seguro.
6. Medir autonomia e térmica em cenário documentado; duas horas continuam como meta.

A sequência anterior com IP5310 foi substituída pela [decisão de 25/09](../../knowledge/hardware/2026-09-25-power-baseline.md).
