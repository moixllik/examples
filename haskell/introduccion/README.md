# Introducción al lenguaje Haskell

## Hello, World!

Para iniciar nuestros primer programa en Haskell debemos compilar con `ghc` un archivo `Main.hs`:

```haskell
main = putStrLn "Hello, World!"
```

```bash
ghc Main.hs
./Main
```
> Compila y luego ejecuta

<details>
    <summary>Resultado</summary>
    <pre>Hello, World!</pre>
</details>

## Usando Cabal

Cuando queremos llevar programas complejos recurrimos al uso de [Cabal](https://cabal.readthedocs.io/en/stable/developing-packages.html) para administrar las dependencias:

```bash
cabal init --non-interactive
```

Esto nos crea toda una estructura de archivos de la forma siguiente:

* `app/` - carpeta de código, también puede ser `src/`
    * `app/Main.hs` - módulo que se ejecutará por defecto 
* `CHANGELOG.md` - archivo para documentar los cambios de versiones
* `*.cabal` - archivo de configuración del proyecto

### Main.hs

```haskell
module Main where
-- Nombre del módulo 

main :: IO ()
-- Declaración de la función "main"
main = putStrLn "Hello, Haskell!"
-- imprime una línea usando "putStrLn"
```

Podemos compilar (`build`) o ejecutar (`run`) el módulo por defecto:

```bash
cabal build
cabal run
```

<details>
    <summary>Resultado</summary>
    <pre>Hello, Haskell!</pre>
</details>

### Configuración

Para agregar dependencias o tener testing editamos el archivo `*.cabal`:

```
cabal-version:      2.4
-- Versión de cabal que va usar el proyecto

name:               introduccion
version:            0.1.0.0
-- Nombre y versión del proyecto

-- Descripción extra del proyecto: [[

-- A short (one-line) description of the package.
-- synopsis:

-- A longer description of the package.
-- description:

-- A URL where users can report bugs.
-- bug-reports:

-- The license under which the package is released.
-- license:
author:             Irving
maintainer:         irving@moixllik.com

-- A copyright notice.
-- copyright:
-- category:
extra-source-files:
    CHANGELOG.md
    README.md

-- ]] Fin de la descripción

executable introduccion
-- Configuración del ejecutable

    main-is:          Main.hs
    -- Archivo que se ejecuta por defecto

    -- Modules included in this executable, other than Main.
    -- other-modules:

    -- LANGUAGE extensions used by modules in this package.
    -- other-extensions:
    build-depends:    base ^>=4.15.1.0
    -- Dependencias del ejecutable

    hs-source-dirs:   app
    -- Directorio del código fuente

    default-language: Haskell2010
    -- Versión de Haskell que se va usar
```

Finalmente, al usar repositorios `git` es recomendable agregar el siguiente `.gitignore`:

```
dist
dist-*
cabal-dev
*.o
*.hi
*.hie
*.chi
*.chs.h
*.dyn_o
*.dyn_hi
.hpc
.hsenv
.cabal-sandbox/
cabal.sandbox.config
*.prof
*.aux
*.hp
*.eventlog
.stack-work/
cabal.project.local
cabal.project.local~
.HTF/
.ghc.environment.*
```

## Enlaces

* [Web de Haskell](https://www.haskell.org/)
* [Buscar librerías usando estructura de funciones](https://hoogle.haskell.org/)
* [Paquetes disponibles en Cabal](https://hackage.haskell.org/)
* [GitIgnore para proyectos en Haskell](https://github.com/github/gitignore/blob/main/Haskell.gitignore)
