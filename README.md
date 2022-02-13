# uchi_ru_test
Тестовые задания для стажёров Uchi.ru
Запуск 8го задания, блога на рельсе, осуществляется из директории blog командами 

docker build . -t blog
docker run --rm -it -v $(pwd):/usr/src -p 3000:3000 blog
