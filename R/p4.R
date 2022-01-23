# Problem 1: Largest palindrome product
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
#
# Daniel Koska (koda86), Jan 4 2022
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library(stringr)
library(magrittr)

is_palin <- function(n) {

  # Function to check if number is palindrome

  entire.number.split <- strsplit(as.character(n), "") %>%
    unlist() %>%
    as.numeric()

  half.length <- nchar(n) / 2

  # Run check separately for even and uneven numbers
  if (nchar(n) %% 2 == 0) {

    ## Case 1: Even number ----------------------------------------------

    # Split number into two equal length parts
    half.length <- nchar(n) / 2

    first.half <- entire.number.split[1:half.length]
    second.half <- entire.number.split[(half.length+1):nchar(n)]

    palin.check <- first.half == rev(second.half)
    palin.check <- all(palin.check == TRUE)

    } else {

      ## Case 2: Uneven number --------------------------------------------

      first.half <- entire.number.split[1:floor(half.length)]
      second.half <- entire.number.split[(ceiling(half.length)+1):nchar(n)]

      palin.check <- first.half == rev(second.half)
      palin.check <- all(palin.check == TRUE)
    }
      return(palin.check)
}


# Two nested for-loops from the largest to smallest number
largest.3digit <- 999

palin <- c()

for (i in largest.3digit:100) { # 100 because of 3 digits

  for (j in largest.3digit:100) {

    n <- i * j

    if (is_palin(n)) {palin <- c(palin, n)}
  }
}

max(palin)








