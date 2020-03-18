Ejecutar el siguiente comando para inicializar el proyecto de angular
docker-compose -f docker-compose.seed.yml run web-seed

Para iniciar el entorno de desarrollo
docker-compose -f docker-compose.dev.yml up

Ejecutar cada vez que se instale con "npm i"
docker cp web-dev:/usr/src/app/package-lock.json web && \
docker cp web-dev:/usr/src/app/node_modules - > web/temp_node_modules.tar && \
    tar -xf web/temp_node_modules.tar -C web && \
    rm -f web/temp_node_modules.tar

Para compilar para producción
docker-compose -f docker-compose.prod.yml up --build