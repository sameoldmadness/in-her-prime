def get_nth_prime(n):
  j, i = 2, 0
  while True:
    if i == n - 1:
      return j - 1

    if is_prime(j):
      i += 1
    j += 1


def is_prime(n):
  for i in range(2, n):
    if n % i == 0:
      return False
  return True


print get_nth_prime(10000)
