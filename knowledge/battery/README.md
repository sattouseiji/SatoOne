# Bateria e energia

## V0 [PHYSICALLY VALIDATED]

- LX-2BUPS/equivalente com duas 18650; envelope do conjunto UPS medido em 89,78 × 42,10 × 30,22 mm.
- Barramento pós-switch alimenta Radxa, hub e tela em ramos separados.
- Aproximadamente 4,8 V observados em operação normal e durante YouTube.
- Em descarga profunda: ~2,9 V por célula sob carga, ~3,14 V após repouso e saída do sistema ~2,0 V após o desligamento.
- O adaptador USB-C passivo não causou a queda; apenas repassou a tensão disponível.
- 1h04 foi registrado anteriormente, mas fica **SUPERSEDED como autonomia definitiva**. O teste com carga completa iniciado em 2026-09-15 às ~18:40 permanece sem duração final validada.

## V1 [CURRENT DESIGN]

`Li-Po 1S 10 Ah → IP5310 → switch existente → distribuição existente`.

Comprados em 2026-09-16 e [IN TRANSIT] até previsão de 2026-09-19:

- bateria Rontek/A58 família 1165110; anúncio: 3,7 V, 10.000 mAh/~37 Wh, 1C, 113,5 × 65 × 11,1 mm;
- IP5310; anúncio: 1S, 5 V/~3,1 A, USB-C, carga/power-path e ~26 × 19 × 4,9 mm;
- INA219 R100 com borne e I²C.

Todos os dados de anúncio estão [PENDING VALIDATION]. Confirmar PCM/BMS, polaridade A58, pinout, capacidade, corrente, comportamento power-path e medidas físicas. A posição do INA219 antes/depois do boost ainda não foi decidida.

## Regras

- Nunca ligar a Li-Po diretamente a cargas de 5 V.
- Não cortar o A58 original se um rabicho compatível puder ser usado.
- Fusível/PPTC é opcional na primeira montagem e deve ser reavaliado para a versão final.
- Não estimar porcentagem apenas pelos 5 V regulados.
- Implementar low-battery warning e shutdown limpo após validar a telemetria.
