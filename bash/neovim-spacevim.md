# NeoVIM con SpaceVIM en Debian

## Instalación 

```bash
sudo apt update
sudo apt install neovim curl
```
> Paquetes requeridos

```bash
curl -sLf https://spacevim.org/install.sh | bash
```

## Soporte a otros lenguajes

Usando las teclas `SPC f v d` accedemos al archivo de configuración y agregamos:

```ini
[[layers]]
name = "lang#rust"
```
> Ver la lista de lenguajes soportados

Todos los cambios se ejecutan a la siguiente vez que se usa NeoVIM.

## Enlaces

* [Web de NeoVIM](https://neovim.io/)
* [Guía de SpaceVIM](https://spacevim.org/quick-start-guide/)
* [Lista de lenguajes soportados](https://spacevim.org/layers/)
