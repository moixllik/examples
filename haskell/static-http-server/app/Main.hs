module Main where

import Network.Wai.Handler.Warp (run)
import Network.Wai.Application.Static

main :: IO ()
main = run 8080 $ staticApp (defaultFileServerSettings ".")
