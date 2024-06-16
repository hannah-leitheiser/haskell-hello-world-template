module Main (main) where

import Data.Text.I18n (loadTranslations, translate)
import System.Environment (getEnv)
import Data.Text (Text, unpack)

main :: IO ()
main = do
  putStrLn $ "Hello World!"
