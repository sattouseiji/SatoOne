# Baseline elétrico — registro de 2026-09-25

**[CURRENT WORKING DESIGN] [PHYSICALLY VALIDATED — relato do responsável]**
Fonte: decisão e medições físicas fornecidas pelo responsável nesta data; não são medições feitas pelo health check SSH. Protótipo, sem qualificação de produção.

## Montagem adotada

`LiPo Rontek 1S 10 Ah → UPS antigo sem suporte 18650 → switch → distribuição existente`.

O banco do UPS foi confirmado como 1S/paralelo, com ~3,6 V na bateria original. Foram removidos apenas suporte e contatos das células cilíndricas; PCB principal, boost, carga, capacitores, indutor, USB-C e saídas foram preservados. Não cortar a PCB nem remover componentes para reduzir tamanho.

## Validação relatada

- **MEDIÇÃO FÍSICA:** saída UPS+/UPS− em aproximadamente **4,92 V** com Radxa, display, touch, hub e teclado funcionando simultaneamente.
- Funcionamento estável, sem desligamentos, queda significativa ou brownout observado.
- Bateria permaneceu fria e UPS em temperatura normal, conforme observação qualitativa; não foram fornecidas temperaturas numéricas.
- LiPo Rontek / 1165110: 1S, 3,7 V e 10.000 mAh nominais; PCB de proteção integrada observada.
- **MEDIÇÃO FÍSICA da LiPo:** **111,2 × 64,99 × 10,99 mm**. Referência arredondada para CAD: **111,2 × 65,0 × 11,0 mm**.

A duração do teste, corrente, capacidade efetiva e limiares da proteção não foram fornecidos. O relato valida a operação observada; autonomia e ensaio sustentado continuam pendentes.

## Alternativa testada

IP5310: carregamento, LEDs/status, boost e cargas USB-C compatíveis funcionaram, mas a integração por fios/pads no SatoOne não teve a mesma confiabilidade do UPS antigo. **[NOT USED IN CURRENT BUILD] [EXPERIMENTAL / FUTURE]**. Não substituir automaticamente o baseline.

## Próximos passos

- [x] LiPo recebida, medida e integrada; proteção observada.
- [x] Banco 1S confirmado, suporte 18650 removido e conjunto completo validado conforme relato.
- [ ] Medir dimensões finais e altura máxima da PCB do UPS.
- [ ] Planejar LiPo e UPS no mesmo plano, Back mais fino, fixação segura/removível, acesso à USB-C de carga e organização dos cabos.
- [ ] Integrar INA219, monitoramento, alerta de bateria baixa e shutdown seguro.
- [ ] Medir autonomia e térmica em cenário documentado.

Esta revisão substitui a direção IP5310 de 16/09. A distribuição pós-switch permanece preservada.
