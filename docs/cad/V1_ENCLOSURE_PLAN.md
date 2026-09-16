# Direção mecânica — Case V1 comercial

**Direção definida:** 2026-09-15
**Estado:** meta de projeto, ainda sem CAD V1 validado

## Baseline

A V0 definitiva mede externamente aproximadamente 130 × 155 × 44 mm na traseira. Ela permanece preservada como prova física funcional e não deve ser sobrescrita.

## Objetivos

- remover o volume ocupado pelo UPS e pelas duas células 18650;
- posicionar a Li‑Po pouch atrás da região do teclado;
- aproximar a região da bateria de 25–28 mm de espessura, valor preliminar sujeito a CAD e teste físico;
- manter bateria, eletrônica e cabos removíveis e sem compressão;
- preservar acesso a USB-C, HDMI, microSD, áudio, UART e GPIO relevantes;
- melhorar entradas, saídas e caminho de ar;
- reservar espaço e alimentação para ventoinha de 30 mm sem torná-la obrigatória.

## Estratégia térmica

1. Melhorar contato da Radxa com dissipador/espalhador de cobre.
2. Evitar bolsões de ar quente e obstrução das ranhuras.
3. Executar carga sustentada por 20–30 minutos.
4. Buscar temperatura sustentada de SoC igual ou inferior a 75 °C, sem throttling.
5. Instalar cooling ativo somente se a solução passiva não atingir a meta.

## Processo CAD

Criar uma nova fonte paramétrica para a V1; nunca editar os STLs V0 como se fossem fonte. Antes da impressão completa, produzir coupons para bateria, conectores, standoffs, ventilação, insertos e passagem de cabos.
