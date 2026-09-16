# Engineering Error History — SatoOne

**Versão:** 1.1  
**Status:** Registro canônico de falhas e depuração  
**Última atualização:** 2026-08-04

## Atualização de pendências mecânicas — 2026-08-15

### MECH-001 — Inconsistência no padrão de furos do teclado

- **Status:** Aberto / NEEDS_REVALIDATION
- **Evidência:** horizontal 53.59 mm, vertical 39.46 mm e diagonal anterior 68.91 mm não devem ser tratados como conjunto CAD validado.
- **Prevenção:** não liberar fixação definitiva do teclado até nova medição.

### MECH-002 — Desenho de fixação do display ainda pendente

- **Status:** Aberto
- **Evidência:** display identificado como Waveshare 5DP-CAPLCD-H e envelope medido; desenho oficial e coordenadas dos furos ainda não conferidos.
- **Prevenção:** não inventar coordenadas nem usar variantes B/G.

## Propósito

Preservar tudo que deu errado: erros, comportamentos inesperados, investigações, tentativas descartadas e pendências. Nunca apagar histórico; corrigir ou complementar entradas com uma nova seção datada. Consulte este arquivo antes de reproduzir uma investigação.

## Como registrar

Cada entrada deve conter: ID, data, categoria, status, impacto, ambiente, sintomas, comandos/ações, causa raiz ou hipótese, tentativas que falharam, solução/workaround, evidência, prevenção e links relacionados.

**Estados:** `Aberto`, `Em investigação`, `Resolvido`, `Monitorando`, `Não reproduzido`.

## Índice

| ID | Título | Categoria | Estado | Solução / próximo passo |
| --- | --- | --- | --- | --- |
| ERROR-0001 | SSH parecia inativo | Linux/systemd | Resolvido | Validar `ssh.service`, não `ssh.socket` |
| ERROR-0002 | Journal do SSH vazio | Linux | Resolvido | Usar privilégios adequados |
| ERROR-0003 | Plugin PySide6 ausente | Qt/Python | Resolvido | Instalar `libxcb-cursor0` |
| ERROR-0004 | Caminho do virtualenv incorreto | Python | Resolvido | Usar `.venv` do projeto |
| ERROR-0005 | Autostart sem janela | Linux/XFCE | Resolvido | Launcher ativa virtualenv |
| ERROR-0006 | Splash parecia sem animação | PySide6/UX | Resolvido | Renderização customizada planejada |
| ERROR-0007 | `ModuleNotFoundError: widgets` | Python | Resolvido | Executar como módulo |
| ERROR-0008 | Aplicação relançava em loop | systemd | Resolvido | Parar serviço durante debug |
| ERROR-0009 | Display atual desproporcional | Hardware/UX | Aberto | Avaliar display 4" 720×720 |
| ERROR-0010 | Splash com acabamento simples | UX | Aberto | Experimentar QPainter e efeitos |

## Registros detalhados

### ERROR-0001 — Serviço SSH parecia inativo

- **Data:** histórica não registrada; importado em 2026-08-04
- **Impacto:** falso diagnóstico de que o servidor SSH não estava em execução.
- **Ambiente:** Linux com systemd e SSH configurado com socket activation.
- **Sintoma:** `ssh.service` parecia `DEAD` após o boot ou ao comparar com o socket.
- **Investigação:** `systemctl status ssh`; `systemctl status ssh.socket`; `systemctl show ssh`; `journalctl -u ssh`; `systemctl cat ssh`.
- **Causa raiz:** `ssh.socket` ativa o serviço sob demanda; ao iniciar `ssh.service` manualmente, o socket pode ficar inativo. É comportamento esperado.
- **Solução:** usar `ssh.service` como indicador de saúde; não inferir falha pelo estado de `ssh.socket`.
- **Prevenção:** entender a unidade systemd e seu modo de ativação antes de diagnosticar falha.

### ERROR-0002 — Journal do SSH vazio

- **Data:** histórica não registrada; importado em 2026-08-04
- **Impacto:** ausência aparente de logs para depuração.
- **Comando:** `journalctl -u ssh -b`.
- **Causa raiz:** usuário sem permissão para acessar o journal completo.
- **Solução:** executar `sudo journalctl -u ssh -b`.
- **Prevenção:** registrar nível de privilégio e redigir segredos antes de salvar logs.

### ERROR-0003 — Plugin PySide6 ausente

- **Data:** histórica não registrada; importado em 2026-08-04
- **Impacto:** aplicação PySide6 não iniciava.
- **Comando:** `ldd libqxcb.so`.
- **Causa raiz:** `libxcb-cursor.so.0` ausente.
- **Solução:** instalar `libxcb-cursor0`.
- **Evidência:** PySide6 passou a executar corretamente, segundo o histórico importado.
- **Prevenção:** inspecionar dependências do plugin Qt com `ldd`.

### ERROR-0004 — Caminho do virtualenv incorreto

- **Data:** histórica não registrada; importado em 2026-08-04
- **Sintoma:** `find ~/.venv` não retornou o ambiente esperado.
- **Causa raiz:** ambiente localizado em `~/Projetos/SatoOne/.venv`.
- **Solução:** confirmar e usar o virtualenv do projeto.
- **Prevenção:** não supor localização de ambiente Python.

### ERROR-0005 — Autostart falhou

- **Data:** histórica não registrada; importado em 2026-08-04
- **Sintoma:** entrada `.desktop` era executada, mas nenhuma janela aparecia.
- **Causa raiz:** Python era iniciado diretamente sem ativar `.venv`.
- **Solução:** `.desktop` chama `start_satoone.sh`, que ativa o ambiente e abre o app.
- **Prevenção:** validar o launcher no ambiente equivalente ao login gráfico.

### ERROR-0006 — Splash parecia sem animação

- **Data:** histórica não registrada; importado em 2026-08-04
- **Sintoma:** barra parecia imóvel.
- **Investigação:** `print()` em `QTimer` confirmou os ticks.
- **Causa raiz:** timer e repaint funcionavam; PNG estático não produz animação percebida. Era uma lacuna de design, não de loop Qt.
- **Solução:** substituir por renderização customizada; Particle Engine, glow e QPainter seguem planejados.
- **Prevenção:** validar lógica, repaint e asset separadamente.

### ERROR-0007 — `ModuleNotFoundError: widgets`

- **Data:** histórica não registrada; importado em 2026-08-04
- **Causa raiz:** `python app/splash.py` não incluía a raiz do projeto em `sys.path`.
- **Solução:** usar `python -m app.splash` ou configurar explicitamente o caminho de projeto.
- **Prevenção:** preferir execução modular e imports absolutos de pacote.

### ERROR-0008 — Loop de relançamento

- **Data:** histórica não registrada; importado em 2026-08-04
- **Sintoma:** aplicação reabria após ser fechada.
- **Comando de investigação:** `systemctl --user status`.
- **Causa raiz:** serviço systemd de usuário configurado para reiniciar o processo.
- **Solução:** parar o serviço antes de testar fechamento manual da GUI.
- **Prevenção:** desabilitar restart automático na sessão de depuração manual.

### ERROR-0009 — Display atual grande demais

- **Data:** histórica não registrada; importado em 2026-08-04
- **Impacto:** Waveshare de 5" parece desproporcional ao teclado BlackBerry Q10 e reduz a aparência comercial.
- **Estado:** Aberto.
- **Direção atual:** avaliar HDMI IPS capacitivo de 4", 720×720.
- **Critérios de saída:** validar dimensões, encaixe, touch, brilho, consumo e compatibilidade Linux.

### ERROR-0010 — Splash simples demais

- **Data:** histórica não registrada; importado em 2026-08-04
- **Impacto:** aparência de protótipo.
- **Estado:** Aberto.
- **Lacunas:** glow, partículas, progresso customizado e fade.
- **Próximo experimento:** QPainter com metas de FPS/CPU no Radxa.

## Template

### ERROR-#### — Título

- **Data:**
- **Categoria / responsável:**
- **Status:**
- **Impacto:**
- **Ambiente e versões:**
- **Sintomas:**
- **Comandos e ações executados:**
- **Hipótese / causa raiz:**
- **Tentativas descartadas:**
- **Solução ou workaround:**
- **Evidência:**
- **Prevenção / lição:**
- **Links relacionados:**
