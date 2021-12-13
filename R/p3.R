# Problem 3: The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143?
#
# Daniel Koska (koda86), Dec 13 2021
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# !!! Function does not work for really large numbers so far (algorithm is inefficient) !!!
# The basic implementation appears to be working, though. (see result for n = 13195)

n <- 600851475143 # 13195

# Check if number is prime
is_prime <- function(n) {
  # Function to check if number is prime
  n == 2L || all(n %% 2L:max(2,floor(sqrt(n))) != 0)
}

prime_factors <- function(n) {
  prime.factors <- c()
  # Use even numbers only and start at 2 (saves execution time)
  for (i in c(2, seq(from=3, to=n, by=2))) {
    if (n %% i == 0 && is_prime(i)) {
      prime.factors <- c(prime.factors, i)
    }
  }
  print(prime.factors)
}

prime_factors(n)
max(prime_factors(n))
