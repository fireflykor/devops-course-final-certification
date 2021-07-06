# Итоговая аттестация по курсу Инструменты и практики DevOps

Необходимо подготовить код, который запускает веб сервер и доступна страница вида: <DevOps Course 2021>. Веб сервер должен быть запущен в инфраструктуре AWS в новой VPC. Конфигурирование веб сервера должно быть с помощью Ansible. Сам веб сервер необходимо запустить в docker контейнере. Код выложить в репозиторий Github. В репозитории должны быть добавлены автоматические проверки `ansible lint` и `terraform validate`. Все изменения могут происходить только через отдельную ветку. Код должен содержать все best practices которые были пройдены в течении курса.

### Запуск
1. В  ./terrafrom запустить:
      - terraform init
      - terraform plan
      - terraform apply
    
2. В ./ansible выполнить ansible-playbook playbook.yml -i inventory.yml --private-key path/private-key.pem
