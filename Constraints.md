# Restrições não negociáveis

Estas regras orientam pessoas e agentes. Uma exceção exige decisão documentada em `knowledge/decisions.md` e atualização desta justificativa.

- Nunca usar Tkinter, PyQt, Electron ou JavaScript para a GUI principal.
- Usar Python e PySide6 para a GUI, mantendo MVC e lógica de negócio fora de widgets.
- Nunca usar SQLite sem Repository Pattern.
- Nunca usar widgets padrão sem tratamento visual; a interface deve seguir o sistema visual do SatoOne.
- Nunca introduzir cores aleatórias; usar tokens de design definidos em `specifications/ui/`.
- Não criar arquivos com mais de 500 linhas, classes com mais de 400 linhas ou métodos com mais de 40 linhas sem justificativa documentada.
- Nunca usar variáveis globais mutáveis como estado de aplicação.
- Nunca bloquear a thread da UI com I/O, IA, rede ou leitura de hardware.
- Nunca assumir que periféricos ou rede estão presentes; expor falhas como estados visíveis.
- Nunca apagar ou reescrever histórico de engenharia: corrigir com uma nova entrada datada.
