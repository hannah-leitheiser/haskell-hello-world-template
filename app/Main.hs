import Data.Text.I18n
import Data.Text.I18n.Po
import qualified Data.Text as T

main :: IO ()
main = do
  let localeDir = "locale"
  
  (l10n, _) <- getL10n localeDir
  let message = T.unpack ( localize l10n (Locale (T.pack "en")) (gettext "hello world") )
  putStrLn (T.unpack message )
