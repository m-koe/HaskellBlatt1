module Main where

import Lib (someFunc, square, ggT)
import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

main :: IO ()
main = do
    -- hSetBuffering stdout NoBuffering
    -- putStrLn "Geben Sie bitte eine Zahl ein (0 == Ende): "
    -- number <- readLn :: IO Double
    -- if number /= 0
    -- then do putStrLn ("square(" ++ show number ++ ") = " ++ show (square number))
    --        main
    -- else putStrLn "Ciao"
    putStrLn "Geben sie zwei Zahlen ein zum berechnen des ggT: (0 0) = Ende"
    number1 <- readLn :: IO Integer
    number2 <- readLn :: IO Integer
    if number1 == 0 && number2 == 0
        then
            putStrLn "Ciao"
        else do
            putStrLn ("ggT von " ++ show number1 ++ " und " ++ show number2 ++ " ist " ++ show (ggT number1 number2))
            main