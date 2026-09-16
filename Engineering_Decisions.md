# Engineering Decisions — SatoOne

**Versão:** 1.1  
**Status:** Registro canônico de decisões  
**Última atualização:** 2026-08-04

## Propósito e regra

Registrar por que cada decisão relevante foi tomada, as alternativas avaliadas, sua evidência, consequências e gatilhos de revisão. Uma decisão não é uma medição: hipóteses e itens planejados devem permanecer explícitos.

## Índice

| ID | Decisão | Estado | Gatilho de revisão |
| --- | --- | --- | --- |
| ADR-001 | MVC com Python/PySide6 | Aceita | Limite de desempenho/integração comprovado |
| ADR-002 | Radxa Zero 3W | Aceita | Evidência de insuficiência de hardware |
| ADR-003 | Debian Bullseye + XFCE | Aceita | Necessidade de driver/segurança/manutenção |
| ADR-004 | Virtualenv do projeto | Aceita | Empacotamento substitui fluxo atual |
| ADR-005 | Launcher para autostart | Aceita | Método de deploy mais robusto validado |
| ADR-006 | Waveshare 5" atual / 4" futuro | Em validação | Testes do display 4" |
| ADR-007 | Teclado BlackBerry Q10 | Aceita | Integração física/eletrônica inviável |
| ADR-008 | Bambu Lab A1 Mini; PLA V1 | Aceita | Requisitos mecânicos/térmicos exigirem mudança |
| ADR-009 | Gabinete modular e reparável | Aceita | Nenhum; princípio de produto |
| ADR-010 | Knowledge base e skills | Aceita | Processo comprovadamente inadequado |

## Decisões detalhadas

### ADR-001 — MVC com Python e PySide6

- **Contexto:** GUI Linux embarcada precisa evoluir sem misturar apresentação e regra de negócio.
- **Alternativas:** UI monolítica; frameworks proibidos em `Constraints.md` (Tkinter, PyQt, Electron e JavaScript para GUI).
- **Decisão:** MVC, Python e PySide6, com serviços e drivers isolados.
- **Motivo:** separação de responsabilidades, testabilidade, suporte Linux e interface nativa.
- **Consequência:** não bloquear a thread UI; widgets não carregam regra de negócio.

### ADR-002 — Radxa Zero 3W como plataforma-alvo

- **Contexto:** computador portátil de IA requer placa compacta e Linux.
- **Alternativas:** não registradas no histórico disponível.
- **Decisão:** Radxa Zero 3W com 4 GB LPDDR4 e 32 GB eMMC.
- **Motivo:** suporte Linux, consumo, Wi-Fi/Bluetooth e formato compacto.
- **Risco:** IA, temperatura e armazenamento são recursos limitados; medir no dispositivo.

### ADR-003 — Debian Bullseye com XFCE

- **Contexto:** definir ambiente operacional repetível.
- **Decisão:** Debian Bullseye e XFCE.
- **Motivo:** estabilidade, baixo peso e compatibilidade Qt.
- **Consequência:** dependências e deployment devem ser documentados para esta base.

### ADR-004 — Virtualenv dentro do projeto

- **Contexto:** dependências Python precisam ser isoladas e encontráveis.
- **Decisão:** `~/Projetos/SatoOne/.venv`.
- **Motivo:** isolamento, repetibilidade e backup.
- **Evidência:** corrigiu o diagnóstico registrado em `ERROR-0004`.

### ADR-005 — Autostart por launcher

- **Contexto:** `.desktop` não ativava o virtualenv ao chamar Python diretamente.
- **Decisão:** usar `.desktop` → `start_satoone.sh` → ativação de `.venv` → aplicação.
- **Motivo:** garantir ambiente correto no login gráfico.
- **Evidência:** `SUCCESS-0006`; ver `ERROR-0005`.

### ADR-006 — Estratégia de displays

- **Contexto:** Waveshare HDMI 5", 1024×600, compatível; proporção com Q10 é insatisfatória.
- **Decisão:** manter display atual no protótipo e avaliar HDMI IPS 4", 720×720, capacitivo.
- **Motivo:** melhor proporção e aparência comercial.
- **Estado:** em validação; não comprar/considerar compatível sem testes documentados.

### ADR-007 — Teclado BlackBerry Q10

- **Contexto:** handheld precisa de digitação física e aparência profissional.
- **Decisão:** usar Q10 como referência de design.
- **Motivo:** experiência de digitação, compactação e linguagem visual.
- **Risco:** integração e disponibilidade ainda exigem validação.

### ADR-008 — Prototipagem com Bambu Lab A1 Mini

- **Contexto:** construir e iterar gabinete localmente.
- **Decisão:** Bambu Lab A1 Mini; PLA na V1 e PETG como evolução futura.
- **Motivo:** precisão, confiabilidade e software.
- **Consequência:** CAD precisa respeitar envelope, orientação, inserts e manutenção.

### ADR-009 — Gabinete modular e reparável

- **Decisão:** gabinete do zero, com manutenção, compartimento de bateria, cantos arredondados, parafusos ocultos e rota interna de cabos.
- **Motivo:** objetivo comercial e vida longa do produto.
- **Alternativas descartadas:** gabinete sem manutenção e fixação improvisada são incompatíveis com a visão.

### ADR-010 — Documentação e skills como memória permanente

- **Decisão:** especificações, knowledge base, histórico e skills são partes do produto.
- **Motivo:** evitar perda de conhecimento e repetição de erros; permitir contribuição consistente de pessoas e agentes.
- **Consequência:** toda mudança relevante atualiza a documentação relacionada.

## Template

### ADR-### — Título

- **Data:**
- **Status:** Proposta / Aceita / Em validação / Substituída
- **Contexto:**
- **Alternativas consideradas:**
- **Decisão:**
- **Motivo e evidência:**
- **Consequências e riscos:**
- **Gatilho de revisão:**
- **Links relacionados:**
