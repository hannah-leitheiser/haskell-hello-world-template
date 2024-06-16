import System.Environment (lookupEnv)

import HelloWorld

main :: IO ()
main = do
  -- Try to get the system locale
  maybeLocale <- lookupEnv "LANG"
  let locale = case maybeLocale of
                 Just loc -> takeWhile (/= '.') loc  -- Strip off any encoding info, e.g., ".UTF-8"
                 Nothing  -> "en"  -- Default to "en" if locale is not found
  putStrLn (greetWorld locale)
