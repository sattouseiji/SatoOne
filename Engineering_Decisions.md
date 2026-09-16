# Engineering Decisions — SatoOne

**Versão:** 1.2
**Status:** Registro canônico de decisões  
**Última atualização:** 2026-09-16

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
| ADR-011 | Produto proprietário com desenvolvimento público | Aceita | Estratégia comercial formal mudar |
| ADR-012 | Li‑Po 1S 10.000 mAh e nova cadeia de energia V1 | Em validação | Teste elétrico ou fornecedor inviabilizar |
| ADR-013 | Telemetria de bateria integrada ao Debian | Em validação | Driver/kernel ou precisão insuficientes |
| ADR-014 | Case V1 menor com cooling orientado por testes | Em validação | CAD, segurança ou térmica inviabilizar |

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

### ADR-011 — Produto proprietário com desenvolvimento público

- **Data:** 2026-09-15; consolidada publicamente em 2026-09-16.
- **Decisão:** posicionar o SatoOne como produto proprietário e usar o site/repositório público para acompanhamento, interesse de compra, parcerias e apoio.
- **Motivo:** preparar uma proposta comercial coerente sem apresentar o projeto como convite aberto à fabricação ou desenvolvimento.
- **Consequência:** comunicação pública sanitizada; detalhes internos e futuros ativos estratégicos devem migrar para engenharia privada.
- **Limite:** versões já publicadas sob MIT continuam sujeitas à licença aplicável àquelas versões.

### ADR-012 — Nova cadeia de energia da V1

- **Data:** 2026-09-15.
- **Decisão:** planejar Li‑Po 1S de 10.000 mAh, PCM/BMS, fusível 7,5 A, USB-C com power-path, boost 5 V e comutação pelo `EN`.
- **Motivo:** superar a autonomia medida de 1h04 e reduzir o volume do UPS/18650.
- **Estado:** em validação; nenhuma peça candidata é considerada comprada.
- **Meta:** pelo menos duas horas no ensaio definido.

### ADR-013 — Telemetria no Debian

- **Data:** 2026-09-15.
- **Decisão:** avaliar fuel gauge 1S como MAX17048 e medição de potência com INA226 e shunt adequado à corrente.
- **Motivo:** o UPS atual não fornece nível útil ao Linux.
- **Consequência:** criar driver/serviço isolado da UI e validar I²C/kernel antes do fechamento do BOM.

### ADR-014 — Direção mecânica e térmica da V1

- **Data:** 2026-09-15.
- **Decisão:** colocar a bateria pouch atrás do teclado, reduzir espessura e priorizar dissipação passiva; reservar fan de 30 mm apenas se testes exigirem.
- **Meta preliminar:** região da bateria entre 25 e 28 mm; SoC sustentado ≤75 °C sem throttling.
- **Limite:** metas dependem de CAD, folgas de segurança e validação física.

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
