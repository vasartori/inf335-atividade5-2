FROM maven:3.9.8 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean install

FROM eclipse-temurin:21.0.3_9-jre AS runner
WORKDIR /app
COPY --from=builder /app/target/atividade5-hello-1.0-SNAPSHOT.jar /app
CMD ["/opt/java/openjdk/bin/java", "-cp","atividade5-hello-1.0-SNAPSHOT.jar","br.unicamp.ic.inf335.Main"]