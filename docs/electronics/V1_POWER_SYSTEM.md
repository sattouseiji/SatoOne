# Sistema de energia e telemetria — V1

**Direção técnica:** 2026-09-15
**Compra registrada:** 2026-09-16
**Estado:** componentes principais [PURCHASED] [IN TRANSIT], entrega prevista até 2026-09-19

## Arquitetura atual [CURRENT DESIGN]

```text
Li-Po Rontek/A58 1S 10 Ah
  → módulo IP5310
  → saída 5 V
  → switch mecânico existente no positivo
  → distribuição pós-switch existente
      ├─ Radxa
      ├─ Hub
      └─ Display
```

A fiação após o switch está pronta e fisicamente validada. A próxima alteração deve ocorrer somente antes do switch. GND permanece comum. Radxa e hub não devem ser usados como distribuidores principais de potência.

## Hardware comprado [PENDING VALIDATION]

| Item | Dados de anúncio/compra | Verificar no recebimento |
| --- | --- | --- |
| Li-Po | Rontek/A58, família 1165110, 1S, ~3,7 V, 10.000 mAh/~37 Wh, 1C, 113,5 × 65 × 11,1 mm | medidas, rótulo, tensão, A58/polaridade, PCM/BMS, capacidade/corrente |
| IP5310 | 1S, boost 5 V/~3,1 A, USB-C, carga integrada/power-path, ~26 × 19 × 4,9 mm | pinout, saída sem/sob carga, temperatura, proteções e uso durante carga |
| INA219 | shunt R100, borne, VCC/GND/SDA/SCL | limite de corrente, dissipação, queda, resolução e posição elétrica |

Compra não comprova especificação, compatibilidade ou segurança. Não criar encaixes finais antes de medir as peças reais.

## Telemetria

A posição do INA219 permanece [PENDING DESIGN DECISION]:

- antes do boost: melhor visibilidade da bateria;
- depois do boost: consumo agregado do sistema em 5 V.

A saída regulada de 5 V não serve sozinha como porcentagem da bateria. O software deverá mostrar carga estimada, tensão, corrente, potência e runtime; emitir low-battery warning e executar shutdown limpo antes do colapso.

## Proteção e conexão

- PCM/BMS do pack: [VERIFY EXACT PACK PROTECTION].
- Conector: A58 fêmea com rabicho, preferencialmente 22 AWG, [TO BUY / VERIFY].
- Fusível/PPTC: [OPTIONAL / FUTURE] para a primeira montagem; reavaliar na versão final.
- Não cortar o A58 original se houver conector compatível.
- Nunca ligar a Li-Po diretamente a componentes de 5 V.

## Arquitetura superseded

A recomendação anterior de charger e boost separados, boost 5 A, fusível obrigatório de 7,5 A, XT30, AWG18, MAX17048 e INA226 está **SUPERSEDED para a primeira integração V1**. Esses itens podem voltar como alternativas se os testes do IP5310/INA219 falharem.

## Teste ordenado

1. Fotografar e medir os três módulos.
2. Inspecionar bateria e identificar pinout do IP5310.
3. Testar Li-Po → IP5310 sem carga e confirmar aproximadamente 5 V.
4. Testar Radxa; Radxa + hub; sistema completo.
5. Medir tensão/temperatura com Wi-Fi, YouTube, tela, touch e teclado.
6. Testar carga USB-C durante o uso.
7. Decidir e integrar INA219.
8. Implementar leitura Debian, alertas e shutdown.
9. Medir autonomia.
10. Somente então redesenhar o Back.
