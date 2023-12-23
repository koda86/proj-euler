"""
Problem 3: The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143?

Daniel Koska (koda86), Dec 13 2021
"""

import numpy as np

# Prime factors: 5*7*13*29 = 13195

# Check if number is prime
def is_prime(n):
    if n < 2:
        return False
    
    # Check for divisors of n from 2 to the square root of n
    for i in range(2, int(np.sqrt(n)) + 1):
        if n % i == 0:
            return False
    return True

def get_prime_factors(n):
  primefactors = list()
  for i in range(2, n):
    if is_prime(i) and (n%i == 0):
      primefactors.append(i)
  return primefactors

n = 600851475143
largest_prime_factor = max(get_prime_factors(n))
