# Electrical

## Baseline V0

A V0 usa UPS e duas 18650 e apresentou autonomia física informada de 1h04. O UPS não oferece telemetria útil ao Debian. Esta arquitetura permanece como baseline histórica, não como direção da V1.

## V1 planejada — decisão de 2026-09-15

`Li‑Po 1S 10.000 mAh → PCM/BMS + fusível → carregador USB-C power-path → boost 5 V → EN/botão → barramento 5 V`

Requisitos normativos:

- bateria 3,6/3,7 V, protegida, descarga ≥8 A e idealmente 10 A;
- fusível 7,5 A próximo à bateria;
- carregador 1S de 2–3 A com power-path dimensionado para o sistema;
- boost com entrada 3,0–4,2 V e saída 5,0 V, ≥3 A contínuos e 5 A recomendados;
- XT30 e AWG18 no caminho principal;
- botão preferencialmente no `EN`, não conduzindo a corrente total;
- fuel gauge 1S e monitor de corrente/potência via I²C;
- nenhuma ligação direta da Li‑Po ao barramento de 5 V.

Consultar `docs/electronics/V1_POWER_SYSTEM.md` para componentes candidatos e plano de validação. Nenhuma peça planejada é considerada comprada sem confirmação física ou comprovante.
