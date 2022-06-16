docker rmi -f jenkins-java17
docker build -t jenkins-java17 Jenkins/Java
docker run -it jenkins-java17 /bin/bash