module Main where

import Lib

main :: IO ()
main = do
    putStrLn $ "* Outputting the sound to "++"sample.mid"
    outMain "sample.mid"
    putStrLn $ "* Printing the content of "++"sample.mid"
    inMain "sample.mid"