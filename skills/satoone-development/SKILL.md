---
name: satoone-development
description: Develop, refactor, design, or troubleshoot the SatoOne embedded AI handheld computer. Use for its Python/PySide6 application, Debian/Radxa integration, GUI, physical hardware and drivers, offline AI features, plugins, 3D enclosure, or deployment decisions.
---

# Desenvolvimento do SatoOne

Construa o SatoOne como um computador portátil de IA comercial e offline-first, não como uma demonstração de Raspberry Pi. Priorize desempenho, arquitetura limpa, manutenção, UX premium e compatibilidade com Linux embarcado.

## Plataforma e restrições

- Placa: Radxa Zero 3W, Debian Bullseye com XFCE e Python 3.9+.
- Recursos disponíveis: 4 GB de RAM e 32 GB de armazenamento interno. Trate RAM, espaço em disco, CPU e temperatura como recursos limitados.
- Tela atual: Waveshare HDMI de 5", 1024x600, touch capacitivo. Planeje componentes responsivos para a futura tela HDMI IPS de 4", 720x720.
- Hardware previsto: teclado físico BlackBerry Q10, bateria 18650, carregamento USB-C, monitoramento de bateria e gabinete impresso em 3D para Bambu Lab A1 Mini.

## Arquitetura

Use Python e PySide6 com MVC. Não coloque lógica de negócio em classes de UI.

Organize funcionalidades em camadas claras, conforme necessário:

```text
app/        widgets/    services/   core/
models/     database/   assets/     config/
utils/      drivers/
```

- Mantenha recursos modulares e instaláveis; não crie dependências hardcoded.
- Use composição antes de herança e evite classes Deus.
- Limite classes a 400 linhas e métodos a 40 linhas.
- Use PEP 8, type hints, docstrings, nomes descritivos, constantes nomeadas e métodos pequenos.
- Aplique SOLID, DRY e KISS sem abstrações desnecessárias.
- Prefira operações assíncronas ou em workers para I/O, rede, IA e leituras de hardware; nunca bloqueie a thread da interface.

## Performance embarcada

- Evite carregar modelos, imagens e dados desnecessários na inicialização.
- Controle caches e registre o tamanho em disco; não assuma armazenamento externo.
- Carregue recursos sob demanda, descarte objetos pesados e monitore consumo de RAM.
- Faça tarefas de IA offline configuráveis e degradáveis para a capacidade do dispositivo.
- Evite animações, timers e polling excessivos; mantenha a interface fluida com meta de 60 FPS.
- Trate falhas de Wi-Fi, Bluetooth, bateria, sensores e serviços como estados normais e visíveis na UI.

## Interface e experiência

A experiência deve combinar Tesla, Apple HIG, Steam Deck e Linux moderno: tema escuro, sensação premium e componentes próprios, não o visual padrão do Qt.

- Use `#050505` como fundo, `#00BFFF` como cor principal e `#55CFFF` como destaque.
- Prefira fontes sans-serif modernas, cantos arredondados e vidro somente quando o custo gráfico for aceitável.
- Use transições suaves, opacidade, fade, glow e partículas de maneira intencional, sem prejudicar a resposta da interface.
- Garanta áreas de toque adequadas e suporte ao teclado físico em todas as telas críticas.

### Inicialização e dashboard

A splash screen deve ter logo centralizada, partículas animadas, glow, barra de progresso própria, fade in/out e mensagens profissionais; ao terminar, abra o Dashboard automaticamente.

O Dashboard deve apresentar CPU, RAM, temperatura, bateria, Wi-Fi, Bluetooth, estado de IA e rede, serviços em execução, lançadores rápidos, notificações e relógio. Isole a coleta de cada métrica em serviços ou drivers, não em widgets.

## IA, plugins e drivers

- Mantenha o produto funcional offline e prepare integrações futuras com OpenAI, Ollama, LM Studio, Whisper, reconhecimento de fala, comandos de voz, chat e base de conhecimento.
- Projete cada recurso de IA como serviço opcional, com configuração e fallback explícitos.
- Prepare interfaces para GPIO, I2C, SPI, UART, controlador de bateria, botão de energia, LEDs, ventoinha, sensores e touchscreen. Separe adaptadores de hardware da lógica de aplicação.
- Valide hardware com leituras seguras e nunca assuma que um periférico está conectado.

## Gabinete e fabricação

Projete para aparência comercial: compacto, bordas arredondadas, parafusos ocultos, manutenção possível, rota de cabos interna, compartimento de bateria, refrigeração passiva e espaço para ventoinha futura. Considere as limitações da Bambu Lab A1 Mini e priorize PLA ou PETG; deixe ASA e TPU para versões futuras.

## Entrega de código

- Antes de implementar, avalie escalabilidade, modularidade, manutenção e acabamento comercial; proponha uma arquitetura melhor quando houver benefício relevante.
- Ao gerar código, entregue arquivos completos, com imports e implementações funcionais. Não deixe placeholders ou métodos parciais.
- Inclua testes ou verificações proporcionais ao risco e informe qualquer limitação de hardware que não tenha sido validada no dispositivo.

## Base documental ordenada

Comece por `ENGINEERING_BIBLE.md`, `PRD.md`, `Vision.md` e `Constraints.md` na raiz do repositório. Eles são a fonte normativa; não invente evidências e preserve o histórico em `knowledge/`.

Comece sempre por [00_project.md](references/00_project.md). Carregue os demais documentos em ordem numérica somente quando forem relevantes à tarefa:

- [01_hardware.md](references/01_hardware.md): plataforma e compatibilidade elétrica/Linux.
- [02_software.md](references/02_software.md): stack, arquitetura e IA.
- [03_ui_ux.md](references/03_ui_ux.md): identidade visual e experiência.
- [04_cad.md](references/04_cad.md): gabinete e impressão 3D.
- [05_inventory.md](references/05_inventory.md): itens adquiridos e pendentes.
- [06_wiring.md](references/06_wiring.md): interfaces e roteamento interno.
- [07_assembly.md](references/07_assembly.md): sequência de montagem.
- [08_roadmap.md](references/08_roadmap.md): evolução planejada.
- [09_decisions.md](references/09_decisions.md): decisões de engenharia e justificativas.
- [10_coding_standards.md](references/10_coding_standards.md): regras de implementação.
- [11_testing.md](references/11_testing.md): estratégia de validação.
- [12_known_problems.md](references/12_known_problems.md): problemas conhecidos e soluções descartadas.
- [13_solutions.md](references/13_solutions.md): soluções validadas e rollback.
- [14_experiments.md](references/14_experiments.md): experiências e resultados.
- [15_lessons_learned.md](references/15_lessons_learned.md): lições reutilizáveis.
- [16_performance.md](references/16_performance.md): métricas reproduzíveis.
- [17_security.md](references/17_security.md): controles e riscos.
- [18_future_features.md](references/18_future_features.md): recursos planejados.
- [19_product_requirements.md](references/19_product_requirements.md): requisitos do produto.
- [20_architecture.md](references/20_architecture.md): arquitetura por camadas.
- [21_components.md](references/21_components.md): componentes e BOM.
- [22_change_log.md](references/22_change_log.md): histórico de versões.
- [23_engineering_notes.md](references/23_engineering_notes.md): memória técnica por domínio.
- [24_debug_history.md](references/24_debug_history.md): depuração cronológica.
- [25_glossary.md](references/25_glossary.md): termos do projeto.

Após trabalho relevante, atualize a especificação afetada, `knowledge/` e `CHANGELOG.md`. Para decisões, registre motivo, alternativas, decisão, evidência e melhoria futura.

## Protocolo obrigatório para hardware e fabricação

- Consultar `specifications/hardware/BOM.md` e `knowledge/hardware/` antes de propor hardware novo.
- Consultar `knowledge/bugs/known_issues.md` e `references/12_known_problems.md` antes de diagnosticar.
- Consultar `knowledge/fixes/` e `references/13_solutions.md` antes de propor solução.
- Consultar `Engineering_Decisions.md`, `knowledge/decisions.md` e `references/09_decisions.md` antes de alterar arquitetura.
- Preservar medições físicas e rotulá-las como `MEDIÇÃO FÍSICA`; diferenciar de `ESPECIFICAÇÃO DO FABRICANTE`, `ESTIMATIVA` e `PENDENTE DE VALIDAÇÃO`.
- Atualizar documentação após descobertas relevantes; não repetir experimentos marcados como `FAILED`.
- Não alterar hardware confirmado sem justificativa e evidência.
- Distinguir explicitamente `PROTOTYPE` de `PRODUCTION`.
- Para impressão 3D, priorizar calibration coupons/fit tests pequenos antes de uma impressão grande.
