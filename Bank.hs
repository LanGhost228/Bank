{-# LANGUAGE OverloadedStrings #-}
import qualified Data.ByteString.Lazy.Char8 as L8
import           Network.HTTP.Simple


main :: IO ()

main = do
	x <- getLine 
	let url = "https://goto.msk.ru/vault/api/get_balance/" ++ x
	req <- parseRequest url
	response <- httpLBS req
	L8.putStrLn $ getResponseBody response
	