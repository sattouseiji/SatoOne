# SatoOne

**Um computador pessoal portátil em desenvolvimento.**

SatoOne combina Linux, tela touch e teclado físico em um equipamento compacto, concebido para produtividade móvel, automações e acesso a um ambiente computacional completo.

[**Conheça o SatoOne**](https://sattouseiji.github.io/SatoOne/) · [**Atualização e health check — 25/09**](https://sattouseiji.github.io/SatoOne/reports/satoone-health-2026-09-25.html) · [**Acompanhe o desenvolvimento**](https://github.com/sattouseiji/SatoOne/discussions)

## Estado atual

A versão V0 é um protótipo físico funcional. Já foram integrados e validados:

- Radxa Zero 3W com Debian;
- display touch de 5 polegadas;
- teclado físico integrado;
- conectividade Wi-Fi e periféricos USB;
- funcionamento portátil por bateria;
- gabinete próprio produzido por impressão 3D.

A [página oficial](https://sattouseiji.github.io/SatoOne/) apresenta fotos e uma demonstração em vídeo do protótipo real em funcionamento.

O baseline elétrico atual usa **LiPo Rontek 1S 10 Ah + UPS antigo sem suporte 18650**, preservando switch e distribuição. O responsável confirmou funcionamento estável do conjunto completo, com aproximadamente **4,92 V** na saída do UPS. O IP5310 foi testado e permanece experimental, fora da montagem atual.

O health check de 25/09 encontrou recursos e conectividade disponíveis, mas falha na inicialização do aplicativo e atenção térmica (**73,3–75,6 °C**). As prioridades são corrigir a inicialização, medir o UPS modificado para um Back mais fino e implementar telemetria com INA219. Autonomia mínima de duas horas continua como meta, sem ensaio conclusivo.

A direção inicial de 15–16/09 foi revisada em 25/09/2026 após testes físicos. Consulte o [plano de desenvolvimento V1](docs/development/V1_DEVELOPMENT_PLAN.md), o [sistema de energia](docs/electronics/V1_POWER_SYSTEM.md), o [plano da nova case](docs/cad/V1_ENCLOSURE_PLAN.md) e os [critérios de aceitação](docs/development/V1_ACCEPTANCE_PLAN.md).

## Visão do produto

O objetivo é oferecer um computador realmente pessoal: compacto, configurável e capaz de executar ferramentas Linux sem depender do formato tradicional de notebook.

O projeto está em fase de desenvolvimento e validação. O produto ainda não está disponível para venda, e especificações, formato, preço e cronograma podem mudar.

## Acompanhe e manifeste interesse

As principais etapas serão comunicadas publicamente. Para registrar interesse na versão final, futuras oportunidades de acesso antecipado, health checks, notícias e vídeos, escreva para [sattoumarcelo@gmail.com](mailto:sattoumarcelo@gmail.com) ou participe das [discussões oficiais](https://github.com/sattouseiji/SatoOne/discussions). O programa de atualizações ainda está em preparação.

Preço e formas de pagamento serão anunciados em breve. Manifestar interesse não constitui reserva, compra, investimento, garantia de acesso antecipado ou garantia de lançamento.

## Propriedade intelectual

SatoOne é um projeto de produto proprietário. O conteúdo desta versão é disponibilizado somente para acompanhamento e avaliação. Consulte o arquivo [LICENSE](LICENSE) para os termos aplicáveis.

Versões anteriores que tenham sido expressamente publicadas sob outra licença permanecem sujeitas aos termos válidos no momento de sua publicação.
