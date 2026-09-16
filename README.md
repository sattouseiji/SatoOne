# SatoOne

SatoOne é um computador portátil e open-source baseado na Radxa Zero 3W, com Linux Debian, tela touch Waveshare de 5", teclado físico BlackBerry/BBQ20KBD e alimentação por bateria/UPS.

[**Site oficial**](https://sattouseiji.github.io/SatoOne/) · [**Health check completo**](https://sattouseiji.github.io/SatoOne/reports/satoone-health-2026-09-15.html) · [Documentação](docs/README.md)

## Estado do projeto

A V0 física está montada e funcional. Foram validados no equipamento:

- Radxa Zero 3W com Debian;
- display HDMI em 1024 × 600;
- touchscreen USB;
- teclado BBQ20KBD por hub USB;
- Wi-Fi e acesso SSH;
- alimentação portátil por UPS;
- gabinete V0 definitivo impresso em 3D.

O hardware funciona, mas ainda há melhorias planejadas para refrigeração, telemetria de bateria, gerenciamento de energia e acabamento da próxima versão.

## Estrutura

- `SatoOne_Case_V0/`: arquivos STL definitivos da case V0;
- `skills/`: procedimentos especializados para desenvolvimento, conexão e health check;
- `specifications/`: especificações por domínio;
- `knowledge/`: decisões, problemas, soluções e histórico técnico;
- `docs/`: documentação geral;
- `reports/`: relatórios técnicos gerados;
- `ENGINEERING_BIBLE.md`: princípios normativos do projeto;
- `PRD.md`, `Vision.md` e `Constraints.md`: produto, visão e restrições.

## Hardware principal

- Radxa Zero 3W;
- 4 GB RAM;
- Waveshare 5DP-CAPLCD-H, 5", 1024 × 600;
- Solder Party BBQ20KBD;
- hub USB 2.0;
- UPS com duas células 18650;
- gabinete impresso em 3D.

Consulte [a especificação de hardware](specifications/hardware/README.md) e [a documentação da case V0](SatoOne_Case_V0/README.md) antes de alterar o projeto.

## Health check

O diagnóstico mais recente está disponível como uma [página interativa](https://sattouseiji.github.io/SatoOne/reports/satoone-health-2026-09-15.html), com visão geral, temperatura, utilização de recursos, periféricos, rede, segurança, evidências e ações recomendadas. O processo de coleta pode ser reproduzido pela [skill de health check](skills/satoone-health-check/SKILL.md).

## Segurança

Nenhuma senha, token ou chave privada deve ser versionada. O acesso SSH ao dispositivo usa uma chave privada mantida fora deste repositório.

## Licença

Copyright © 2026 Marcelo Sato.

Este projeto é disponibilizado sob a [Licença MIT](LICENSE).
