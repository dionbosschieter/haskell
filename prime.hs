import Data.List
import System.IO

divedable :: Integer -> Integer -> Bool
divedable n 1 = False
divedable n j = (mod n j) == 0 || divedable n (j-1)

isprime :: Integer -> Bool
isprime n = not (divedable n (n-1))
