# Hardware Tree

```text
SatoOne V0 [PHYSICALLY VALIDATED]
├── Compute             Radxa Zero 3W, 4 GB, 32 GB eMMC
├── Display             Waveshare 5DP-CAPLCD-H, HDMI + touch USB
├── Keyboard            BlackBerry Q10 / BBQ20KBD via hub
├── Video               micro-HDMI → adaptador/flat → HDMI flat Waveshare
├── Energy              2×18650 → LX-2BUPS/equiv. → switch positivo
├── Distribution        barramento 5 V/GND → ramos Radxa, hub e display
├── USB                 Radxa → hub → touch + teclado
└── Enclosure           case V0 impressa e funcional

SatoOne V1 [CURRENT DESIGN]
├── Battery             Li-Po Rontek/A58 1S 10 Ah [PURCHASED] [IN TRANSIT]
├── Energy              IP5310 1S/5 V [PURCHASED] [IN TRANSIT]
├── Switch              switch mecânico existente no positivo
├── Distribution        fiação pós-switch existente preservada
├── Telemetry           INA219 R100 [PURCHASED] [IN TRANSIT]
├── Connector           A58 fêmea com rabicho 22 AWG [TO BUY / VERIFY]
├── Protection          PCM/BMS a confirmar; fusível/PPTC [OPTIONAL / FUTURE]
├── Cooling             passivo primeiro; fan 30 mm condicional
└── Enclosure           redesenhar somente após medir hardware recebido
```

A arquitetura anterior de charger/boost separados, fusível 7,5 A, XT30, AWG18, MAX17048 e INA226 fica **SUPERSEDED** para a primeira montagem V1. Compra não implica validação física; consultar `skills/satoone-development/references/27_power.md`.
