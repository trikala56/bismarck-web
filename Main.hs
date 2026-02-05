{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty
import Data.Text.Lazy (pack)

main :: IO ()
main = scotty 3000 $ do
    get "/" $ do
        html "<h1>Hello Bismarck!</h1><p>The Haskell server is running.</p>"

    get "/greet/:name" $ do
        name <- param "name"
        text $ "Hello, " <> name <> "! You've reached the Haskell server."

