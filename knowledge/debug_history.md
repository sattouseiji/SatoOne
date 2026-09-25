# Histórico cronológico de depuração

| Data | Problema | Comandos / ações | Resultado | Conclusão |
| --- | --- | --- | --- | --- |
| 2026-08-04 | Histórico inicial importado | Criação da base de conhecimento | Itens anteriores registrados como não validados | Não inferir causa ou solução sem logs do dispositivo |
| 2026-08-04 | Importação de Error History v1.0 | Organização de 10 registros do anexo | 8 resolvidos; 2 abertos; comandos preservados | Consultar `knowledge/bugs/engineering_error_history.md` antes de depurar SSH, Qt, virtualenv, autostart ou splash |

## Auditorias recentes

### 2026-09-25 — Health check e baseline elétrico

- Raiz em eMMC, memória e rede disponíveis; aplicativo em falha recorrente de inicialização e atenção térmica.
- Coleta administrativa concluída; detalhes operacionais restritos ao relatório interno. Nenhuma correção aplicada.
- [Resumo público](benchmarks/2026-09-25-health-check.md) e [validação física relatada da alimentação](hardware/2026-09-25-power-baseline.md).

### 2026-09-17 — Health check operacional

- Coleta de recursos, armazenamento, sensores e periféricos, complementada por verificações direcionadas somente de leitura.
- Raiz em microSD confirmada; telemetria útil de bateria ausente; ambiente de aplicação diverge do caminho documentado.
- Pendências operacionais e limitações de acesso registradas no relatório interno excluído do Git; não interpretar ausência de logs administrativos como ausência de erros.
- Medições e método: [registro do health check](benchmarks/2026-09-17-health-check.md). Nenhuma correção ou reinicialização aplicada.

## Template de nova entrada

### YYYY-MM-DD — Título

- Problema:
- Ambiente:
- Comandos executados:
- Resultado:
- Conclusão / próximo passo:
