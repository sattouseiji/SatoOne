---
name: satoone-health-check
description: Auditar integralmente a saúde do SatoOne/Radxa por SSH e produzir um relatório HTML visual, autocontido e acionável. Use quando o usuário pedir health check, diagnóstico geral, inventário operacional, verificação de temperatura, recursos, armazenamento, rede, periféricos, serviços, logs, segurança ou um dashboard de saúde do SatoOne.
---

# Health check do SatoOne

Usar `../satone-connect/SKILL.md` para conexão, identidade e elevação. Nunca salvar senha em scripts, relatórios ou comandos documentados.

## Fluxo

1. Confirmar `whoami`, `hostnamectl --static` e horário.
2. Executar `scripts/collect-health.sh` no host. Começar sem root e elevar apenas para logs ou dados protegidos.
3. Não corrigir, reiniciar, instalar ou remover nada durante a auditoria.
4. Separar resultado em `Saudável`, `Atenção`, `Crítico` e `Não verificável`.
5. Gerar HTML autocontido, responsivo, sem CDN, fontes remotas ou segredos.
6. Incluir horário, escopo, métricas, evidências, limitações e recomendações priorizadas.
7. Tratar score como heurística explicável, nunca como medição física.
8. Salvar relatórios em `reports/` com data no nome e preservar relatórios anteriores.

## Execução sugerida no PowerShell

```powershell
$key = Join-Path $env:USERPROFILE '.ssh\id_ed25519_satoone'
Get-Content -Raw skills\satoone-health-check\scripts\collect-health.sh |
  ssh -i $key satoone@192.168.15.12 'bash -s'
```

Para dados protegidos, abrir sessão como `satoone` e usar `sudo -i` ou `sudo su -` antes de executar a coleta. Nunca conectar diretamente como root.

## Cobertura mínima

- Identidade, SO, kernel, uptime e sincronização de horário.
- CPU, frequência/governador, carga, memória, swap e processos.
- Discos, partições, espaço, inodes e saúde disponível da eMMC.
- Temperaturas, cooling devices e indícios de throttling.
- Estado do systemd, unidades com falha e logs do boot atual.
- Wi-Fi, IP, rota, DNS, gateway, internet e portas em escuta.
- USB, HDMI/DRM, touchscreen, teclado e áudio.
- Power supplies expostas pelo kernel e limitações de telemetria.
- Atualizações, sessões, SSH e firewall.

## Guardrails

- Redigir MACs, chaves, tokens, senhas e dados pessoais desnecessários.
- Não afirmar saúde de bateria quando o UPS não expõe telemetria ao Linux.
- Não interpretar ausência de log como ausência de erro sem confirmar permissões.
- Destacar temperatura sustentada alta, filesystem acima de 85%, swap sob pressão, perda de pacotes, serviços falhos e reinicializações inesperadas.
- Recomendar correções; só aplicá-las quando o usuário pedir explicitamente.

