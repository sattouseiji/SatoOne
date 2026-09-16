# Bateria

## Evidência V0

- UPS para 2×18650: 89,78 × 42,10 × 30,22 mm, medição física de 2026-08-15.
- Duas Samsung 18650 disponíveis no protótipo.
- Autonomia física informada em 2026-09-15: **1h04**.
- O UPS atual não expõe ao Debian telemetria confiável de carga.

## Direção V1 — decisão de 2026-09-15

Substituir UPS/18650 por Li‑Po pouch 1S de 10.000 mAh, protegida, com nova cadeia de carga e conversão. Meta: pelo menos duas horas em cenário documentado e case mais fina.

A bateria Rontek avaliada é apenas candidata: catálogo informa 3,7 V, 10.000 mAh e aproximadamente 12 × 59 × 110 mm. O anúncio também apresentou um campo de 36 V inconsistente; confirmar etiqueta física antes de comprar ou ligar.

## Regras

- Não assumir compra, capacidade, proteção ou corrente sem evidência.
- Não ligar célula 1S diretamente ao barramento de 5 V.
- Confirmar PCM/BMS, descarga ≥8 A, polaridade e terceiro fio.
- Usar fusível 7,5 A, conexão adequada e AWG18.
- Testar power-path e boost com carga eletrônica antes da Radxa.
- Registrar autonomia, tensão, corrente, potência e temperatura em cada ensaio.

Consultar `docs/electronics/V1_POWER_SYSTEM.md` e `specifications/electrical/README.md`.
