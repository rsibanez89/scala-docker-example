# Sample Scala App running in Docker

### Run in CLI using scala-maven-plugin:
- mvn scala:compile
- mvn scala:run -DmainClass=example.Hello

### Run in CLI using maven-assembly-plugin:
- mvn clean package
- java -jar target/scala-docker-example-1.0.0-jar-with-dependencies.jar

### Run in Docker:
- docker build -t scala-app .
- docker run scala-app

### Run in VS Code:
- Install the Scala (Metals) extension
- In Metal Extension: Start Metals
- In Metal Extension: Import build
- Play `Run Hello`
