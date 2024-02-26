# ACTIVIDAD 3

## Pasos para ejecutar un service en systemd
1. crear un archivo bash (ej. actividad3.sh)
2. darle permisos de ejecucion al archivo
```
chmod +x ./actividad3.sh
```
3. Crear un archivo en **/etc/systemd/system** llamado actividad3.service
4. establcer el servicio con:
```
sudo systemctl enable actividad3.service
```
5. iniciar el servicio
```
sudo systemctl start actividad3.service
```

Listo! ahora ya tenemos el servicio corriendo
si queremos ver el status del servicio podemos usar el siguiente comando:
```
sudo systemctl status actividad3.service
```

Y Para detener el servicio podemos usar el siguiente comando:
```
sudo systemctl stop actividad3.service
```
