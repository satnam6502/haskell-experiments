module Main
where
import Control.Lens
import Network.Wreq

main :: IO ()
main 
  = do r <- get "http://www.haskell.org/"
       putStrLn (show (r ^. responseBody))
