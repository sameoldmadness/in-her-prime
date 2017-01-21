def get_nth_prime(n):
  j, i = 2, 0
  while True:
    if is_prime(j):
      i += 1
    if i >= n:
      return j
    j += 1


def is_prime(n):
  for i in xrange(2, n):
    if n % i == 0:
      return False
  return True


print get_nth_prime(10000)
