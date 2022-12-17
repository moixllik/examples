module Main where

import Test.HUnit
import MyModule

main :: IO ()
main = runTestTTAndExit tests

tests :: Test
tests = TestList
    [ TestLabel "test1" test1
    , TestLabel "test2" test2
    ]

test1 :: Test
test1 = TestCase
    $ assertEqual "mySum 1 1" 3 (mySum 1 1)

test2 :: Test
test2 = TestCase
    $ assertEqual "myMul 2 2" 5 (myMul 2 2)
