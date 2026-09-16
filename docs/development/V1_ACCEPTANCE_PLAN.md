# Plano de aceitação — V1

## Critérios mínimos

| Área | Critério |
| --- | --- |
| Autonomia | ≥2 horas no cenário de teste documentado |
| Energia | 5,0 V estáveis, sem reset em pico de carga |
| Bateria | proteção, fusível, polaridade e descarga validados |
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
