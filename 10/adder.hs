readInt :: IO Int
readInt = do
            n <- getLine
            return (read n::Int)

readIntList :: Int -> [Int] -> IO [Int]
readIntList 0 lst = return (lst)
readIntList r lst = do n <- readInt
                       ints <- readIntList (r-1) (n:lst)
                       return ints

adder :: IO ()
adder = do
          putStr "How many numbers? "
          n <- readInt
          ints <- readIntList n []
          putStr "The total is "
          putStr (show $ sum ints)

adder_seq :: IO ()
adder_seq = do
              putStr "How many numbers? "
              n <- readInt
              ints <- sequence [ readInt | i <- [1..n]]
              putStr "The total is "
              putStr (show $ sum ints)
