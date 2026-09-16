# Montagem

## V0

Preservar a montagem funcional e não redesenhar partes validadas sem motivo. Display, teclado e eletrônica devem continuar removíveis, sem depender de cola permanente.

## Chegada do hardware V1

1. Não desmontar imediatamente a V0.
2. Fotografar e medir com paquímetro Li-Po, IP5310 e INA219.
3. Inspecionar rótulo, A58, polaridade, tensão em repouso e evidência de PCM/BMS da bateria.
4. Identificar no IP5310 `B+`, `B-`, saída 5 V, GND, USB-C e eventuais botão/enable/LEDs; não assumir pinout.
5. Ligar Li-Po ao IP5310 fora do SatoOne e medir saída sem carga.
6. Testar em sequência: Radxa; Radxa + hub; sistema completo.
7. Medir tensão e temperatura com Wi-Fi, YouTube, tela, touch e teclado.
8. Testar carga USB-C durante o uso e confirmar o comportamento anunciado de UPS/power-path.
9. Integrar o INA219 somente depois da alimentação estar estável.
10. Implementar telemetria/software somente depois da medição elétrica ser confiável.
11. Redesenhar o Back somente após medir os componentes reais.

Nunca comprimir/perfurar a pouch, inverter polaridade, alimentar 5 V diretamente pela célula ou fechar a case antes dos testes abertos.
