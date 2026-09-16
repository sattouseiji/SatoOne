# Decisões de engenharia

## ADR-001 — Plataforma principal

- **Data:** 2026-08-04
- **Decisão:** Radxa Zero 3W com 4 GB RAM e 32 GB eMMC; Debian Bullseye XFCE; Python/PySide6.
- **Motivo:** plataforma Linux embarcada, compatível com a direção offline-first e UI nativa.
- **Alternativas consideradas:** a registrar quando comparadas com evidência.
- **Melhoria futura:** validar imagem, drivers, desempenho térmico e orçamento de RAM no dispositivo.

## ADR-002 — Displays e fabricação

- **Decisão:** Waveshare HDMI 5" atual; avaliar migração a IPS HDMI 4" 720×720. Bambu Lab A1 Mini para protótipos, PLA na V1 e PETG futuro.
- **Motivo:** compatibilidade HDMI/USB HID e uma rota de prototipagem acessível.
- **Melhoria futura:** registrar medições de toque, brilho, temperatura e encaixe mecânico.

## ADR-003 — Inicialização da aplicação

- **Data:** 2026-08-04
- **Decisão:** iniciar o app instalado por um script que ativa o virtualenv; usar execução modular Python em desenvolvimento.
- **Motivo:** uma entrada `.desktop` que executava Python diretamente não ativava `.venv`; executar `python app/splash.py` também removia a raiz do projeto do contexto de importação.
- **Alternativas consideradas:** chamar Python diretamente pela entrada desktop ou executar arquivo interno diretamente; ambas produziram falhas registradas em `ERROR-0005` e `ERROR-0007`.
- **Evidência:** histórico de erros v1.0 importado.
- **Melhoria futura:** documentar os caminhos de instalação reais e fornecer um launcher testado.

## ADR-004 — Enclosure V0 paramétrica e prototipagem iterativa

- **Data:** 2026-08-15
- **Status:** Aceita para protótipo
- **Decisão:** usar `SatoOne_Case_V0/SatoOne_Case_V0.scad` como fonte única de dimensões e iterar V0→V4, começando por coupons de encaixe.
- **Motivo/evidência:** Bambu Lab A1 Mini recebida; envelopes de display, teclado, Radxa, UPS e hub medidos com paquímetro.
- **Limites:** teclado precisa revalidar furos; display precisa desenho oficial da variante H; UPS domina a espessura.

## ADR-005 — Produto proprietário e acompanhamento público

- **Data da decisão:** 2026-09-15.
- **Publicação consolidada:** 2026-09-16.
- **Decisão:** desenvolver o SatoOne como produto vendável proprietário; usar site, health check e Discussions para mostrar evolução e medir interesse.
- **Motivo:** construir valor comercial e preservar a engenharia futura.
- **Limite:** versões antigas publicadas sob MIT mantêm seus termos originais.

## ADR-006 — Energia e telemetria da V1

- **Data:** 2026-09-15.
- **Decisão:** Li‑Po 1S 10.000 mAh, proteção/fusível, carregador power-path, boost 5 V, fuel gauge e monitor de potência I²C.
- **Motivo:** autonomia V0 de 1h04, volume do UPS e ausência de telemetria no Debian.
- **Estado:** em validação; candidatos não comprados.

## ADR-007 — Case e cooling da V1 comercial

- **Data:** 2026-09-15.
- **Decisão:** bateria atrás do teclado, redução da espessura, dissipação passiva e fan somente se necessário.
- **Metas:** 25–28 mm na região da bateria; SoC sustentado ≤75 °C sem throttling; autonomia ≥2 h.
- **Estado:** metas ainda não validadas fisicamente.
