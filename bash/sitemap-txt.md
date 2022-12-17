# Crear un sitemap.txt

A partir de una lista de archivos `.md`, dentro de varios directorios, creamos con bash un sitemap para los motores de búsqueda:

```bash
find */ -type f | grep -oP '^[^.]+(?=(\.md)?$)' | sed 's/^/https:\/\/moixllik.com\//' > sitemap.txt 
```
> Funciona solo en linux o W2L, también podemos modificar `.md` por `.html` u otra extensión.

<details>
    <summary>Resultado</summary>
<pre>
https://moixllik.com/example-1.md
https://moixllik.com/directory/example-2.md
</pre>
</details>

## Ejemplo de uso

En nuestro sitio web para que los buscadores obtengan el sitemap debemos
crear un archivo llamado `robots.txt` en la ruta principal, por ejemplo: `https://moixllik.com/robots.txt`

```
user-agent: *

sitemap: https://moixllik.com/sitemap.txt
```

## Enlaces

* [Google Sitemaps](https://developers.google.com/search/docs/crawling-indexing/sitemaps/build-sitemap) 
* [Agregar tu web a Google](https://search.google.com/search-console/about)
