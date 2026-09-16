# CAD e carcaça

## V0 definitiva — 2026-09-15

Status: **PHYSICALLY VALIDATED / V0 DEFINITIVA**.

Os três STLs preservados em `SatoOne_Case_V0/` correspondem à montagem física funcional: Front, Back com abertura do UPS e Clamps. A organização para publicação alterou apenas nomes de arquivos, sem modificar a geometria. Consulte `SatoOne_Case_V0/README.md` para o mapeamento dos nomes históricos.

O aviso anterior sobre revalidação dos furos do teclado fica **SUPERSEDED para a V0 definitiva**. Novas versões continuam obrigadas a validar medidas, tolerâncias e encaixes fisicamente.

O CAD paramétrico/editável correspondente não estava presente na pasta da entrega V0. Os STLs definitivos não devem ser sobrescritos quando a fonte editável for recuperada ou recriada.

## Direção comercial V1 — decisão de 2026-09-15

Remover o volume do UPS/18650 e posicionar a pouch atrás do teclado. A meta anterior de 25–28 mm fica **SUPERSEDED como dimensão de projeto** até a Li-Po, IP5310 e INA219 em trânsito serem medidos. Projetar refrigeração passiva e reservar fan de 30 mm sem instalá-lo por padrão. Criar CAD novo, manter a V0 intacta e validar com coupons antes da impressão completa.

Na V0 funcional, Radxa e hub trocaram de posição, a ventilação acompanhou a Radxa e a profundidade nominal do Back foi reduzida de 40 para 34 mm. Radxa usa pitch de projeto 58 × 23 mm e postes de 10 mm; hub usa pitch atual validado 52 × 15,25 mm e deve ficar próximo à parede.

## Atualização 2026-08-15

Usar CAD paramétrico e calibration coupons antes da impressão completa. O padrão de furos do teclado está NEEDS_REVALIDATION.

Projetar para Bambu Lab A1 Mini (volume máximo 180 × 180 × 180 mm), começando em PLA e prevendo PETG, ASA e TPU. Usar parede mínima de 2,0 mm, raio de canto mínimo de 6 mm e insertos térmicos M2/M2.5.

Criar aparência comercial, compacta, com bordas arredondadas e parafusos ocultos. Nada eletrônico é colado: display, teclado, placa e baterias devem ser removíveis. Prever compartimento de bateria, roteamento e alívio de cabos, acesso a USB-C/micro-HDMI/microSD/áudio/UART, dissipação passiva e espaço opcional para ventoinha de 30 mm.

Medir peças reais, testar encaixes críticos e validar que cabos, fluxo de ar, conectores e parafusos não sofrem interferência antes da impressão final.
