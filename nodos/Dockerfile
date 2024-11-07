# Utilizar la imagen base de Ubuntu
FROM ubuntu:20.04

# Actualizar los paquetes e instalar el servidor SSH
RUN apt-get update && \
    apt-get install -y openssh-server && \
    mkdir /var/run/sshd

# Configurar la contraseña de root para permitir la conexión SSH (ajusta 'password' según sea necesario)
RUN echo 'root:password' | chpasswd

# Exponer el puerto SSH
EXPOSE 22

# Ejecutar el servicio SSH en el modo de espera
CMD ["/usr/sbin/sshd", "-D"]