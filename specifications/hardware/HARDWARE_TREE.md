# Hardware Tree

```text
SatoOne V1 (planejada em 2026-09-15)
├── Compute             Radxa Zero 3W, 4 GB RAM, eMMC
├── Display             Waveshare HDMI touch 5" (baseline)
├── Keyboard            BlackBerry Q10 + controlador USB
├── Energy
│   ├── Li-Po 1S        10.000 mAh protegida (candidata)
│   ├── Protection      PCM/BMS + fusível 7,5 A
│   ├── Charging        USB-C 1S com power-path
│   ├── Conversion      Boost regulado 5,0 V
│   └── Wiring          XT30 + AWG18
├── Telemetry
│   ├── State of charge Fuel gauge 1S I²C
│   └── Power           INA226 + shunt ≥8 A ou equivalente
├── USB                 Hub interno atual
├── Cooling             Passivo primeiro; fan 30 mm condicional
├── Enclosure           Nova case mais fina; bateria atrás do teclado
└── Expansion           GPIO, I2C, SPI, UART e PWM conforme integração
```

A V0 usa UPS + 2×18650 e permanece como baseline histórica. Componentes V1 são planejados/candidatos até compra e validação.
