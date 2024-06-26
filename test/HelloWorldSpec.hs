module HelloWorldSpec (spec) where

import Test.Hspec

import qualified HelloWorld

spec :: Spec
spec = describe "GreetWorld" $ do
  it "greets the world in English" $ do
    message <- HelloWorld.greetWorld "en" 
    message `shouldBe` "Hello, World!"
  -- Add more test cases as needed
