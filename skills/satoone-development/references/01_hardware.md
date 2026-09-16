# Hardware — estado em 2026-09-16

## V0 funcional [PHYSICALLY VALIDATED]

| Item | Estado atual |
| --- | --- |
| Radxa | Zero 3W, 4 GB RAM, 32 GB eMMC, GPIO instalado, Debian, Wi-Fi e YouTube funcionais |
| Display | Waveshare 5DP-CAPLCD/5DP-CAPLCD-H, 5", 1024×600, 122,76 × 77,28 mm, espessura máxima aproximada 17,38 mm |
| Teclado | BlackBerry Q10/BBQ20KBD; PCB 77,89 × 53,39 mm; área visível 68,32 × 42,43 mm; espessura aproximada 7,11 mm |
| Hub | USB 2.0 1→4; PCB aproximada 57 × 30 × 13,90 mm; mounting pitch atual 52,00 × 15,25 mm |
| Energia | LX-2BUPS/equivalente, 2×18650, barramento pós-switch com ramos separados para Radxa, hub e display |

O mounting pitch anterior do hub, 43,35 × 10,61 mm, fica **SUPERSEDED** pelo padrão atual fisicamente validado de 52,00 × 15,25 mm. Os quatro postes devem formar retângulo simétrico; standoff OD 5,0 mm, altura 4,0 mm e piloto aproximado 2,20 mm.

## Vídeo e USB [PHYSICALLY VALIDATED]

Vídeo: `Radxa micro-HDMI → adaptador HDMI/flat → cabo flat HDMI → entrada HDMI flat Waveshare`. O FPC da Radxa não é HDMI/display e não integra a tela atual. Meta de vídeo: 1024×600 a 60 Hz; áudio pode trafegar por HDMI.

USB: `Radxa USB → hub → touch Waveshare + teclado`. Touch e teclado funcionam. O USB-C Touch da tela também transportou 5 V/VBUS e conseguiu alimentá-la. A coexistência do Power dedicado com o VBUS do Touch ainda exige validação contra backfeed; não cortar VBUS nem assumir isolamento antes dessa verificação.

## V1 [CURRENT DESIGN]

Li-Po 1S 10.000 mAh → IP5310 → switch geral → distribuição 5 V já existente. Li-Po, IP5310 e INA219 estão [PURCHASED] [IN TRANSIT], com entrega prevista até 2026-09-19. Não desenhar fixação final nem assumir pinout, medidas, PCM/BMS ou desempenho antes do recebimento e inspeção.

Manter USB-C, micro-HDMI, microSD, áudio, UART, USB OTG, GPIO, I²C, SPI e PWM acessíveis conforme a integração. Consultar `27_power.md` antes de qualquer alteração elétrica.
