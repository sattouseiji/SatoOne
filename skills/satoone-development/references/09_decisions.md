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

Substituir na V1 o UPS/18650 por cadeia 1S dedicada e mensurável; colocar a pouch atrás do teclado e reduzir a espessura. Motivo: autonomia V0 de 1h04, volume do conjunto atual e ausência de telemetria no Debian. Cooling ativo permanece opcional e condicionado a ensaios.
