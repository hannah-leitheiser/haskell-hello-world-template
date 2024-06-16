import Test.Tasty
import Test.Tasty.Hspec

import qualified HelloWorldSpec

main :: IO ()
main = do
  testSpecs <- testSpec "MyTestSuite" $ do
    GreetWorldSpec.spec
    -- Add more specs from other modules if needed
    
  defaultMain testSpecs
