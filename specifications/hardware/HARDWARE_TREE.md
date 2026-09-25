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

SatoOne atual — 2026-09-25 [CURRENT WORKING DESIGN]
├── Battery             LiPo Rontek 1S 10 Ah [RECEIVED] [PHYSICALLY VALIDATED]
├── Energy              UPS antigo sem suporte 18650, ~4,92 V sob carga
├── Switch              switch mecânico existente no positivo
├── Distribution        fiação pós-switch existente preservada
├── Telemetry           INA219 R100 [PURCHASED] [IN TRANSIT]
├── Connector           A58 fêmea com rabicho 22 AWG [TO BUY / VERIFY]
├── Protection          PCB de proteção da LiPo observada; limiares não ensaiados
├── Cooling             passivo primeiro; fan 30 mm condicional
└── Enclosure           LiPo e UPS no mesmo plano; medir PCB/altura do UPS
```

A arquitetura anterior de charger/boost separados, fusível 7,5 A, XT30, AWG18, MAX17048 e INA226 fica **SUPERSEDED** para a primeira montagem V1. Compra não implica validação física; consultar `skills/satoone-development/references/27_power.md`.

IP5310: [NOT USED IN CURRENT BUILD] [EXPERIMENTAL / FUTURE]. INA219: integração futura; recebimento não reconfirmado. Fonte: [baseline de 25/09](../../knowledge/hardware/2026-09-25-power-baseline.md).
