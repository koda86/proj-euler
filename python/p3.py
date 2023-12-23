"""
Problem 3: The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143?

Daniel Koska (koda86), Dec 13 2021
"""

def is_prime(n):
  if n == 2:
    return True
  if n < 2 or n % 2 == 0:
    return False
  # Check for divisors of n from 2 to the square root of n
  for i in range(3, int(n**0.5) + 1):
      if n % i == 0:
          return False
  return True

def get_prime_factors(n):
  primefactors = list()
  # Check for factor 2 separately to handle even numbers
  while n % 2 == 0:
      primefactors.append(2)
      n //= 2
  # Now n is odd, start checking odd numbers from 3
  for i in range(3, n + 1, 2):
      while is_prime(i) and n % i == 0:
          primefactors.append(i)
          n //= i
  return primefactors

n = 600851475143
largest_prime_factor = max(get_prime_factors(n))
print(largest_prime_factor)
