# Puntos de Twitch automáticos

Usando el siguiente script en la consola del navegador, se podrá aceptar cada `1000*60*x` de tiempo, donde `x` es en minutos:

```js
setInterval(_=> {let b = document.querySelector('.community-points-summary .tw-transition button'); if (b) {b.click();console.log('= POINTS =')}}, 1000*60*1)
```
> Cada `x` minutos reclama los puntos. 

## Ejemplo de uso

* Abrir el canal con el streaming que queremos los puntos
* Acceder a la consola del navegador
    * Normalmente es con la tecla `<F12>`
    * También, clic derecho, luego Inspeccionar
* Pegar el script en la Consola y presionar la tecla `<ENTER>`

## Enlaces

* [Guía: Puntos de Twitch](https://help.twitch.tv/s/article/channel-points-guide)
* [Requerimientos para ser Afiliado](https://help.twitch.tv/s/article/joining-the-affiliate-program)
