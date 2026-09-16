# Correções

Correções importadas e seus contextos estão em [../bugs/engineering_error_history.md](../bugs/engineering_error_history.md):

- `ERROR-0001`: saúde SSH via `ssh.service`, não `ssh.socket`.
- `ERROR-0002`: journal do SSH com privilégios adequados.
- `ERROR-0003`: `libxcb-cursor0` para a dependência Qt ausente.
- `ERROR-0004`: usar o virtualenv localizado no projeto.
- `ERROR-0005`: iniciar GUI por script que ativa `.venv`.
- `ERROR-0007`: executar Python como módulo.
- `ERROR-0008`: parar serviço systemd de usuário antes de testar a GUI.

Para novas correções, explicar por que funcionou, por que tentativas anteriores falharam, versões/ambiente, evidências, rollback e melhoria futura.

Os marcos positivos associados estão em [../successes/engineering_success_history.md](../successes/engineering_success_history.md).
