import Test.Tasty
import Test.Tasty.Hspec

import qualified GreetWorldSpec

main :: IO ()
main = do
  testSpecs <- testSpec "MyTestSuite" $ do
    GreetWorldSpec.spec
    -- Add more specs from other modules if needed
    
  defaultMain testSpecs
