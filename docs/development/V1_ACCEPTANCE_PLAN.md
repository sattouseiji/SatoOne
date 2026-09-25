# Plano de aceitação — V1

## Critérios mínimos

| Área | Critério |
| --- | --- |
| Autonomia | ≥2 horas no cenário de teste documentado |
| Energia | 5,0 V estáveis, sem reset em pico de carga |
| Bateria | proteção do pack, polaridade, conector e descarga validados; proteção adicional decidida |
| Telemetria | carga, tensão, corrente e potência visíveis no Debian |
| Térmica | meta ≤75 °C sustentados e ausência de throttling |
| Mecânica | sem compressão da Li‑Po; montagem removível e sem interferências |
| UX | alertas de carga e bateria baixa funcionais |

## Ensaio de autonomia

Registrar versão do hardware/software, brilho, Wi‑Fi, carga de CPU, periféricos, horário inicial/final, tensão, corrente, potência e temperaturas. Não comparar resultados de cenários diferentes sem identificá-los.

## Gates

1. **Bancada:** validar módulos sem Radxa.
2. **Integração aberta:** alimentar Radxa e periféricos fora da case.
3. **Integração fechada:** repetir com a case montada.
4. **Sustentado:** executar por pelo menos duas horas.
5. **Decisão térmica:** adicionar fan somente se os dados exigirem.

## Gate de chegada — 2026-09-19 [histórico; IP5310 SUPERSEDED]

Antes dos gates acima: fotografar/medir Li-Po, IP5310 e INA219; confirmar A58/PCM/polaridade; identificar pinout; testar ~5 V sem carga. Preservar a V0 até a nova cadeia passar pelos testes abertos.

## Situação em 2026-09-25

- **Concluído conforme relato físico:** LiPo recebida/medida, proteção integrada observada, banco 1S confirmado, holder removido, LiPo + UPS antigo e conjunto completo funcionando a ~4,92 V.
- **Pendente:** ensaio de autonomia, limites das proteções, carga durante uso, telemetria, novo Back e térmica sustentada. A meta de energia acima não significa que tenham sido medidos exatamente 5,0 V.
- **Aplicativo:** corrigir falha de inicialização antes da aceitação funcional.
- IP5310 não é requisito da montagem atual. Ver [baseline](../../knowledge/hardware/2026-09-25-power-baseline.md).
