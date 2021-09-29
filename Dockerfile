FROM openjdk:8-jdk-slim
COPY target/atm-0.0.1-SNAPSHOT.jar atm.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","/atm.jar"]


# -------------------------------------
#   Before building a docker image,
#   build .jar file with this command
#   (You will need to install mvn first)
# -------------------------------------

# mvn clean package -DskipTests

# -------------------------------------
#   Following commands build a docker image
#   and run a container of the image
# -------------------------------------

# docker build -t atm .
# docker run -p 8090:8090 -d atm

# -------------------------------------
#   An alternative Dockerfile with Maven base
#   This doesn't require building a jar file,
#   but starting a container can take a lot
#   longer to start. Not recommended.
# -------------------------------------
# FROM maven:3-alpine
# COPY . /atm/
# WORKDIR /atm
# EXPOSE 8090
# ENTRYPOINT ["mvn","spring-boot:run"]
