#New line comment added here
FROM schoolofdevops/carts-maven:3.9

WORKDIR /opt/carts

COPY . /opt/carts

RUN mvn package \
    && mv target/carts.jar /run \
    && rm -rf *

EXPOSE 80

CMD java -jar /run/carts.jar --port=80