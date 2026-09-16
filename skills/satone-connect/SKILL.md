---
name: satone-connect
description: Connect to the Satone Debian host on Radxa at 192.168.15.12 over SSH. Use for inspecting, administering, deploying to, or troubleshooting Satone. Always log in as satoone first, then elevate privileges with sudo; never initiate SSH directly as root.
---

# Conectar ao Satone

Conecte-se ao host Debian/Radxa `192.168.15.12` usando a conta `satoone`. A conta tem permissão de elevação para root.

## Fluxo obrigatório

1. Abra a sessão SSH como `satoone`:

   ```sh
   ssh -i ~/.ssh/id_ed25519_satoone satoone@192.168.15.12
   ```

2. Depois de entrar, obtenha uma sessão root somente se a tarefa exigir privilégios administrativos:

   ```sh
   sudo -i
   ```

   Alternativamente, também é permitido usar:

   ```sh
   sudo su -
   ```

3. Confirme o contexto antes de executar mudanças relevantes:

   ```sh
   whoami
   hostnamectl --static
   ```

## Regras de segurança

- Nunca conecte por SSH diretamente como `root`.
- Não armazene senhas, chaves privadas ou tokens nesta skill, no projeto ou em comandos exibidos.
- Use a chave SSH dedicada `~/.ssh/id_ed25519_satoone`, cuja chave pública já está autorizada no host.
- Solicite a senha de modo interativo apenas se a autenticação por chave deixar de funcionar.
- Execute comandos sem root quando possível; use `sudo -i` ou `sudo su -` somente para ações que realmente precisem dele.
- Antes de comandos destrutivos, apresente o impacto e peça confirmação ao usuário.
