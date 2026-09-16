# CAD

## Direção atual — V1 comercial, 2026-09-15

A próxima case deve remover o volume do UPS/18650 e posicionar a Li‑Po pouch atrás do teclado. A meta anterior de 25–28 mm fica **SUPERSEDED** até medir Li-Po, IP5310 e INA219 após o recebimento. A dissipação será passiva primeiro, com reserva para fan de 30 mm apenas se testes sustentados exigirem. Ainda não existe CAD V1 comercial validado.

Na V0 funcional, Radxa e hub foram invertidos, o hub foi aproximado da parede, a ventilação acompanhou a Radxa e o Back nominal caiu de 40 para 34 mm. Preservar as versões anteriores e não confundir essa profundidade nominal com o envelope externo de aproximadamente 44 mm registrado separadamente.

A V0 definitiva preservada em `SatoOne_Case_V0/` é a baseline física. Como a fonte paramétrica correspondente não está presente no repositório atual, uma nova fonte deve ser criada para a V1 sem sobrescrever os STLs V0.

As referências históricas abaixo a V1/V1.1/V1.2 descrevem iterações mecânicas anteriores e não equivalem à atual V1 comercial.

V0 foi impressa e usada para validação física. V1 está em `SatoOne_Case_V1` e não sobrescreve `SatoOne_Case_V0`; display e teclado continuam sem furação definitiva.

V1.1 está em `SatoOne_Case_V1.1` e altera somente as ranhuras de ventilação: corte passante com profundidade `wall + 1.0 mm`, centrado em `wall / 2`. Validar no preview por camada antes de imprimir.

V1.2 está em `SatoOne_Case_V1.2` e adiciona recorte lateral provisório para acesso ao microSD da Radxa. A posição exata permanece `NEEDS_PHYSICAL_VALIDATION`; não tratar a coordenada atual como produção.

V1.2 também define `external_access_requirements.md` e um checklist físico. O acesso microSD permanece aberto até medição/validação com a Radxa instalada.

Registrar envelopes, interferências, tolerâncias, heat inserts, parafusos e revisões do gabinete.
