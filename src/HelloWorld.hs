module HelloWorld
    ( greetWorld
    ) where

import Data.Text.I18n
import Data.Text.I18n.Po
import qualified Data.Text as T
import System.Environment (lookupEnv)

greetWorld :: String -> String
greetWorld locale = 
  let localeDir = "resources/locale"
      (l10n, _) = getL10n localeDir
      message = T.unpack (localize l10n (Locale (T.pack locale)) (gettext (T.pack "hello world")))
  in message
