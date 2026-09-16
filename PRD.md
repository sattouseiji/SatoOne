# PRD — SatoOne

## Identificação

| Campo | Valor |
| --- | --- |
| Produto | SatoOne |
| Versão | 1.0 (fundação) |
| Estado | Em definição e prototipagem |

## Objetivo

Construir um computador portátil premium de IA, open source e offline-first, capaz de oferecer uma experiência Linux moderna em hardware embarcado e reparável.

## Público-alvo

- Desenvolvedores, DBAs e administradores Linux.
- Engenheiros e criadores de conteúdo.
- Pessoas que precisam de computação portátil, física e orientada à privacidade.

## Proposta de valor

Hardware, software, interface, código, documentação e fabricação com acabamento premium; operação local sempre que possível e integrações de IA opcionais.

## Requisitos de produto

1. Inicializar em um dashboard responsivo, com estados claros de sistema e bateria.
2. Executar a interface em Debian/Linux no Radxa Zero 3W.
3. Suportar tela HDMI touch, teclado físico, áudio, USB, bateria e expansão por GPIO.
4. Preservar a operação essencial sem conexão de rede.
5. Ser modular, reparável, documentado e adequado a gabinete impresso em 3D.

## Critérios de sucesso

- Interface fluida no hardware-alvo, sem bloquear a thread gráfica.
- Toda alteração relevante registrada em `CHANGELOG.md`, `knowledge/` e, quando aplicável, em `specifications/`.
- Componentes, compatibilidade e decisões rastreáveis antes da montagem.

## Fora de escopo da V1

Recursos sem validação de hardware — como LTE, NFC, câmera, biometria, LoRa e câmera térmica — permanecem no roadmap, não são promessas da V1.
