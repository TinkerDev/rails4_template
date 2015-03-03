Что за шаблон?
===

Это болванка приложения на Rails 4.2, которую удобно брать за основу для
создания новых проектов.

Пример
===

    $ \curl -L https://raw.github.com/TinkerDev/rails4_template/master/bootstrap.sh | bash -s Project

а если у нас уже есть пустой репозиторий на github, то

    $ \curl -L https://raw.github.com/TinkerDev/rails4_template/master/bootstrap.sh | bash -s Project --git git@github.com:TinkderDev/demo.git


Что при этом происходится?

1. Клонируется проект `rails4_template` в каталог производный от указанного имени.
2. Рельсовое приложение переименуется в указанное имя (`Project::Application`)
3. Базу тоже назовут в ее честь.
4. Запустится `bundle install`
5. Пропишется указанный репозиторий (если указан) и зальется первый комит.

Что делать дальше?
==================

1. Настроить `./config/application.yml` и `./config/database.yml`
2. Зарегистрировать проект в errbit и записать ключи `./config/initializers/airbrake.rb`
3. Поправить `README.md`

Константы
=========

При генерации проекта происходит автозамена:

* Rails4Template -> НазваниеПриложения -> Project
* http://Rails4Template.ru/ -> url -> http://project.ru/
* HOSTNAME -> host -> project.ru
* ttt -> НазваниеБазы -> project


Используемые гемы
============

#### DB
* friendly_id: [slug для моделей](http://norman.github.io/friendly_id/file.Guide.html)
* counter_culture: [продвинутый кешер каунтов](https://github.com/magnusvk/counter_culture)
* arel: [конструктор sql запросов на руби](https://github.com/rails/arel)