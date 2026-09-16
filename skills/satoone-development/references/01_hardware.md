# Hardware — V0 validada e direção V1

## Atualização 2026-08-15

Display confirmado: Waveshare 5DP-CAPLCD-H; envelope físico medido 122.76 × 77.28 × 17.38 mm. GPIO da Radxa permanece instalado. Consultar o BOM para evidências e pendências.

| Item | Especificação |
| --- | --- |
| Placa | Radxa Zero 3W |
| SoC | Rockchip RK3566, quad-core Cortex-A55 |
| GPU | Mali-G52 |
| RAM | 4 GB LPDDR4 |
| Armazenamento | 32 GB eMMC |
| Wireless | Wi-Fi 5 e Bluetooth 5.x |
| Sistema | Debian Bullseye XFCE |
| Alimentação | 5 V USB-C |

Display atual: Waveshare 5DP-CAPLCD-H, 1024×600, HDMI, touch capacitivo USB HID. Display futuro candidato: IPS HDMI 4", 720×720, capacitivo e compatível com Linux.

Na V0, o teclado BlackBerry Q10/BBQ20KBD é QWERTY físico por USB. A alimentação usa UPS e duas 18650, apresenta autonomia observada de 1h04 e não fornece telemetria útil ao Debian.

Direção definida em 2026-09-15 para a V1: Li-Po pouch protegida 1S de 10.000 mAh, carregador USB-C 1S com power-path, boost de 3,0–4,2 V para 5,0 V/5 A recomendado, fusível 7,5 A, XT30, AWG18, fuel gauge e monitor INA226/equivalente dimensionado para a corrente real. A Rontek A58 é apenas candidata; conferir rótulo, dimensões, polaridade e corrente antes da compra. Ventoinha de 30 mm somente se ensaio sustentado exigir.

Manter USB-C, micro-HDMI, microSD, áudio, UART, USB OTG, GPIO, I2C, SPI e PWM disponíveis conforme a integração. Sensores: bateria, corrente, temperatura e touch; IMU, GPS e NFC futuros. Confirmar sempre Linux, pinagem, nível lógico, tensão e corrente antes da integração; preferir HDMI e USB HID e evitar drivers proprietários.
