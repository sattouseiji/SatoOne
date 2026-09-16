# Engineering Timeline — SatoOne

**Versão:** 1.2
**Status:** Linha do tempo canônica  
**Última atualização:** 2026-09-16

## Regra de data

O material histórico importado não contém datas originais. Por integridade, estes eventos são sequenciados logicamente, não datados artificialmente. À medida que logs, commits ou fotos forem recuperados, substituir “data histórica não registrada” pela data verificável e adicionar a fonte.

## Linha do tempo

| Ordem | Data | Evento | Resultado / referência |
| --- | --- | --- | --- |
| 01 | Histórica não registrada | Filosofia de produto definida | Qualidade comercial, modularidade, reparabilidade e Linux embarcado (`SUCCESS-0016`) |
| 02 | Histórica não registrada | Plataforma e SO selecionados | Radxa Zero 3W; Debian Bullseye/XFCE (`SUCCESS-0002`, `0003`) |
| 03 | Histórica não registrada | Arquitetura definida | MVC, Python, PySide6 e modularidade (`SUCCESS-0001`) |
| 04 | Histórica não registrada | Virtualenv padronizado | `.venv` do projeto (`SUCCESS-0004`, `ERROR-0004`) |
| 05 | Histórica não registrada | Falha de plugin Qt investigada | `ldd`; instalação de `libxcb-cursor0` (`SUCCESS-0005`, `ERROR-0003`) |
| 06 | Histórica não registrada | Autostart implementado | `.desktop` + `start_satoone.sh` (`SUCCESS-0006`, `ERROR-0005`) |
| 07 | Histórica não registrada | Primeira splash criada | Logo, status, progresso e mensagens (`SUCCESS-0007`) |
| 08 | Histórica não registrada | Timer da splash validado | 100 ticks; lacuna era visual, não temporal (`SUCCESS-0008`, `ERROR-0006`) |
| 09 | Histórica não registrada | Display Waveshare validado | HDMI e touch USB HID no Linux (`SUCCESS-0009`) |
| 10 | Histórica não registrada | Direção de display futuro aprovada | Avaliar HDMI IPS 4", 720×720 (`SUCCESS-0010`, `ERROR-0009`) |
| 11 | Histórica não registrada | Teclado e estratégia mecânica definidos | Q10; gabinete modular/reparável (`SUCCESS-0011`, `0013`) |
| 12 | Histórica não registrada | Impressora 3D selecionada | Bambu Lab A1 Mini (`SUCCESS-0012`) |
| 13 | Histórica não registrada | SSH e systemd compreendidos | Socket activation e journal com privilégios (`ERROR-0001`, `0002`) |
| 14 | Histórica não registrada | Execução modular e debug de serviços ajustados | Import path e restart do systemd (`ERROR-0007`, `0008`) |
| 15 | 2026-08-04 | Estratégia documental e skills materializadas | Engineering Bible, specifications, knowledge e skills (`SUCCESS-0014`, `0015`) |
| 16 | 2026-08-04 | Históricos de erros e acertos importados | 10 erros e 16 sucessos organizados |
| 17 | 2026-08-04 | Registros canônicos elaborados | Este conjunto de quatro arquivos criado |
| 18 | 2026-08-04 | Impressora e filamentos comprados | Bambu Lab A1 Mini; filamentos branco, preto e cinza; entrega prevista para 2026-08-05 |
| 19 | 2026-08-04 | BMCU 370C AMS Lite comprado para testes de cor | Para Bambu Lab A1/A1 Mini; sensor Hall e bufferização bidirecional informados pelo anúncio; entrega pendente |
| 20 | 2026-09-15 | Case V0 definitiva e protótipo operacional registrados | STLs preservados; fotos e vídeo reais; Radxa, display, touch e teclado em funcionamento |
| 21 | 2026-09-15 | Health check integral executado | Recursos com folga; SoC 70,6 °C e pico de 77,5 °C; relatório consolidado |
| 22 | 2026-09-15 | Autonomia V0 registrada | Duração física informada de 1h04; meta V1 definida em ≥2 h |
| 23 | 2026-09-15 | Arquitetura de energia V1 definida | Li‑Po 1S 10.000 mAh, power-path, boost 5 V, proteção, fusível e telemetria I²C planejados |
| 24 | 2026-09-15 | Direção mecânica/térmica V1 definida | Bateria atrás do teclado, case mais fina, cooling passivo e fan opcional |
| 25 | 2026-09-16 | Estratégia comercial consolidada e publicada | Site corporativo, licença proprietária atual, Discussions, health check público, fotos e vídeo |

## Próximos marcos planejados

1. Confirmar especificações e adquirir componentes da cadeia de energia V1.
2. Validar power-path, boost, proteção e sensores em bancada.
3. Integrar telemetria I²C ao Debian e ao dashboard.
4. Criar a fonte CAD da case V1 e testar coupons.
5. Montar e executar os critérios de aceitação da V1.

## Template de evento

| Ordem | Data (`YYYY-MM-DD`) | Evento | Evidência / links | Resultado | Próximo passo |
| --- | --- | --- | --- | --- | --- |
