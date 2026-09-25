# Health check — 2026-09-17

**Estado:** observação operacional pontual, sem ensaio de carga sustentada.
**Janela:** 15:11:58–15:15:00 UTC (12:11:58–12:15:00 em Brasília).

## Medições observadas no Linux

- Debian 11 arm64; quatro núcleos Cortex-A55; governor ondemand e teto de 1,8 GHz.
- RAM: 3,7 GiB totais, 365 MiB usados, 3,2 GiB disponíveis; swap sem uso. Duas amostras intervalares de vmstat indicaram 98–99% de CPU ociosa.
- SoC: 65,0 °C inicialmente; seis amostras adicionais em 10 segundos registraram 62,8–66,3 °C. GPU: 62,8 °C inicialmente, 61,7–62,2 °C no complemento. Estados de cooling CPU/devfreq em zero no instante consultado; não comprova ausência histórica de throttling.
- Raiz em microSD identificado pelo kernel como SD de 59,5 GiB, com 8,1 GiB usados, 48 GiB livres e utilização de 15%; inodes em 3%. eMMC de 29,1 GiB presente, distinta da mídia da raiz.
- Display ativo em 1024×600 a 60 Hz; hub, touch e teclado reconhecidos. Áudio HDMI enumerado. Bluetooth reconhecido, desligado.
- Conectividade local e externa com 4/4 respostas em cada amostra; DNS funcional. Não houve teste de throughput ou estabilidade prolongada.
- Nenhuma bateria física enumerada pelo UPower. Leituras zero da fonte USB TCPM não medem o barramento real nem o estado de carga do UPS.

## Limites e divergências

O caminho de aplicação documentado não foi encontrado no sistema em execução. Isso não comprova perda do aplicativo: outras mídias e possíveis instalações não foram inspecionadas. Confirmar o ambiente pretendido antes de instalação ou recuperação.

A auditoria encontrou pendências de serviço e manutenção. Detalhes operacionais e evidências permanecem no relatório interno em `reports/raw/satoone-health-2026-09-17-interno.html`, excluído do versionamento. Logs administrativos, configuração efetiva de segurança e histórico de falhas não puderam ser auditados integralmente por falta de autenticação sudo.

As temperaturas não são diretamente comparáveis às de 15/09 sem equivalência de carga, brilho e ambiente. Autonomia, estabilidade elétrica, entrada física, áudio e desempenho sustentado não foram testados. Os componentes V1 continuam com o último estado documental; recebimento e montagem não foram confirmados.

## Procedimento e reprodutibilidade

Coletor da skill de health check mais leituras complementares explícitas em Bash. O transporte inicial apresentou um carriage return ao final; leituras de sensores feitas sob sh também falharam por expansão incompatível. As leituras afetadas foram recuperadas no complemento, concluído com código zero. Nenhuma instalação, correção ou reinicialização foi executada no dispositivo.
