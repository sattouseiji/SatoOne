# Conexões

| Origem | Destino | Interface |
| --- | --- | --- |
| USB-C externo | UPS | Entrada de carga |
| 2× 18650 paralelas | UPS | Conector de bateria |
| UPS 5 V | Radxa | USB-C de alimentação |
| Radxa | Waveshare | HDMI para vídeo |
| Touch Waveshare | Radxa ou hub | USB HID |
| Radxa USB OTG | Hub USB interno | USB |
| Hub | Controlador Q10 | USB |
| UART Radxa | Porta externa | Debug |

Confirmar orçamento de corrente, modelo, pinagem e níveis lógicos antes de energizar. Usar cabos curtos, identificados e com alívio de tensão; separar energia de dados/áudio quando possível. Não conectar periféricos de 5 V diretamente a GPIO sem adaptação adequada.
