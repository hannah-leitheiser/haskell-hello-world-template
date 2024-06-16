import Data.Text.I18n
import Data.Text.I18n.Po

main :: IO ()
main = do
  let localeDir = "test/locale"
  
  (l10n, _) <- getL10n localeDir
  let message = localize l10n (Locale "en") (gettext "hello world")
  putLnStr message
