# Testes e validação

Validar mudanças proporcionalmente ao risco. Para software: lint/format, testes unitários de serviços e modelos, testes de integração para plugins/drivers e teste manual de UX no dispositivo. Não simular como validado o que não foi testado na Radxa.

Para hardware: testar módulos fora da carcaça, confirmar tensão/corrente/pinagem antes de energizar, testar termicamente sob carga e validar carga, autonomia, touch, teclado, Wi-Fi, Bluetooth, portas e desmontagem. Registrar limitações e resultados.

Aceitação V1: pelo menos duas horas no cenário documentado, 5 V estáveis sem reset, telemetria coerente no Debian, SoC sustentado preferencialmente até 75 °C sem throttling e inspeção da pouch sem compressão ou aquecimento anormal. Não converter meta em resultado antes do ensaio.
