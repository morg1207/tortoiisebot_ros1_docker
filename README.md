# Actualizar hora  y fecha

```
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z" 
```
# Construir imagenes y ejecutar contenedores 

```
cd docker/tortoisebot_ros1_docker
docker-compose up
```


