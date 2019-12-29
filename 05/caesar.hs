import Data.Char (isLower, isUpper, ord, chr)

shift :: Int -> Char -> Char
shift n c | isUpper c = chr (ord 'A' + (ord c - ord 'A' + n) `mod` 26)
          | isLower c = chr (ord 'a' + (ord c - ord 'a' + n) `mod` 26)
          | otherwise = c

caesar :: Int -> String -> String
caesar n str = [ shift n c | c <- str ]
