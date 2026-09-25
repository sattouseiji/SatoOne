# Electrical

## Baseline atual — 2026-09-25

**[CURRENT WORKING DESIGN] [PHYSICALLY VALIDATED — relato do responsável]**

`LiPo 1S 10 Ah → UPS antigo sem suporte 18650 → switch → distribuição existente`.

Saída relatada ~4,92 V sob carga completa, sem desligamentos ou brownout observado. Preservar a PCB e seus componentes. IP5310 fora da montagem atual, apenas experimental. [Registro físico e limites](../../knowledge/hardware/2026-09-25-power-baseline.md). As seções abaixo preservam o histórico.

## V0 [PHYSICALLY VALIDATED]

```text
2×18650 → LX-2BUPS/equivalente → switch no +5 V → barramento
                                                  ├─ Radxa
                                                  ├─ Hub
                                                  └─ Display
```

- cargas principais usam ramos próprios; Radxa/hub não distribuem a potência total;
- GND é comum e não passa pelo switch;
- a fiação pós-switch está pronta e funcional;
- adaptadores USB-C macho → borne são passivos;
- aproximadamente 4,8 V foram observados com o sistema e YouTube em operação;
- em bateria baixa, células chegaram a ~2,9 V sob carga/~3,14 V em repouso e a saída colapsou para ~2,0 V após desligamento;
- com switch OFF, as cargas desligam, mas o UPS e seu LED permanecem energizados.

O registro anterior de 1h04 fica **SUPERSEDED como autonomia definitiva**. O ensaio com carga completa iniciado em 2026-09-15 às ~18:40 ainda não possui duração final validada.

## Plano V1 de 16/09 [SUPERSEDED em 25/09]

`Li-Po 1S 10 Ah → IP5310 → 5 V → switch existente → distribuição existente`.

Li-Po, IP5310 e INA219 estão [PURCHASED] [IN TRANSIT], com entrega prevista até 2026-09-19. Validar antes da integração:

- medidas, etiqueta, A58/polaridade, tensão, PCM/BMS e capacidade/corrente da bateria;
- pinout, 5 V sem carga/sob carga, corrente, temperatura, proteções e operação simultânea do IP5310;
- limite, queda, dissipação e posição do INA219 antes ou depois do boost;
- coexistência entre Power dedicado da tela e VBUS do USB Touch.

Fusível/PPTC é [OPTIONAL / FUTURE]. A arquitetura anterior com charger/boost separados, fusível 7,5 A obrigatório, XT30, AWG18, MAX17048 e INA226 fica **SUPERSEDED** para a primeira integração.

Nunca ligar Li-Po 1S diretamente a cargas de 5 V, assumir pinout ou usar a saída regulada de 5 V como porcentagem de bateria. Consultar `docs/electronics/V1_POWER_SYSTEM.md` e `skills/satoone-development/references/27_power.md`.
