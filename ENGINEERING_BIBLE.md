# Engineering Bible — SatoOne

Este é o índice normativo da engenharia do SatoOne. Antes de propor, implementar ou diagnosticar qualquer mudança, consulte este arquivo, `PRD.md`, `Constraints.md` e a especificação da disciplina relevante.

## Fonte da verdade

| Tema | Fonte primária |
| --- | --- |
| Produto e visão | `PRD.md`, `Vision.md` |
| Estratégia comercial | `docs/product/README.md` |
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
| Energia V0/V1 | `skills/satoone-development/references/27_power.md`, `specifications/electrical/README.md` |

## Filosofia e qualidade

Projetar para operação local, falha segura, manutenção, reparo e evolução. Validar no dispositivo quando uma conclusão depender do hardware. Distinguir claramente entre fato confirmado, hipótese e planejamento.

O SatoOne é um produto proprietário em desenvolvimento. A documentação pública deve permitir acompanhamento do progresso sem expor credenciais, rede interna, detalhes de hardening ou material que não precise ser público.

## Processo obrigatório

1. Ler as fontes acima e localizar experiências anteriores em `knowledge/`.
2. Registrar decisão com motivo, alternativas, decisão e melhoria futura.
3. Atualizar a especificação e inventário afetados.
4. Registrar teste, resultado e limitações de reprodução.
5. Adicionar uma entrada no changelog para mudanças relevantes.
6. Para mudanças da V1, atualizar o plano de desenvolvimento, a disciplina afetada e os critérios de aceitação.

## Convenções

- Markdown UTF-8; títulos claros; datas em `YYYY-MM-DD`.
- Use IDs: componentes `H###`, decisões `ADR-###`, problemas `BUG-###`, experimentos `EXP-###`.
- Não declarar compatibilidade, autonomia, temperatura, desempenho ou compra como confirmados sem evidência documentada.
- Registrar data da decisão separadamente da data de publicação. A direção técnica V1 atual foi definida em 2026-09-15 e consolidada publicamente em 2026-09-16.
- Usar explicitamente `[PHYSICALLY VALIDATED]`, `[CURRENT DESIGN]`, `[PURCHASED]`, `[IN TRANSIT]`, `[PENDING VALIDATION]` e `[FUTURE/IDEA]`; compra não equivale a validação.
- Quando uma decisão mudar, preservar a anterior como `SUPERSEDED` e apontar para o desenho vigente.

## Glossário resumido

- **BOM**: lista de materiais.
- **ADR**: registro de decisão de arquitetura/engenharia.
- **Offline-first**: as funções essenciais não dependem de internet.
- **Repository Pattern**: camada que isola persistência da lógica de domínio.
