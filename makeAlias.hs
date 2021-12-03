import System.Environment (getArgs)
import Data.List (intercalate)
import Data.Monoid ((<>))


n1 :: Integer
n1 = 387420489

n2 :: Integer
n2 = 4000000000

n3 :: Integer
n3 = 3513180409


padLeft :: Int -> Char -> String -> String
padLeft n c xs = replicate (n - length xs) c <> xs


padAlias :: String -> String
padAlias = padLeft 10 '0'


toAlias :: Integer -> String
toAlias n = padAlias . show $ n * n1 `mod` n2


fromAlias :: String -> Integer
fromAlias a = read a * n3 `mod` n2


main :: IO ()
main = do
  args <- getArgs
  case length args of
    0 -> putStrLn "Please supply an ID argument."
    _ -> putStr . intercalate " " $ map (toAlias . read) args
