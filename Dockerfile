FROM tomcat:latest
RUN mkdir -p /app
EXPOSE 8080
COPY target/*.war /usr/local/tomcat/webapps
ENV JAVA_OPTS="-Dconfig.properties.file=/app/config.properties"
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"]
