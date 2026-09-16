---
name: satoone-github-release
description: Preparar, revisar, versionar e publicar o projeto SatoOne no GitHub com Git, GitHub CLI e SSH. Use para criar commits, conferir alterações, procurar segredos e arquivos grandes, configurar ou validar o remoto, criar releases, fazer push, verificar sincronização ou reconstruir a configuração Git/GitHub deste computador.
---

# Publicar o SatoOne no GitHub

Ler `references/environment.md` para os caminhos e identificadores atuais. Usar `../satoone-development/SKILL.md` quando a mudança envolver documentação técnica, hardware ou CAD.

O repositório público é a presença de um produto proprietário em desenvolvimento. Tratar a página como comunicação corporativa para compradores, parceiros e financiadores, não como chamada aberta a desenvolvimento. Preservar a licença proprietária vigente e considerar repositório privado para ativos internos futuros.

## Fluxo obrigatório

1. Executar `scripts/preflight.ps1` na raiz do projeto.
2. Ler `git status` e `git diff` antes de adicionar arquivos.
3. Preservar alterações do usuário e versões CAD anteriores.
4. Atualizar documentação e `CHANGELOG.md` quando a mudança for relevante.
5. Verificar segredos, chaves privadas, arquivos temporários e arquivos maiores que 50 MB.
6. Sanitizar material público: remover IP, SSID, MAC, portas, postura SSH/firewall, logs brutos e dados pessoais; distinguir fatos, metas e componentes candidatos.
7. Confirmar que fotos, vídeo e links públicos necessários existem e não expõem conteúdo indevido.
8. Adicionar somente arquivos intencionais.
9. Executar `git diff --cached --check` e revisar `git diff --cached --stat`.
10. Criar commit com mensagem curta, específica e verdadeira.
11. Fazer push somente quando o usuário tiver pedido publicação ou push.
12. Validar `git status --branch --short`, commit local/remoto, GitHub Pages, mídia e metadados do repositório.

## Segurança

- Nunca salvar, imprimir ou versionar tokens, senhas ou chaves privadas.
- Usar a chave SSH dedicada indicada na referência; nunca copiar seu conteúdo privado.
- Não usar `git reset --hard`, force push, rebase destrutivo ou apagar histórico sem autorização explícita.
- Não sobrescrever STLs ou fontes CAD definitivas.
- Se o repositório remoto contiver trabalho ausente localmente, parar e reconciliar antes do push.
- Tratar repositório público como informação publicada permanentemente.
- Não publicar CAD, software ou processo proprietário interno sem decisão explícita; a presença histórica de versões abertas não altera automaticamente a licença atual.

## Comandos de referência

No Windows, usar o executável Git conhecido quando `git` ainda não estiver no PATH:

```powershell
$git = 'C:\Program Files\Git\cmd\git.exe'
$repo = 'C:/Users/sato/Desktop/satoOne'
& $git -c "safe.directory=$repo" status --branch --short
```

Para push com a chave dedicada, definir `GIT_SSH_COMMAND` com `IdentitiesOnly=yes`, apontar para `~/.ssh/id_ed25519_github_sattouseiji` e executar `git push`.

Usar o GitHub CLI somente após `gh auth status --hostname github.com` confirmar a conta correta.

## Entrega

Informar arquivos modificados, commit, branch, remoto, resultado do push, URL e qualquer alerta ou arquivo não publicado.
