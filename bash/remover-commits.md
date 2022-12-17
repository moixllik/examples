# Remover antiguos Commits en Repos de Git

En la carpeta raíz del repositorio existent borramos la carpeta `.git` y volvemos inicializar:

```bash
rm -rf .git 
git init
```

Agregamos la ruta del repositorio remoto:

```bash
git remote add origin git@github.com:<user>/<repo>
git remote -v
```

Finalmente, enviamos el contenido sin los antiguos commits:

```bash
git add --all
git commit -m init
git branch -M main
git push -f origin main
```

## Enlaces

* [Documentación de Git](https://git-scm.com/docs)
* [Guía de GitHub](https://github.com/git-guides)
