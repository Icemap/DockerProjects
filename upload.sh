TAG_NAME=$1

if [ "${TAG_NAME}" == "" ] ; then
    echo "需要输入镜像的 Tag 名称";
    exit 0;
fi

echo "上传镜像:"
echo "hub.pingcap.net/jenkins/centos7_golang-1.16_openjdk-17.0.2_gradle-7.4.2_maven-3.8.6:${TAG_NAME}"

docker tag jenkins-java17 hub.pingcap.net/jenkins/centos7_golang-1.16_openjdk-17.0.2_gradle-7.4.2_maven-3.8.6:${TAG_NAME}
docker push hub.pingcap.net/jenkins/centos7_golang-1.16_openjdk-17.0.2_gradle-7.4.2_maven-3.8.6:${TAG_NAME}