---
name: satoone-github-release
description: Preparar, revisar, versionar e publicar o projeto SatoOne no GitHub com Git, GitHub CLI e SSH. Use para criar commits, conferir alterações, procurar segredos e arquivos grandes, configurar ou validar o remoto, criar releases, fazer push, verificar sincronização ou reconstruir a configuração Git/GitHub deste computador.
---

# Publicar o SatoOne no GitHub

Ler `references/environment.md` para os caminhos e identificadores atuais. Usar `../satoone-development/SKILL.md` quando a mudança envolver documentação técnica, hardware ou CAD.

## Fluxo obrigatório

1. Executar `scripts/preflight.ps1` na raiz do projeto.
2. Ler `git status` e `git diff` antes de adicionar arquivos.
3. Preservar alterações do usuário e versões CAD anteriores.
4. Atualizar documentação e `CHANGELOG.md` quando a mudança for relevante.
5. Verificar segredos, chaves privadas, arquivos temporários e arquivos maiores que 50 MB.
6. Adicionar somente arquivos intencionais.
7. Executar `git diff --cached --check` e revisar `git diff --cached --stat`.
8. Criar commit com mensagem curta, específica e verdadeira.
9. Fazer push somente quando o usuário tiver pedido publicação ou push.
10. Validar `git status --branch --short`, commit local/remoto e metadados do repositório.

## Segurança

- Nunca salvar, imprimir ou versionar tokens, senhas ou chaves privadas.
- Usar a chave SSH dedicada indicada na referência; nunca copiar seu conteúdo privado.
- Não usar `git reset --hard`, force push, rebase destrutivo ou apagar histórico sem autorização explícita.
- Não sobrescrever STLs ou fontes CAD definitivas.
- Se o repositório remoto contiver trabalho ausente localmente, parar e reconciliar antes do push.
- Tratar repositório público como informação publicada permanentemente.

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

