import Test.Tasty
import Test.Tasty.Hspec
import Test.Hspec
import HelloWorld (greetWorld)

main :: IO ()
main = do
  tests <- testSpec "HelloWorld tests" spec
  defaultMain tests

spec :: Spec
spec = describe "HelloWorld" $
  it "greets the world" $
    greetWorld `shouldBe` "hello world"
