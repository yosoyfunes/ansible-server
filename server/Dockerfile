# Usa la imagen base python:3.9.17-buster
FROM python:3.9.17-buster

# Actualiza el sistema e instala sudo
RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Define una ubicación compartida para pipx, fuera del directorio /root
ENV PIPX_HOME=/opt/pipx
ENV PIPX_BIN_DIR=/usr/local/bin
RUN mkdir -p $PIPX_HOME $PIPX_BIN_DIR

# Instala pipx y agrega sus binarios a la ruta global
RUN python3 -m pip install --no-cache-dir pipx \
    && python3 -m pipx ensurepath

# Instala ansible usando pipx en la ubicación compartida
RUN pipx install --include-deps ansible

# Crea alias para comandos comunes
RUN echo "alias ll='ls -la'" >> /root/.bashrc

# Crea el usuario ansible y le da permisos de root
RUN useradd -m ansible \
    && echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Cambia al usuario ansible
# USER ansible

# Ejecuta el contenedor en modo interactivo
CMD ["bash"]