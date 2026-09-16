# Hardware — Prototype V1

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

Display atual: Waveshare 5", 1024×600, HDMI, touch capacitivo USB HID, 60 Hz; modelo a confirmar. Display futuro: IPS HDMI 4", 720×720, capacitivo e compatível com Linux.

Teclado BlackBerry Q10: QWERTY físico, centralizado, removível, por controlador USB. Duas Samsung 18650 protegidas em paralelo (3,7 V nominal e 4,2 V máxima por célula), carregadas por UPS USB-C com boost para 5 V; modelo do UPS pendente. Há hub USB interno, dois alto-falantes de 3 W, dissipador de cobre e ventoinha opcional de 30 mm.

Manter USB-C, micro-HDMI, microSD, áudio, UART, USB OTG, GPIO, I2C, SPI e PWM disponíveis conforme a integração. Sensores: bateria, corrente, temperatura e touch; IMU, GPS e NFC futuros. Confirmar sempre Linux, pinagem, nível lógico, tensão e corrente antes da integração; preferir HDMI e USB HID e evitar drivers proprietários.
