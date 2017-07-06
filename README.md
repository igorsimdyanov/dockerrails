Запуск Rails-приложения в Docker-контейнере с возможностью редактирования файлов с хост машины

В папку app помещаем Rails-приложение, после чего создаем контейнер

    docker build -t dockerrails .

Запускем контейнер с именем dockerrails на 3000 порту, монтируя содержимое приложения в каталог app

    docker run --name dockerrails -p 3000:3000 -v "$(pwd)"/app:/app dockerrails

На хост-машине обратиться к приложению можно по 3000 порту

    curl http://localhost:3000

Удалить контейнер можно при помощи команды

    docker rm -f dockerrails