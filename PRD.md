# PRD — SatoOne

## Identificação

| Campo | Valor |
| --- | --- |
| Produto | SatoOne |
| Versão | 1.1 (V0 funcional → V1 comercial) |
| Estado | V0 validada; V1 em planejamento técnico |

## Objetivo

Construir um computador pessoal portátil premium, proprietário e offline-first, capaz de oferecer uma experiência Linux moderna em hardware embarcado, reparável e preparado para comercialização.

## Público-alvo

- Desenvolvedores, DBAs e administradores Linux.
- Engenheiros e criadores de conteúdo.
- Pessoas que precisam de computação portátil, física e orientada à privacidade.

## Proposta de valor

Hardware, software, interface, documentação e fabricação com acabamento premium; operação local sempre que possível, integrações de IA opcionais e evolução pública verificável para futuros compradores e parceiros.

## Requisitos de produto

1. Inicializar em um dashboard responsivo, com estados claros de sistema e bateria.
2. Executar a interface em Debian/Linux no Radxa Zero 3W.
3. Suportar tela HDMI touch, teclado físico, áudio, USB, bateria e expansão por GPIO.
4. Preservar a operação essencial sem conexão de rede.
5. Ser modular, reparável, documentado e adequado a gabinete impresso em 3D.
6. Oferecer pelo menos duas horas de autonomia na V1 em cenário de teste documentado.
7. Expor ao Debian carga, tensão, corrente, potência e autonomia estimada da bateria.
8. Reduzir a espessura da case V0 sem comprometer bateria, manutenção ou térmica.

## Critérios de sucesso

- Interface fluida no hardware-alvo, sem bloquear a thread gráfica.
- Toda alteração relevante registrada em `CHANGELOG.md`, `knowledge/` e, quando aplicável, em `specifications/`.
- Componentes, compatibilidade e decisões rastreáveis antes da montagem.
- Alimentação em 5 V estável, telemetria funcional e ausência de throttling no teste sustentado da V1.

## Estratégia comercial

O desenvolvimento público comunica marcos, fotos, vídeos, resultados consolidados e metas. O produto ainda não está à venda. Preço, disponibilidade, especificações finais e financiamento permanecem pendentes de validação.

## Fora de escopo da V1

Recursos sem validação de hardware — como LTE, NFC, câmera, biometria, LoRa, câmera térmica e display alternativo — permanecem no roadmap, não são promessas da V1.
