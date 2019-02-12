gnu :: Integer -> String
gnu 0 = ""
gnu n = "gnu " ++ gnu (n-1) ++ " is not unix"
