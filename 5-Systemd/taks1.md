# Юниты

1. Что такое systemd юнит?

Systemd-юниты — объекты, с помощью которых systemd  управляет различными ресурсами. 
Типы юнитов:
- .service — служба.
- .socket — сокет.
- .mount — точка монтирования.
- .timer — таймер для запуска задач.
- .target — набор зависимостей для достижения состояния.

2. Проверьте статус любого systemd юнита, какую информацию выводит эта команда?

    systemctl status sshd.service

Показывает статус службы. Выводит:
- Состояние службы: активна, остановлена или в процессе сбоя.
- Журнал последних логов.
- Путь к файлу юнита.
- Информацию о процессах.

3. Попробуйте оставновить сервис.

    systemctl stop sshd.service

4. Перезапустите его.

    systemctl restart sshd.service

5. Удалите из автозагрузки

    systemctl disable sshd.service

6. Верните обратно

    systemctl enable sshd.service

7. Что такое таймеры?
Таймеры в systemd — файлы юнитов systemdс суффиксом .timer. Они позволяют контролировать файлы .service или события. В заданное время вызывают выполнение различных действий в системе.

Типы таймеров:
- OnCalendar — запуск по расписанию.
- OnBootSec — запуск через определённое время после загрузки системы.
- OnUnitActiveSec — запуск через определённое время после последнего активации службы.
