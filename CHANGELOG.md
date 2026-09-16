# Changelog

O projeto segue versionamento incremental. Registre decisões, marcos e mudanças que afetem hardware, software, fabricação, segurança ou UX.

## [Unreleased]

### Contato e acompanhamento pré-lançamento — 2026-09-16

- Adicionado contato público por e-mail para interessados, parceiros e potenciais compradores.
- Apresentados acesso antecipado, health checks, notícias e vídeos como programa em preparação até o lançamento.
- Marcados preço e formas de pagamento como informações futuras, sem criar promessa de reserva ou disponibilidade.

### Compras e arquitetura elétrica V1 — 2026-09-16

- Registradas como compradas/em trânsito a Li-Po Rontek/A58 1S 10.000 mAh, o módulo IP5310 e o INA219 R100, com entrega prevista até 2026-09-19.
- Consolidada a arquitetura atual `Li-Po → IP5310 → switch → distribuição existente`, preservando a fiação pós-switch funcional.
- Documentados o caminho HDMI via flat, USB Touch/VBUS, ramos independentes de 5 V, switch no positivo, medições de 4,8 V e colapso por bateria baixa.
- Marcado 1h04 como registro anterior não definitivo; o ensaio final de autonomia V0 permanece pendente.
- Tornadas superseded para a primeira integração as recomendações de charger/boost separados, fusível 7,5 A, XT30, AWG18, MAX17048 e INA226.
- Criada referência de energia com plano ordenado de recebimento, bancada, telemetria, shutdown e CAD.

### Direção técnica da V1 — 2026-09-15

- Registrada inicialmente autonomia de 1h04; em 2026-09-16 esse valor foi marcado como não definitivo, mantendo a meta V1 de duas horas.
- Selecionada para investigação uma Li-Po pouch 1S de 10.000 mAh, com carregador USB-C com power-path, boost regulado em 5 V, proteção, fusível e fiação de alta corrente.
- Planejada telemetria no Debian por fuel gauge e monitor de corrente/potência via I²C.
- Definidas como prioridades da case V1 a redução de espessura, bateria atrás do teclado, dissipação passiva e ventoinha opcional condicionada a testes térmicos.
- Registrados fotos e vídeo reais do protótipo V0 como evidência do estágio funcional.

### Posicionamento comercial e publicação — 2026-09-16

- Reposicionado o SatoOne como produto proprietário em desenvolvimento, com página corporativa, canal de interesse e licença de direitos reservados para as novas versões.
- Reformulado o health check público para apresentar resultados consolidados da V0 sem divulgar rede ou parâmetros internos de segurança.
- Adicionado painel fotográfico com vistas reais do protótipo V0.
- Adicionado vídeo real de demonstração da V0 executando Debian e respondendo à interface touch e ao teclado físico.

### GitHub workflow — 2026-09-15

- Adicionado o skill satoone-github-release com o fluxo seguro de preflight, commit, autenticação SSH, push e validação no GitHub.
- Documentados caminhos das ferramentas, repositório remoto, branch principal e chave SSH dedicada sem armazenar credenciais.
- Adicionado script PowerShell de preflight somente de leitura para detectar alterações, arquivos grandes e possível material sensível.

### V0 definitiva — 2026-09-15

- Confirmada a case V0 fisicamente funcional como versão definitiva do protótipo.
- Preservados e renomeados os STLs de Front, Back e Clamps com nomes estáveis para publicação.
- Adicionada documentação de rastreabilidade dos nomes originais e da ausência atual do CAD paramétrico.
- Preparada a estrutura inicial de publicação, posteriormente reposicionada como proprietária em 2026-09-16.
- Adicionados health check completo, relatório HTML e skill reutilizável de diagnóstico.

### V1 — 2026-08-15

- Back V0 impresso e validado; criada `SatoOne_Case_V1` sem sobrescrever V0.
- Corrigidos piloto da Radxa, altura dos postes da UPS e espaçamento/furação do hub conforme teste físico.

### V1.1 — 2026-08-15

- Corrigidas as ranhuras de ventilação da Back para atravessarem completamente o piso.
- Preservados todos os demais parâmetros funcionais da V1.

### V1.2 — 2026-08-15

- Adicionado requisito de acesso externo ao microSD da Radxa.
- Criado recorte lateral paramétrico provisório em `SatoOne_Case_V1.2`.
- Posição final do slot marcada como `NEEDS_PHYSICAL_VALIDATION`.
- Criado `external_access_requirements.md` e checklist físico da V1.2.
- Status do acesso microSD mantido como `OPEN_IN_V1_2_UNTIL_PHYSICAL_VALIDATION` até teste com a Radxa instalada.

### Updated — 2026-08-15

- Estado físico atualizado: Bambu Lab A1 Mini recebida e incorporada ao laboratório.
- Display confirmado como Waveshare 5DP-CAPLCD-H; envelope físico registrado.
- Envelopes e padrões medidos da Radxa, teclado, UPS e hub registrados no BOM/knowledge/CAD V0.
- Estratégia V0→V4 e calibration coupons adicionadas à documentação mecânica e de fabricação.
- Pendências preservadas: furos do teclado precisam revalidação; desenho oficial e coordenadas do display H ainda precisam validação; dados elétricos do UPS/baterias permanecem pendentes.

### Added

- Base de conhecimento, especificações e documentação de engenharia inicial.
- Histórico de erros de engenharia v1.0, com oito correções registradas e duas pendências abertas.
- Histórico de acertos de engenharia v1.0, com 16 marcos reutilizáveis registrados.
- Registros canônicos elaborados: erros, acertos, decisões e linha do tempo.
- Compra registrada: Bambu Lab A1 Mini e filamentos PLA branco, preto e cinza; entrega prevista para 2026-08-05.
- Compra registrada: BMCU 370C AMS Lite para Bambu Lab A1/A1 Mini, com sensor Hall e bufferização bidirecional, para testes coloridos futuros; entrega pendente e funcionamento a confirmar.

## [0.4] — Planejado

- Battery Monitor.

## [0.3] — Planejado

- Dashboard.

## [0.2] — Planejado

- Particle Engine.

## [0.1] — Planejado

- Primeira Splash.
