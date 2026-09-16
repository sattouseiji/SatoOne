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
- Nunca apresentar meta, estimativa, anúncio de fornecedor ou componente candidato como especificação validada.
- Nunca conectar uma Li‑Po 1S diretamente ao barramento de 5 V; usar proteção, power-path e conversão regulada adequados.
- Nunca comprimir, perfurar, colar permanentemente ou montar a bateria sem folga, isolamento e alívio mecânico.
- Nunca publicar no site informações de rede interna, credenciais, postura detalhada de segurança ou evidência operacional sensível.
- Nunca tratar o repositório público como autorização de cópia, fabricação ou comercialização; respeitar a licença proprietária atual e o histórico de licenças anteriores.
