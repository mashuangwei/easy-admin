## 基于java 8镜像
  FROM java:8

  ## 将本地文件挂在到当前容器
  VOLUME /tmp

  ## 拷贝文件内容
  ADD easy-admin-0.0.1-SNAPSHOT.jar easy.jar
  RUN bash -c 'touch /docker.jar'

  ## 开放端口
  EXPOSE 8900

  ## 容器启动后命令
  ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/easy.jar"]