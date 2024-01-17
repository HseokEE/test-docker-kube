# 사용할 베이스 이미지 지정
FROM openjdk:17-jdk-alpine

# 포트 8080 을 오픈
EXPOSE 8080

# 애플리케이션 jar 파일을 컨테이너 내부로 복사
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# 애플리케이션 실행
ENTRYPOINT ["java","-jar","/app.jar"]