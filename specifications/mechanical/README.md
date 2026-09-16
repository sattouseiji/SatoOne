# Mechanical

## V0 definitiva

A V0 física está funcional e seus três STLs permanecem preservados em `SatoOne_Case_V0/`. O envelope externo anteriormente registrado é aproximadamente 130 × 155 × 44 mm. A profundidade nominal do Back foi reduzida de 40 para 34 mm na iteração funcional; esses valores descrevem referências diferentes e não devem ser combinados sem nova medição. O CAD paramétrico correspondente não está presente; não tratar STL como fonte editável.

Layout mais recente: Radxa e hub trocaram de posição; hub junto à parede, Radxa na região anterior do hub e ventilação acompanhando a Radxa. Mounting pitch de projeto: Radxa 58 × 23 mm; hub fisicamente validado 52 × 15,25 mm. Postes da Radxa: 10 mm de altura.

## V1 comercial — decisão de 2026-09-15

- colocar a bateria pouch atrás do teclado;
- remover o volume do UPS e das duas 18650;
- reduzir significativamente o Back usando a pouch anunciada com ~11,1 mm e o IP5310 compacto, sem fixar dimensão final antes do recebimento;
- manter bateria, eletrônica, display e teclado removíveis;
- não comprimir nem colar permanentemente a Li‑Po;
- preservar acesso a portas e alívio de cabos;
- melhorar caminho térmico e ventilação passiva;
- reservar fan de 30 mm, instalando-o somente se ensaios exigirem.

Criar nova fonte paramétrica para a V1 sem sobrescrever a V0. Produzir coupons para bateria, conectores, standoffs, insertos, ventilação e cabos antes da impressão completa. Consultar `docs/cad/V1_ENCLOSURE_PLAN.md`.

## Fabricação

Projetar dentro do volume da Bambu Lab A1 Mini. PLA serve para protótipos; escolher material de produção somente após térmica, impacto, acabamento e processo de montagem serem validados.
