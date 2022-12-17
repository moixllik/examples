# Agregar Unit tests a proyectos en Haskell

## Activar el soporte a tests

Con el siguiente comando, permite crear un archivo `cabal.project.local`
con la configuración de los tests activos:

```bash
cabal new-configure --enable-tests
```

## Configurar el directorio de tests

Agregamos a nuestro archivo `.cabal` la configuración de las dependencias
necesarias para ejecutar desde el directorio `tests/` y para importar
módulos locales los agregamos a `other-modules`:

```
Test-Suite tests
    type:               exitcode-stdio-1.0
    main-is:            Test.hs
    default-language:   Haskell2010
    build-depends:      base,
                        HUnit
    other-modules:      MyModule
    hs-source-dirs:     tests, app
```

## Realizando los tests

Para ejecutar los tests se usa `cabal test` y llamará al
archivo `Test.hs`:

```haskell
module Main where

import Test.HUnit

main :: IO ()
main = runTestTTAndExit tests

tests :: Test
tests = TestList
    [ TestLabel "test1" test1
    ]

test1 :: Test
test1 = TestCase
    $ assertEqual "mySum 1 1" 3 (mySum 1 1)
```

* `runTestTTAndExit` - Llama a un test o grupo de tests.
* `TestList` - Crea un grupo de tests.
* `TestLabel` - Crea un test.
* `TestCase` - Crea un caso test.
* `assertEqual` - Realiza una prueba.

## Enlaces

* [HUnit: A unit testing framework for Haskell](https://hackage.haskell.org/package/HUnit)
* [Documentación Cabal Test Suites](https://cabal.readthedocs.io/en/stable/setup-commands.html#building-test-suites)
