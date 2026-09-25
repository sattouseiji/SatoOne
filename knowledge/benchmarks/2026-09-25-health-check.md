# Health check — 2026-09-25

**Janela:** 14:12–14:14, America/Sao_Paulo. Coleta pontual, sem ensaio de carga sustentada e sem correções no equipamento.

- **Saudável na amostra:** memória com 3,2 GiB disponíveis, swap sem uso, raiz em eMMC com 29% de ocupação e conectividade/DNS funcionando.
- **Crítico para o aplicativo:** falha recorrente de inicialização; correção e validação funcional pendentes.
- **Atenção:** SoC entre 73,3 e 75,6 °C, além de pendências de serviços e manutenção.
- **Não verificável por SSH:** carga da bateria, autonomia e estabilidade elétrica. Tela, touch, teclado e áudio foram enumerados, sem teste físico interativo.
- A raiz estava em microSD em 17/09; agora está na eMMC. As condições de execução diferem e as temperaturas não são diretamente comparáveis.

A validação da LiPo 10 Ah com UPS antigo a ~4,92 V foi relatada separadamente pelo responsável; ver [baseline físico](../hardware/2026-09-25-power-baseline.md). Ela não comprova autonomia ou telemetria.

Detalhes de acesso, logs e diagnóstico operacional permanecem no relatório interno excluído do versionamento. [Resumo público](../../reports/satoone-health-2026-09-25.html).
