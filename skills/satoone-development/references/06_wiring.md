# Conexões e distribuição

## V0 [PHYSICALLY VALIDATED]

```text
2×18650 → LX-2BUPS/equivalente → switch no positivo → barramento 5 V
                                                     ├─ Radxa
                                                     ├─ Hub
                                                     └─ Display (Power dedicado)
```

GND vai diretamente ao barramento negativo comum. Não alimentar todo o sistema por `UPS → Radxa → hub → demais cargas`; cada carga principal possui ramo próprio. Com o switch OFF, Radxa/tela/hub desligam, mas o UPS continua ligado às células e seu LED vermelho permanece aceso.

Os adaptadores USB-C macho → borne são passivos: recebem e repassam aproximadamente 5 V, sem regulação. A fiação pós-switch está funcional e não deve ser refeita sem necessidade.

## Vídeo, touch e teclado [PHYSICALLY VALIDATED]

- Vídeo: `Radxa micro-HDMI → adaptador HDMI/flat → cabo flat → HDMI flat Waveshare`.
- Touch: `hub → USB-C Touch Waveshare`; dados USB separados do vídeo.
- Teclado: `hub → BBQ20KBD`.
- O VBUS do USB Touch conseguiu alimentar a tela; coexistência com o Power dedicado está [PENDING VALIDATION].

Chicote Power observado da tela: dois fios vermelhos e um preto. A atribuição planejada é ambos vermelhos em +5 V e preto em GND, mas validar documentação/pinout antes da ligação final.

## V1 [CURRENT DESIGN]

```text
Li-Po 1S 10 Ah → IP5310 → 5 V → switch existente → distribuição existente
```

Alterar apenas o bloco anterior ao switch. Fusível/PPTC é [OPTIONAL / FUTURE]. A58 com rabicho 22 AWG é a conexão preferida da bateria. A posição do INA219 — antes ou depois do boost — permanece [PENDING DESIGN DECISION]. Nunca ligar a Li-Po diretamente a componentes de 5 V.
