import Data.Text.I18n
import Data.Text.I18n.Po
import qualified Data.Text as T

main :: IO ()
main = do
  let localeDir = "resources/locale"
  
  (l10n, _) <- getL10n localeDir
  let message = T.unpack ( localize l10n (Locale (T.pack "en")) (gettext (T.pack "hello world") ) )
  putStrLn (message )
