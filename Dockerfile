# Usamos la imagen oficial de WildFly
FROM jboss/wildfly:28.0.0.Final

# Copiamos el archivo WAR a la carpeta de despliegue de WildFly
COPY appGasPedidos.war /opt/jboss/wildfly/standalone/deployments/

# Comando para arrancar WildFly
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
