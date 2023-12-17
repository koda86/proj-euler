"""
Problem 3: The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143?

Daniel Koska (koda86), Dec 13 2021
"""

# Prime factors: 5*7*13*29 = 13195

# Check if number is prime
def is_prime(n):
  for i in range(2, n-1):
    if n%i == 0:
      print(i)
      print("No prime number!")
      return False
    else:
      print(i)
      print("Is a prime number!")
      return True

is_prime(16)
