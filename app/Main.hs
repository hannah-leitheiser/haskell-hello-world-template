import Data.Text.I18n
import Data.Text.I18n.Po
import qualified Data.Text as T
import System.Environment (lookupEnv)

main :: IO ()
main = do
  let localeDir = "resources/locale"

  -- Try to get the system locale
  maybeLocale <- lookupEnv "LANG"
  let locale = case maybeLocale of
                 Just loc -> takeWhile (/= '.') loc  -- Strip off any encoding info, e.g., ".UTF-8"
                 Nothing  -> "en"  -- Default to "en" if locale is not found
  
  (l10n, _) <- getL10n localeDir
  let message = T.unpack ( localize l10n (Locale (T.pack locale)) (gettext (T.pack "hello world") ) )
  putStrLn (message )
