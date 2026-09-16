# Decisões de engenharia

## Display

Atual: Waveshare HDMI 5". Futuro: IPS HDMI 4" 720×720. Motivo: HDMI e USB HID têm boa compatibilidade Linux; o formato futuro melhora as proporções com o teclado Q10.

## Teclado

BlackBerry Q10. Motivo: experiência de digitação física, centralizada e removível.

## Framework e OS

PySide6 e Debian Bullseye XFCE. Motivo: suporte Linux nativo e plataforma estável para aplicativo embarcado em Python.

## Fabricação

Bambu Lab A1 Mini. Motivo: qualidade de impressão adequada ao objetivo comercial; PLA para V1 e materiais técnicos posteriormente.

## Arquitetura

MVC e plugins modulares. Motivo: manutenção, testes, substituição de hardware e evolução sem dependências rígidas.

## Produto e publicação — 2026-09-15/16

Produto proprietário com desenvolvimento público sanitizado. Motivo: apresentar maturidade a compradores, parceiros e financiadores sem abrir ativos internos ou dados operacionais sensíveis.

## Energia, telemetria e case V1 — 2026-09-15

Substituir na V1 o UPS/18650 por Li-Po 1S + IP5310 antes do switch existente; preservar a distribuição pós-switch. Li-Po, IP5310 e INA219 foram comprados em 2026-09-16 e permanecem em trânsito. A posição do INA219 depende de decisão entre medir célula ou barramento de 5 V. Fusível/PPTC é opcional nesta montagem, e a recomendação anterior de fusível 7,5 A + XT30 + AWG18 fica **SUPERSEDED** para o desenho atual. Cooling ativo permanece condicionado a ensaios.
