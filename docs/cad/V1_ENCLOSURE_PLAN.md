# Direção mecânica — Case V1 comercial

**Direção definida:** 2026-09-15
**Estado:** meta de projeto, ainda sem CAD V1 validado

## Baseline

A V0 definitiva possui envelope externo anteriormente registrado de aproximadamente 130 × 155 × 44 mm. A profundidade nominal do Back foi reduzida de 40 para 34 mm; são referências distintas, pendentes de nova medição correlacionada. Ela permanece preservada como prova física funcional e não deve ser sobrescrita.

## Objetivos

- aproveitar o UPS antigo com suporte 18650 já removido, preservando toda a PCB e sua eletrônica;
- posicionar LiPo e UPS preferencialmente no mesmo plano, evitando empilhamento;
- usar a LiPo medida (CAD: 111,2 × 65,0 × 11,0 mm) e medir dimensões/altura máxima do UPS modificado antes de definir a espessura final;
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

Atualização de 25/09: LiPo recebida e medida; IP5310 fora da montagem. Medir a PCB real do UPS sem holder e seus componentes antes do encaixe final. Prever fixação segura e removível da LiPo, folgas, USB-C de carga acessível e organização dos cabos. Preservar no novo layout o conhecimento da V0: hub próximo à parede, Radxa no lado antes ocupado pelo hub, ventilação alinhada à Radxa, pitch Radxa 58 × 23 mm/postes 10 mm e hub 52 × 15,25 mm.
