# Usa una imagen base ligera como nginx
FROM nginx:alpine

# Copia el contenido de la carpeta actual al directorio estándar de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 8080, que es el puerto predeterminado para Google App Engine
EXPOSE 8080

# Cambia la configuración para que Nginx escuche en el puerto 8080
CMD ["nginx", "-g", "daemon off;"]
