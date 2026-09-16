# Sistema de energia e telemetria — V1

**Decisão técnica:** 2026-09-15
**Estado:** arquitetura planejada; nenhum componente novo deve ser tratado como comprado

## Arquitetura

```text
Li-Po 1S 10.000 mAh
  → PCM/BMS e fusível 7,5 A
  → carregador USB-C 1S com power-path
  → boost síncrono 5,0 V
  → botão pelo pino EN
  → barramento 5 V: Radxa, display e periféricos
```

A bateria varia aproximadamente entre 3,0 e 4,2 V e nunca pode alimentar diretamente o barramento de 5 V.

## Requisitos dos componentes

- Li‑Po protegida, 3,6/3,7 V nominal, 10.000 mAh, descarga contínua mínima de 8 A e ideal de 10 A.
- Carregador USB-C para 1S, corrente de carga entre 2 e 3 A, power-path verdadeiro e caminho do sistema dimensionado para a carga real.
- Boost com entrada 3,0–4,2 V, saída regulada em 5,0 V, pelo menos 3 A contínuos e 5 A recomendados, com `EN`.
- Fusível 7,5 A próximo da bateria, XT30 e fio silicone AWG18 no caminho principal.
- Fuel gauge 1S via I²C, com MAX17048 ou equivalente como candidato.
- INA226 com shunt externo dimensionado para pelo menos 8 A, ou solução equivalente. INA219 comum somente após comprovar trilha, shunt e dissipação.

## Bateria candidata

A Rontek de 10.000 mAh avaliada em 2026-09-15 tem envelope de catálogo aproximado de 12 × 59 × 110 mm e conector A58. Antes da compra, confirmar na peça/etiqueta:

1. 3,6 ou 3,7 V nominal — nunca 36 V;
2. PCM/BMS integrado;
3. corrente de descarga contínua;
4. corte do PCM;
5. polaridade e função de eventual terceiro fio;
6. capacidade garantida e ficha técnica.

## Telemetria Debian

O software deverá ler via I²C e expor ao dashboard:

- tensão e estado de carga;
- corrente e potência instantâneas;
- carregando/descarregando;
- autonomia estimada;
- alerta de bateria baixa;
- logs de consumo e temperatura para engenharia.

Confirmar suporte no kernel real da Radxa e no device tree antes de fechar a escolha do sensor.

## Referências técnicas

- [MAX17048/MAX17049 — Analog Devices](https://www.analog.com/en/products/max17048.html)
- [Driver INA2xx no kernel Linux](https://www.kernel.org/doc/html/latest/hwmon/ina2xx.html)

Links são referências para avaliação; não comprovam integração, compra ou compatibilidade elétrica do conjunto final.
