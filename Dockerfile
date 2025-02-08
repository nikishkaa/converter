FROM openjdk:8-jdk-alpine

# указываем точку монтирования для внешних данных внутри контейнера (как мы помним, это Линукс)
VOLUME /tmp

# внешний порт, по которому наше приложение будет доступно извне
EXPOSE 8080

# указываем, где в нашем приложении лежит джарник
ARG JAR_FILE=target/convertator-0.0.1-SNAPSHOT.jar

# добавляем джарник в образ под именем rebounder-chain-backend.jar
ADD ${JAR_FILE} convertator-0.0.1-SNAPSHOT.jar

# команда запуска джарника
ENTRYPOINT ["java","-jar","/convertator-0.0.1-SNAPSHOT.jar"]