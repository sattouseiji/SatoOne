# Energia, bateria e telemetria — 2026-09-16

## Estados

- [PHYSICALLY VALIDATED]: observado/medido no conjunto real.
- [CURRENT DESIGN]: arquitetura escolhida, ainda não validada integralmente.
- [PURCHASED] [IN TRANSIT]: compra confirmada, peça ainda não recebida.
- [PENDING VALIDATION]: anúncio, hipótese ou comportamento a testar.

## V0 [PHYSICALLY VALIDATED]

`2×18650 → LX-2BUPS/equivalente → switch positivo → barramento comum → Radxa + hub + tela`.

- cargas principais possuem ramos próprios; Radxa e hub não são distribuidores principais de potência;
- adaptadores USB-C macho → borne são passivos;
- tensão observada em operação e com YouTube: aproximadamente 4,8 V;
- com switch OFF, cargas desligam, mas UPS permanece nas células e LED vermelho continua aceso;
- em bateria baixa, células chegaram a aproximadamente 2,9 V sob carga e 3,14 V após repouso; após o desligamento, a saída caiu para cerca de 2,0 V;
- a queda para 2,0 V ocorreu no UPS/bateria baixa, não no adaptador passivo;
- autonomia de 1h04 foi registrada anteriormente, mas fica **SUPERSEDED como valor definitivo**. O teste com carga completa iniciado em 2026-09-15 por volta de 18:40 ainda não possui duração final validada neste registro.

Não repetir intencionalmente o colapso por bateria baixa sem instrumentação e plano de shutdown; o objetivo futuro é desligar o Linux antes desse ponto.

## V1 [CURRENT DESIGN]

`Li-Po 10 Ah → IP5310 → 5 V → switch existente → distribuição pós-switch existente`.

Li-Po, IP5310 e INA219: [PURCHASED] [IN TRANSIT], entrega prevista até 2026-09-19.

### Li-Po [PENDING VALIDATION]

Dados do anúncio: Rontek/A58, família 1165110, pouch 1S, aproximadamente 3,7 V, 10.000 mAh/37 Wh, descarga 1C (~10 A) e 113,5 × 65 × 11,1 mm. Confirmar no pack: dimensões, tensão, capacidade, polaridade A58, proteção PCM/BMS e corrente real. Não criar encaixe final antes da medição com paquímetro.

### IP5310 [PENDING VALIDATION]

Dados esperados: módulo 1S, boost 5 V/até aproximadamente 3,1 A, USB-C, carga integrada, operação simultânea/power-path e proteções; dimensões anunciadas de aproximadamente 26 × 19 × 4,9 mm. Inspecionar pinout e medir tudo antes de conectar ao SatoOne.

### INA219 [PENDING DESIGN DECISION]

Módulo comprado com shunt R100, borne e I²C. Decidir após testes:

- antes do boost: mede melhor a tensão/corrente da bateria;
- depois do boost: mede o consumo total do sistema em 5 V.

Não calcular porcentagem apenas pela saída regulada de 5 V. Validar limite de corrente, dissipação, resolução e queda no shunt antes da instalação definitiva.

### Conexão e proteção

Preferir A58 fêmea com rabicho 22 AWG e preservar o conector original. Fusível/PPTC é [OPTIONAL / FUTURE] nesta primeira montagem; reavaliar para a versão final. A recomendação anterior de fusível 7,5 A, XT30 e AWG18 está **SUPERSEDED** para o desenho atual.

## Software e shutdown seguro

Meta: mostrar carga, tensão, corrente, potência e autonomia estimada; gerar alerta visual, registrar consumo opcional e executar shutdown limpo antes do colapso de tensão. Implementar somente após definir a posição do INA219 e validar as leituras no Debian.

## Ordem de testes

Fotografar → medir → inspecionar → testar IP5310 sem carga → Radxa → Radxa + hub → sistema completo → carga real/temperatura → carga simultânea → INA219 → software → autonomia → CAD final.
