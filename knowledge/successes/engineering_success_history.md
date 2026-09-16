# Histórico de acertos de engenharia — SatoOne

## SUCCESS-0022 — Requisito de acesso microSD incorporado — 2026-08-15

- O requisito de troca do microSD sem desmontar a case foi incorporado à V1.2.
- O recorte é paramétrico, arredondado e passante.
- A posição permanece provisória até validação física, preservando a distinção entre CAD proposto e geometria confirmada.

## SUCCESS-0022 — Requisito de manutenção do microSD incorporado — 2026-08-15

- Criada revisão V1.2 sem sobrescrever versões anteriores.
- Recorte lateral paramétrico adicionado no lado da Radxa.
- A posição foi explicitamente mantida provisória até medição física do slot.

## SUCCESS-0021 — V1.1 corrige ventilação funcional — 2026-08-15

- V0 foi impressa com sucesso na A1 Mini.
- Radxa, UPS e hub foram validados no layout físico.
- V1.1 transforma as ranhuras da Back em cortes realmente passantes sem alterar os demais componentes funcionais.

## SUCCESS-0019 — Back V0 impresso e validado — 2026-08-15

- Back V0 impresso na Bambu Lab A1 Mini.
- Radxa coube na região planejada; footprint XY da UPS foi compatível; altura do hub foi adequada.
- O fluxo CAD → STL → Bambu Studio → A1 Mini foi confirmado.

## SUCCESS-0020 — Correções V1 derivadas de teste físico — 2026-08-15

- Hub corrigido para 51.03 × 14.92 mm e piloto Ø2.20 mm.
- Radxa corrigida para piloto Ø2.30 mm.
- UPS elevada para postes de 12.00 mm para clearance dos capacitores.

> Este arquivo permanece como fonte detalhada da knowledge base. O registro canônico para consulta geral é [Engineering_Success_History.md](../../Engineering_Success_History.md).

**Versão:** 1.0 importada em 2026-08-04  
**Propósito:** registrar conquistas, soluções validadas e marcos reutilizáveis. Cada sucesso deve explicar por que funcionou e apontar limites ou próxima validação.

## SUCCESS-0001 — Arquitetura inicial definida

- **Categoria:** Arquitetura de software
- **Status:** Concluído
- **Decisão:** MVC, Python, PySide6 e design modular.
- **Resultado:** base escalável, com responsabilidades separadas e melhor testabilidade.
- **Reutilização:** suportar plugins e componentes modulares sem concentrar lógica em widgets.

## SUCCESS-0002 — Radxa Zero 3W selecionado

- **Categoria:** Hardware
- **Status:** Concluído
- **Plataforma:** Radxa Zero 3W, 4 GB LPDDR4 e 32 GB eMMC.
- **Motivo:** suporte Linux, tamanho compacto, baixo consumo, Wi-Fi e Bluetooth integrados.
- **Resultado:** plataforma de hardware definida para desenvolvimento.

## SUCCESS-0003 — Sistema operacional padronizado

- **Categoria:** Linux
- **Status:** Concluído
- **Decisão:** Debian Bullseye com XFCE.
- **Motivo:** base estável, leve e compatível com Qt.
- **Reutilização:** manter esta combinação como referência de ambiente até uma decisão de migração documentada.

## SUCCESS-0004 — Ambiente Python padronizado

- **Categoria:** Python
- **Status:** Concluído
- **Decisão:** virtualenv dedicado no projeto, em `~/Projetos/SatoOne/.venv`.
- **Resultado:** isolamento de dependências, deploy repetível e backup simples.
- **Referência:** `ERROR-0004`.

## SUCCESS-0005 — Dependência Qt resolvida

- **Categoria:** Qt
- **Status:** Concluído
- **Resultado:** PySide6 iniciou após a instalação de `libxcb-cursor0` para suprir `libxcb-cursor.so.0`.
- **Por que funcionou:** o plugin de plataforma dependia da biblioteca ausente; `ldd libqxcb.so` identificou a dependência.
- **Reutilização:** diagnosticar falhas de plugin Qt com `ldd`.
- **Referência:** `ERROR-0003`.

## SUCCESS-0006 — Autostart funcional

- **Categoria:** Linux
- **Status:** Concluído
- **Implementação:** entrada `.desktop` chama `start_satoone.sh`, que ativa o virtualenv e inicia o app.
- **Resultado:** inicialização automática confiável após login.
- **Referência:** `ERROR-0005`.

## SUCCESS-0007 — Primeira splash funcional

- **Categoria:** UI
- **Status:** Concluído
- **Entregue:** logo, status, barra de progresso e mensagens de carregamento.
- **Resultado:** protótipo de splash funcional.
- **Próxima evolução:** Particle Engine, glow e fade.

## SUCCESS-0008 — QTimer validado

- **Categoria:** Qt
- **Status:** Concluído
- **Evidência registrada:** 100 ticks de timer executados.
- **Conclusão:** infraestrutura de temporização/animação opera corretamente; uma PNG estática não representa falha de repaint.
- **Referência:** `ERROR-0006`.

## SUCCESS-0009 — Compatibilidade do display confirmada

- **Categoria:** Hardware
- **Status:** Concluído
- **Display:** Waveshare 1024×600, HDMI, touch capacitivo USB HID.
- **Resultado:** compatibilidade Linux confirmada.
- **Limite:** proporções físicas seguem em avaliação em `ERROR-0009`.

## SUCCESS-0010 — Direção do display futuro aprovada

- **Categoria:** Hardware
- **Status:** Aprovado
- **Direção:** HDMI capacitivo de 4", 720×720.
- **Motivo:** proporções melhores e aparência comercial.
- **Limite:** aprovação de direção não substitui testes de compatibilidade, consumo e encaixe.

## SUCCESS-0011 — Teclado BlackBerry Q10 selecionado

- **Categoria:** Hardware
- **Status:** Concluído
- **Motivo:** digitação, tamanho compacto e aparência profissional.
- **Resultado:** planejamento mecânico iniciado.

## SUCCESS-0012 — Plataforma de impressão 3D selecionada

- **Categoria:** Mecânica
- **Status:** Aprovado
- **Decisão:** Bambu Lab A1 Mini.
- **Motivo:** precisão, confiabilidade e software.
- **Reutilização:** projetar o gabinete considerando o envelope e os perfis da impressora.

## SUCCESS-0013 — Estratégia mecânica definida

- **Categoria:** Mecânica
- **Status:** Concluído
- **Decisão:** gabinete desenhado do zero, comercial, modular e reparável; cantos arredondados, parafusos ocultos, compartimento de bateria e manutenção acessível.

## SUCCESS-0014 — Estratégia de documentação criada

- **Categoria:** Engenharia
- **Status:** Concluído
- **Resultado:** base de conhecimento, histórico, inventário, hardware, software, roadmap, lições e debug são mantidos como memória permanente.
- **Reutilização:** agentes futuros devem consultar `ENGINEERING_BIBLE.md` e `knowledge/` antes de agir.

## SUCCESS-0015 — Skills de engenharia criadas

- **Categoria:** Desenvolvimento
- **Status:** Concluído
- **Skills:** SatoOne Development e SatoOne Connect.
- **Resultado:** contexto persistente, maior consistência de engenharia e orientação de qualidade.

## SUCCESS-0016 — Filosofia do projeto definida

- **Categoria:** Engenharia
- **Status:** Concluído
- **Princípios:** qualidade comercial, modularidade, Linux embarcado, UI premium, reparabilidade, manutenção e fabricação futura.
- **Referências:** `Vision.md`, `PRD.md` e `ENGINEERING_BIBLE.md`.

## Princípio de engenharia

Toda implementação bem-sucedida deve ser documentada com o motivo do sucesso. Reutilize soluções comprovadas antes de inventar abordagens novas; conhecimento do projeto é um ativo permanente.
