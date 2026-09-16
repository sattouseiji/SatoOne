# Engineering Bible — SatoOne

Este é o índice normativo da engenharia do SatoOne. Antes de propor, implementar ou diagnosticar qualquer mudança, consulte este arquivo, `PRD.md`, `Constraints.md` e a especificação da disciplina relevante.

## Fonte da verdade

| Tema | Fonte primária |
| --- | --- |
| Produto e visão | `PRD.md`, `Vision.md` |
| Regras | `Constraints.md` |
| Especificações de disciplina | `specifications/` |
| Arquitetura e API | `docs/architecture/`, `docs/api/` |
| Inventário | `specifications/hardware/BOM.md` |
| Conhecimento, incidentes e sucessos | `knowledge/` |
| Histórico canônico de erros | `Engineering_Error_History.md` |
| Histórico canônico de acertos | `Engineering_Success_History.md` |
| Decisões canônicas | `Engineering_Decisions.md` |
| Linha do tempo canônica | `Engineering_Timeline.md` |
| Histórico de mudanças | `CHANGELOG.md` |
| Itens futuros | `Future.md` |

## Filosofia e qualidade

Projetar para operação local, falha segura, manutenção, reparo e evolução. Validar no dispositivo quando uma conclusão depender do hardware. Distinguir claramente entre fato confirmado, hipótese e planejamento.

## Processo obrigatório

1. Ler as fontes acima e localizar experiências anteriores em `knowledge/`.
2. Registrar decisão com motivo, alternativas, decisão e melhoria futura.
3. Atualizar a especificação e inventário afetados.
4. Registrar teste, resultado e limitações de reprodução.
5. Adicionar uma entrada no changelog para mudanças relevantes.

## Convenções

- Markdown UTF-8; títulos claros; datas em `YYYY-MM-DD`.
- Use IDs: componentes `H###`, decisões `ADR-###`, problemas `BUG-###`, experimentos `EXP-###`.
- Não declarar compatibilidade, autonomia, temperatura, desempenho ou compra como confirmados sem evidência documentada.

## Glossário resumido

- **BOM**: lista de materiais.
- **ADR**: registro de decisão de arquitetura/engenharia.
- **Offline-first**: as funções essenciais não dependem de internet.
- **Repository Pattern**: camada que isola persistência da lógica de domínio.
