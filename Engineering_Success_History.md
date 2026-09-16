# Engineering Success History — SatoOne

**Versão:** 1.1  
**Status:** Registro canônico de conquistas e soluções reutilizáveis  
**Última atualização:** 2026-08-04

## Atualização de marcos — 2026-08-15

### SUCCESS-0017 — Bambu Lab A1 Mini recebida

- **Categoria:** Fabricação
- **Estado:** Concluído
- **Evidência:** impressora disponível fisicamente no laboratório.
- **Reuso:** projetar e validar o gabinete considerando o envelope da A1 Mini; usar PLA e coupons antes da peça completa.

### SUCCESS-0018 — Primeiro inventário dimensional físico

- **Categoria:** Mecânica
- **Estado:** Concluído para os envelopes registrados
- **Evidência:** medições reais com paquímetro do display, teclado, Radxa, UPS e hub.
- **Limites:** padrão de furos do teclado e coordenadas oficiais do display ainda pendentes.

## Propósito

Registrar tudo que deu certo, por que funcionou e como reutilizar com segurança. Um sucesso não elimina a necessidade de registrar versões, ambiente e limites conhecidos.

## Índice de sucessos

| ID | Marco | Estado | Reuso principal |
| --- | --- | --- | --- |
| SUCCESS-0001 | Arquitetura MVC/Python/PySide6 | Concluído | Base modular e testável |
| SUCCESS-0002 | Radxa Zero 3W | Concluído | Plataforma Linux embarcada |
| SUCCESS-0003 | Debian Bullseye + XFCE | Concluído | Ambiente base leve e estável |
| SUCCESS-0004 | Virtualenv no projeto | Concluído | Dependências isoladas |
| SUCCESS-0005 | Dependência Qt resolvida | Concluído | Diagnóstico com `ldd` |
| SUCCESS-0006 | Autostart funcional | Concluído | Launcher ativa `.venv` |
| SUCCESS-0007 | Splash inicial | Concluído | Base visual funcional |
| SUCCESS-0008 | QTimer validado | Concluído | Infraestrutura de animação |
| SUCCESS-0009 | Display Waveshare compatível | Concluído | HDMI + USB HID no Linux |
| SUCCESS-0010 | Direção de display futuro | Aprovado | 4" 720×720 em avaliação |
| SUCCESS-0011 | Teclado Q10 selecionado | Concluído | Referência mecânica |
| SUCCESS-0012 | Bambu Lab A1 Mini | Aprovado | Plataforma de prototipagem |
| SUCCESS-0013 | Estratégia mecânica | Concluído | Gabinete modular e reparável |
| SUCCESS-0014 | Estratégia documental | Concluído | Memória permanente |
| SUCCESS-0015 | Skills de engenharia | Concluído | Contexto e consistência |
| SUCCESS-0016 | Filosofia do produto | Concluído | Critério para decisões |

## Detalhes e reutilização

### SUCCESS-0001 a SUCCESS-0003 — Base de software e plataforma

MVC, Python, PySide6, Radxa Zero 3W (4 GB LPDDR4, 32 GB eMMC) e Debian Bullseye/XFCE formam a base aprovada. Funcionam juntos porque separam UI da lógica, usam uma pilha Linux leve e definem um alvo concreto. Reutilizar esta base até que uma ADR substitua algum elemento.

### SUCCESS-0004 a SUCCESS-0006 — Ambiente de execução confiável

O virtualenv em `~/Projetos/SatoOne/.venv`, o diagnóstico de dependência com `ldd` e o launcher `start_satoone.sh` resolvem isolamento Python, plugin Qt e autostart. Reutilizar o launcher para sessão gráfica e execução modular para desenvolvimento. Ver também `ERROR-0003`, `ERROR-0004`, `ERROR-0005` e `ERROR-0007`.

### SUCCESS-0007 e SUCCESS-0008 — Fundação da splash

A splash com logo, status, progresso e mensagens funciona; o `QTimer` completou 100 ticks. Isso comprova a base de temporização, mas não comprova efeitos visuais premium. Usar QPainter para a próxima iteração, conforme `ERROR-0006` e `ERROR-0010`.

### SUCCESS-0009 a SUCCESS-0013 — Direção física e mecânica

O Waveshare 1024×600 com HDMI e touch USB HID foi compatível com Linux. O teclado BlackBerry Q10 e a Bambu Lab A1 Mini definem restrições de gabinete. A direção de 4" 720×720 foi aprovada por proporção, mas permanece pendente de validação física. Projetar com manutenção, bateria, bordas arredondadas e parafusos ocultos.

### SUCCESS-0014 a SUCCESS-0016 — Processo de engenharia

`ENGINEERING_BIBLE.md`, a knowledge base e as skills SatoOne Development/Connect transformam decisões e descobertas em memória reutilizável. A filosofia de produto estabelece qualidade comercial, modularidade, Linux embarcado, UI premium, reparabilidade e fabricação futura como critérios de decisão.

## Template

### SUCCESS-#### — Título

- **Data:**
- **Categoria / responsável:**
- **Status:** Concluído / Aprovado / Monitorando
- **Objetivo:**
- **Implementação / decisão:**
- **Por que funcionou:**
- **Evidência e ambiente:**
- **Benefício:**
- **Limites conhecidos:**
- **Como reutilizar:**
- **Links relacionados:**
