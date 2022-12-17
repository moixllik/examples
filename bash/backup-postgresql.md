# Crear un backup para PostgreSQL

Para crear un backup comprimido de las bases de datos en PostgreSQL, tiendo como ruta principal `/home/backup/` y luego subirlo a un repositorio de GitHub:

```bash
su - postgres -c pg_dumpall | gzip > /home/backup/db.gz
git -C /home/backup add .
git -C /home/backup commit -m backup
git -C /home/backup push
```
> Se requieren permisos `sudo` y tener la cuenta de git con `ssh-key`

## Automatizar

Creamos una tarea que se ejecute diario y subir los cambios en la base de datos, con `crontab -e` y agregamos al final:

```
@daily /home/backup/dumpall.sh
```
> `dumpall.sh` requiere permisos de ejecución `chmod +x` y contiene el primer script

## Restaurar las base de datos

```bash
su - postgres -c gunzip -c db.gz | psql
```
> Se requiere permisos `sudo` 

## Enlaces

* [Documentación de pg_dumpall](https://www.postgresql.org/docs/current/app-pg-dumpall.html)
* [Manual de crontab](https://man7.org/linux/man-pages/man5/crontab.5.html)
