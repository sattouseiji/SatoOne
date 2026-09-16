# Mechanical

## V0 definitiva

A V0 física está funcional e seus três STLs permanecem preservados em `SatoOne_Case_V0/`. O envelope externo da traseira é aproximadamente 130 × 155 × 44 mm. O CAD paramétrico correspondente não está presente; não tratar STL como fonte editável.

## V1 comercial — decisão de 2026-09-15

- colocar a bateria pouch atrás do teclado;
- remover o volume do UPS e das duas 18650;
- buscar 25–28 mm na região da bateria, como meta preliminar;
- manter bateria, eletrônica, display e teclado removíveis;
- não comprimir nem colar permanentemente a Li‑Po;
- preservar acesso a portas e alívio de cabos;
- melhorar caminho térmico e ventilação passiva;
- reservar fan de 30 mm, instalando-o somente se ensaios exigirem.

Criar nova fonte paramétrica para a V1 sem sobrescrever a V0. Produzir coupons para bateria, conectores, standoffs, insertos, ventilação e cabos antes da impressão completa. Consultar `docs/cad/V1_ENCLOSURE_PLAN.md`.

## Fabricação

Projetar dentro do volume da Bambu Lab A1 Mini. PLA serve para protótipos; escolher material de produção somente após térmica, impacto, acabamento e processo de montagem serem validados.
