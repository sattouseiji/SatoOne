# Histórico de erros de engenharia — SatoOne

## ISSUE-MECH-006 — No external access to Radxa microSD

- **Revisão:** V1.2
- **Sintoma:** com a Radxa montada na Back, não há abertura validada para inserir/remover o microSD.
- **Causa:** V0/V1 foram criadas antes da validação de acesso a conectores laterais.
- **Correção proposta:** recorte lateral paramétrico na V1.2.
- **Status:** `OPEN_IN_V1_2_UNTIL_PHYSICAL_VALIDATION`.
- **Lição:** validar serviceability, acesso de cabos, mídia removível e clearance de conectores, não apenas o encaixe da PCB.

## ISSUE-MECH-006 — Lack of external access to Radxa microSD card

- **Sintoma:** após montar a Radxa, o cartão microSD não tinha acesso externo.
- **Impacto:** era necessário desmontar ou soltar a placa para trocar o cartão.
- **Correção:** recorte lateral paramétrico na revisão V1.2.
- **Status:** `IMPLEMENTED_IN_NEXT_REVISION`; posição ainda `NEEDS_PHYSICAL_VALIDATION`.
- **Lição:** validar acesso de manutenção com a placa montada, não apenas o envelope da PCB.

## ERROR/ISSUE-VENT-001 — Back ventilation slots did not cut through the internal floor

- **Data:** 2026-08-15
- **Sintoma:** ranhuras visíveis externamente, mas sem abertura até a cavidade interna.
- **Causa:** profundidade/posicionamento booleano insuficiente em relação ao piso.
- **Impacto:** ventilação apenas visual, não funcional.
- **Correção:** corte passante com `slot_cut_depth = wall + 1.0 mm` e centro em `wall / 2`.
- **Status:** `RESOLVED_IN_V1_1`; confirmar no slicer e na impressão física.
- **Lição:** validar booleanos passantes no preview por camada.

## Pendências/correções V1 — 2026-08-15

- **MECH-003 — Hub V0:** furação incorreta; V1 usa 51.03 × 14.92 mm, piloto Ø2.20 mm.
- **MECH-004 — Radxa V0:** furos apertados; V1 usa piloto Ø2.30 mm.
- **MECH-005 — UPS V0:** capacitores tocaram o fundo; V1 usa postes de 12.00 mm.

> Este arquivo permanece como fonte detalhada da knowledge base. O registro canônico para consulta geral é [Engineering_Error_History.md](../../Engineering_Error_History.md).

**Versão:** 1.0 importada em 2026-08-04  
**Propósito:** preservar cada erro, experimento falho, comportamento inesperado e sessão de depuração. Não apagar registros; adicionar correções e evidências posteriores.

## ERROR-0001 — Serviço SSH parecia inativo

- **Categoria:** Linux, systemd, SSH
- **Status:** Resolvido
- **Descrição:** após a inicialização, o serviço SSH aparentava estar `DEAD`.
- **Impacto:** a equipe acreditou que o servidor SSH não estava em execução.
- **Investigação:** `systemctl status ssh`, `systemctl status ssh.socket`, `systemctl show ssh`, `journalctl -u ssh`, `systemctl cat ssh`.
- **Causa raiz:** `ssh.socket` usa socket activation. Ao iniciar `ssh.service` manualmente, o socket pode ficar inativo; esse comportamento é esperado.
- **Solução:** validar a saúde por `ssh.service`, não pelo estado de `ssh.socket`.
- **Lição:** compreender socket activation do systemd antes de concluir que um serviço falhou.

## ERROR-0002 — Journal do SSH vazio

- **Categoria:** Linux
- **Status:** Resolvido
- **Descrição:** `journalctl -u ssh -b` não retornou entradas.
- **Impacto:** não havia informação de depuração disponível ao usuário comum.
- **Causa raiz:** permissões insuficientes para acessar o journal completo.
- **Solução:** executar `sudo journalctl -u ssh -b`.
- **Lição:** coletar logs de sistema com privilégios adequados; redigir segredos antes de anexá-los à documentação.

## ERROR-0003 — Plugin PySide6 ausente

- **Categoria:** Python, Qt
- **Status:** Resolvido
- **Descrição:** a aplicação PySide6 não iniciava.
- **Investigação:** `ldd libqxcb.so`.
- **Causa raiz:** biblioteca `libxcb-cursor.so.0` ausente.
- **Solução:** instalar o pacote `libxcb-cursor0`.
- **Lição:** verificar dependências Qt com `ldd` quando o plugin de plataforma não carregar.

## ERROR-0004 — Caminho do ambiente virtual Python

- **Categoria:** Python
- **Status:** Resolvido
- **Descrição:** a busca pelo ambiente virtual foi feita no local errado com `find ~/.venv`.
- **Causa raiz:** o ambiente virtual estava dentro do projeto: `~/Projetos/SatoOne/.venv`.
- **Solução:** confirmar e usar o ambiente virtual do projeto.
- **Lição:** não assumir a localização do virtualenv; verificá-la antes de diagnosticar dependências.

## ERROR-0005 — Autostart falhou

- **Categoria:** Linux, XFCE
- **Status:** Resolvido
- **Descrição:** a entrada `.desktop` iniciava, mas nenhuma janela aparecia.
- **Causa raiz:** a entrada executava Python diretamente, sem ativar o virtualenv.
- **Solução:** criar `start_satoone.sh`, ativar `.venv` e iniciar a aplicação pelo script.
- **Lição:** não executar Python diretamente em uma entrada desktop quando o projeto depende de virtualenv.

## ERROR-0006 — Animação da splash não se movia

- **Categoria:** PySide6, UX
- **Status:** Resolvido (diagnóstico); evolução planejada
- **Descrição:** splash carregava, mas a barra de progresso parecia estática.
- **Investigação:** adicionado `print()` ao `QTimer`; os ticks ocorreram.
- **Causa raiz:** a lógica de animação e repaint do Qt funcionavam; a imagem PNG era estática. O problema era a expectativa visual do design.
- **Solução:** substituir a falsa animação por renderização customizada.
- **Próximos passos:** Particle Engine, glow e QPainter.
- **Lição:** separar falha de lógica de limitação do asset/expectativa de design antes de alterar o loop de renderização.

## ERROR-0007 — `ModuleNotFoundError: widgets`

- **Categoria:** Python
- **Status:** Resolvido
- **Descrição:** o módulo `widgets` não era importado.
- **Causa raiz:** aplicação iniciada com `python app/splash.py`; a raiz do projeto não estava em `sys.path`.
- **Solução:** iniciar com `python -m app.splash` ou inserir explicitamente a raiz do projeto no caminho de importação.
- **Lição:** preferir execução como módulo e evitar imports relativos frágeis em scripts executáveis.

## ERROR-0008 — Loop de relançamento do SatoOne

- **Categoria:** systemd, autostart
- **Status:** Resolvido
- **Descrição:** a aplicação reabria depois de ser fechada.
- **Investigação:** `systemctl --user status`.
- **Causa raiz:** serviço systemd de usuário reiniciava a aplicação automaticamente.
- **Solução:** interromper o serviço antes de testar o fechamento da GUI.
- **Lição:** desativar restart automático durante depuração manual de interface.

## ERROR-0009 — Display atual grande demais

- **Categoria:** Hardware, UX
- **Status:** Aberto
- **Descrição:** display Waveshare de 5" parece visualmente grande em relação ao teclado BlackBerry Q10.
- **Impacto:** o protótipo perde proporção de handheld comercial.
- **Decisão atual:** avaliar display HDMI IPS de 4", 720×720.
- **Próximo passo:** obter hardware e validar encaixe, touch, brilho, consumo e compatibilidade Linux.

## ERROR-0010 — Design da splash simples demais

- **Categoria:** UX, PySide6
- **Status:** Aberto
- **Descrição:** splash ainda parece protótipo.
- **Lacunas:** glow, partículas, barra de progresso customizada e fade.
- **Decisão atual:** implementação futura com QPainter.
- **Próximo passo:** criar experimento com meta de FPS e orçamento de CPU no Radxa.

## Lições gerais

- Nunca assumir comportamento do Linux.
- Documentar a depuração e os comandos executados.
- Não repetir problemas já resolvidos; consultar este histórico e `knowledge/fixes/` primeiro.
- Todo erro de engenharia é conhecimento permanente do projeto.
