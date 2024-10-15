# Usamos la imagen oficial de WildFly con JDK 17 desde Quay.io
FROM quay.io/wildfly/wildfly:28.0.0.Final-jdk17

# Copiamos el archivo WAR a la carpeta de despliegue de WildFly
COPY appGasPedidos.war /opt/jboss/wildfly/standalone/deployments/

# Comando para arrancar WildFly
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
