# Mechanical

V0 foi impressa na Bambu Lab A1 Mini e validada fisicamente em 2026-08-15. A V1 está separada em `SatoOne_Case_V1`, preservando a V0. Correções validadas: Radxa piloto Ø2.30 mm; UPS com postes de 12.00 mm; hub com espaçamento 51.03 × 14.92 mm e piloto Ø2.20 mm.

## Estado em 2026-08-15

O gabinete está na fase V0 de validação dimensional. A fonte única de dimensões é o CAD paramétrico em `SatoOne_Case_V0/SatoOne_Case_V0.scad`; os envelopes usados foram medidos fisicamente com paquímetro. A pasta contém front/back STL e preview de montagem.

Fases: V0 dimensional, V1 encaixes, V2 montagem funcional, V3 refinamento mecânico e V4 acabamento/premium. Antes de imprimir o gabinete completo, executar coupons de encaixe, standoffs, parafusos, insertos, tolerâncias, ímãs e passagens USB-C.

O UPS, com 30.22 mm de espessura máxima, atualmente influencia a espessura. Avaliar distribuição XY, roteamento de HDMI/USB-C, ventilação, dissipação e clearance dos GPIO da Radxa; não remover os pinos GPIO.

O padrão de furos do teclado está `NEEDS_REVALIDATION` por inconsistência entre a diagonal medida anteriormente (68.91 mm) e as componentes X/Y. O desenho mecânico do display deve ser o da variante Waveshare 5DP-CAPLCD-H.

Gabinete compacto, com bordas arredondadas, manutenção possível, roteamento interno de cabos, compartimento de bateria, refrigeração passiva e reserva para ventoinha futura. Validar limites da Bambu Lab A1 Mini antes do CAD final.
