# BOM — Bill of Materials

Status de compra e valores devem ser atualizados somente com comprovante ou confirmação física.

| ID | Categoria | Fabricante / modelo | Especificação conhecida | Comprado | Fornecedor | Preço | Qtd. | Link | Observações |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| H001 | SBC | Radxa Zero 3W | 4 GB RAM, 32 GB eMMC; envelope medido 65.00 × 30.00 × 11.67 mm | Confirmado fisicamente — 2026-08-15 | A registrar | A registrar | 1 | A registrar | GPIO permanece instalado; furos Ø2.00, centros 57.37 × 22.00 mm |
| H002 | Display | Waveshare 5DP-CAPLCD-H | 1024×600, touch capacitivo, HDMI; envelope medido 122.76 × 77.28 × 17.38 mm | Confirmado fisicamente — 2026-08-15 | A registrar | A registrar | 1 | A registrar | Usar desenho mecânico oficial da variante H; não usar B/G |
| H003 | Display futuro | HDMI IPS 4" | 720×720 | Planejado | A definir | A definir | 1 | A definir | Migração futura |
| H004 | Teclado | BlackBerry Q10 + BBQ20KBD/Qwiic Stemma QT | PCB medida 77.89 × 53.39 × 7.11 mm; teclado 68.32 × 42.43 mm | Confirmado fisicamente — 2026-08-15 | A registrar | A registrar | 1 | A registrar | Padrão de furos NEEDS_REVALIDATION |
| H005 | UPS V0 | Módulo UPS para 2×18650 | Envelope medido 89.78 × 42.10 × 30.22 mm; USB-C lateral incluído | Confirmado fisicamente — legado V0 | A definir | A definir | 1 | A definir | Não é direção V1; modelo/ficha elétrica ainda pendentes |
| H006 | Bateria V0 | 2× Samsung 18650 | Células disponíveis fisicamente; especificação elétrica/relação de segurança pendentes | Confirmado fisicamente — legado V0 | A registrar | A registrar | 2 | A registrar | Não é direção V1; não assumir química/capacidade sem validar marcação e UPS |
| H007 | Fabricação | Bambu Lab A1 Mini | Impressora 3D; volume oficial a considerar no CAD | Recebida — 2026-08-15 | A registrar | A registrar | 1 | A registrar | PLA inicial; PETG/TPU/ASA futuros conforme validação |
| H008 | Filamento | Branco Lite | Com carretel; fabricante e especificação a confirmar no recebimento | Comprado — entrega prevista em 2026-08-05 | A registrar | A registrar | 1 | A registrar | Usar o carretel para aproveitar filamentos sem carretel |
| H009 | Filamento | Preto | Sem carretel; fabricante e especificação a confirmar no recebimento | Comprado — entrega prevista em 2026-08-05 | A registrar | A registrar | 1 | A registrar | Requer carretel reutilizável compatível |
| H010 | Filamento | Cinza | Com carretel; fabricante e especificação a confirmar no recebimento | Comprado — entrega prevista em 2026-08-05 | A registrar | A registrar | 1 | A registrar | Confirmar tipo exato de filamento no recebimento |
| H011 | Hub USB | Hub USB-C interno | Envelope medido 57.03 × 29.98 × 13.90 mm; furos Ø1.50, centros 43.35 × 10.61 mm | Confirmado fisicamente — 2026-08-15 | A definir | A definir | 1 | A definir | Validar energia, fixação e espaço |
| H012 | Áudio | A definir | Alto-falantes/amplificador | Planejado | A definir | A definir | A definir | A definir | Definir após envelope mecânico |
| H013 | Térmico | A definir | Dissipador/thermal pads | Planejado | A definir | A definir | A definir | A definir | Validar temperatura |
| H014 | Fixação | A definir | Parafusos e heat inserts | Planejado | A definir | A definir | A definir | A definir | Dimensionar após CAD |
| H015 | Cabos | A definir | USB/HDMI/energia internos | Planejado | A definir | A definir | A definir | A definir | Medir rotas no CAD |
| H016 | Ferramentas | A definir | Ferramentas de montagem | Planejado | A definir | A definir | A definir | A definir | Manter inventário |
| H017 | Impressão 3D / cores | BMCU 370C AMS Lite para Bambu Lab A1/A1 Mini | Sensor Hall de reabastecimento automático e bufferização bidirecional | Comprado — entrega sem data confirmada | AliExpress | A registrar | 1 | A registrar | Para testes coloridos; confirmar funcionamento, compatibilidade física/firmware e acessórios no recebimento |
| H018 | Bateria V1 candidata | Rontek Li‑Po 1S 10.000 mAh | Catálogo: 3,7 V; aprox. 12 × 59 × 110 mm; conector A58 | Não comprada — avaliada em 2026-09-15 | A confirmar | A confirmar | 1 | A confirmar | Confirmar etiqueta 3,6/3,7 V, PCM, descarga ≥8 A, polaridade e capacidade; rejeitar se realmente 36 V |
| H019 | Carregador V1 | USB-C Li‑Po 1S com power-path | Carga 2–3 A; caminho do sistema dimensionado para a carga real | Planejado — 2026-09-15 | A selecionar | A definir | 1 | A definir | Não usar TP4056 simples como solução completa |
| H020 | Conversor V1 | Boost síncrono regulado | Entrada 3,0–4,2 V; 5,0 V; ≥3 A contínuos, 5 A recomendado; `EN` | Planejado — 2026-09-15 | A selecionar | A definir | 1 | A definir | Validar com carga eletrônica e térmica antes da Radxa |
| H021 | Proteção V1 | Fusível e porta-fusível | 7,5 A; instalar próximo à bateria | Planejado — 2026-09-15 | A selecionar | A definir | 1 | A definir | Coordenar com PCM/BMS e corrente real |
| H022 | Conector V1 | XT30 | Par compacto de alta corrente | Planejado — 2026-09-15 | A selecionar | A definir | 1 par | A definir | Confirmar polaridade e alívio mecânico |
| H023 | Fiação V1 | Fio silicone AWG18 | Vermelho/preto para energia principal | Planejado — 2026-09-15 | A selecionar | A definir | A medir | A definir | Evitar Dupont no caminho de potência |
| H024 | Fuel gauge V1 candidato | MAX17048 ou equivalente | 1S, I²C, estado de carga e tensão | Não comprado — avaliado em 2026-09-15 | A selecionar | A definir | 1 | A definir | Confirmar célula, kernel e device tree |
| H025 | Monitor de potência V1 candidato | INA226 + shunt externo | I²C; shunt/caminho dimensionados para ≥8 A | Não comprado — avaliado em 2026-09-15 | A selecionar | A definir | 1 | A definir | INA219 comum somente com corrente e dissipação comprovadas |
| H026 | Cooling ativo opcional | Ventoinha 30 mm | Tensão, corrente, ruído e PWM a definir | Condicional — 2026-09-15 | A selecionar se necessário | A definir | 0–1 | A definir | Comprar apenas se teste térmico da V1 exigir |
