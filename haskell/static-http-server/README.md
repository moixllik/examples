# Servidor HTTP estático en Haskell

Muchas veces se necesita implementar un servidor HTTP muy básico, con Haskell utilizando los módulos `wai-app-static` y `warp` se puede implementar en pocas líneas de código:

```haskell
module Main where

import Network.Wai.Handler.Warp (run)
import Network.Wai.Application.Static

main :: IO ()
main = run 8080 $ staticApp (defaultFileServerSettings ".")
```

## Enlaces

* [HTTP server](https://en.wikipedia.org/wiki/HTTP_server)
* [Network.Wai.Application.Static](https://hackage.haskell.org/package/wai-app-static-3.1.7.2/docs/Network-Wai-Application-Static.html)
