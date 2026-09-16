# Software

Python 3.9+ com PySide6 sobre Debian Bullseye XFCE. Aplicar MVC: UI não contém lógica de negócio. Organizar em `app`, `widgets`, `services`, `core`, `models`, `database`, `assets`, `config`, `utils` e `drivers` conforme necessário.

O sistema deve ser offline-first e preparar integrações modulares para OpenAI, Ollama, LM Studio, Whisper, reconhecimento e comandos de voz, chat, base de conhecimento e plugins. Isolar drivers de GPIO, I2C, SPI, UART, bateria, LEDs, ventoinha e sensores da aplicação.

Com 4 GB de RAM e 32 GB eMMC, carregar recursos sob demanda, controlar cache, usar workers para I/O/IA e nunca bloquear a thread de UI.
