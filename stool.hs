import Data.List
import System.IO
import System.Environment

getServerList :: String -> String
getServerList x = x

main = do
  x <- getArgs
  putStrLn "got"
  print x
  case length (x) of
    0 -> do putStrLn "./stool host[0:40].testdomain.nl//40"
    1 -> do map putStrLn x
