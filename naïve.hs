maxPrimeToN n = sieve [2..] 1
  where
    sieve (h:xs) i
      | i == n && isPrime h = h
      | i < n && isPrime h = sieve xs (i + 1)
      | not $ isPrime h = sieve xs i

isPrime n = check 2
  where
    check i
      | i == n = True
      | n `mod` i == 0 = False
      | n `mod` i >= 0 = check $ i + 1

main = do
  putStrLn $ show $ maxPrimeToN 10000
