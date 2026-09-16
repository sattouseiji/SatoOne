# Conexões V0 — baseline histórica

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

## Cadeia planejada para V1

`USB-C externo → carregador 1S com power-path → Li-Po protegida → fusível 7,5 A → monitor de corrente/shunt → boost 5 V → chave/EN → barramento SatoOne`.

O fuel gauge lê a célula 1S via I²C; o monitor de corrente precisa suportar o caminho de corrente completo. Não ligar 3,6/3,7 V diretamente à Radxa: a entrada do sistema requer 5 V regulados. Validar polaridade, bitola, queda de tensão e dissipação antes de energizar.
