# Problemas conhecidos

O histórico completo — incluindo itens resolvidos, comandos e lições — está em [engineering_error_history.md](engineering_error_history.md). Esta lista contém apenas questões ainda abertas.

| ID | Problema | Status | Próximo passo |
| --- | --- | --- | --- |
| ERROR-0009 | Display Waveshare de 5" parece desproporcional ao teclado Q10 | Aberto | Avaliar e testar HDMI IPS de 4", 720×720 |
| ERROR-0010 | Splash ainda não possui acabamento visual premium | Aberto | Experimentar QPainter, glow, partículas e fade com metas de desempenho |
| MECH-001 | Padrão de furos do teclado inconsistente | Aberto / NEEDS_REVALIDATION | Medir novamente antes do CAD definitivo |
| MECH-002 | Coordenadas oficiais dos furos do display H não validadas | Aberto | Obter desenho mecânico H e confrontar com medição física |
| ELEC-001 | Power dedicado da tela + VBUS do USB Touch podem gerar backfeed | PENDING VALIDATION | Confirmar documentação e medir antes de manter as duas fontes |
| ELEC-002 | PCM/BMS e polaridade exatos da Li-Po em trânsito não confirmados | PENDING VALIDATION | Inspecionar pack, A58 e tensão no recebimento |
| ELEC-003 | Pinout, corrente e power-path reais do IP5310 não confirmados | PENDING VALIDATION | Identificar módulo e executar testes sem carga/carga progressiva |
| ELEC-004 | Posição e limite real do INA219 R100 indefinidos | PENDING DESIGN DECISION | Comparar medição antes/depois do boost e validar dissipação/queda |
| ELEC-005 | Autonomia definitiva e shutdown por bateria baixa ausentes | Aberto | Concluir ensaio, validar telemetria e implementar desligamento limpo |
