# Software Tree

```text
GUI
└── Widgets
    └── Services
        └── Drivers
            └── Database
                └── AI
                    └── Network
                        └── Storage
```

Widgets exibem estado e encaminham intenção; serviços contêm casos de uso; drivers isolam hardware; repositórios isolam persistência. A árvore descreve dependências lógicas, não autoriza chamadas bloqueantes na UI.
