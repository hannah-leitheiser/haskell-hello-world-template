module HelloWorld
    ( greetWorld
    ) where

import Data.Text.I18n
import Data.Text.I18n.Po
import qualified Data.Text as T

greetWorld :: String -> IO String
greetWorld locale = do
  let localeDir = "resources/locale"
  (l10n, _) <- getL10n localeDir
  let message = T.unpack (localize l10n (Locale (T.pack locale)) (gettext (T.pack "hello world")))
  return message
