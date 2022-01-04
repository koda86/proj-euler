# Problem 1: Largest palindrome product
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
#
# Daniel Koska (koda86), Jan 4 2022
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
library(stringr)
library(magrittr)

# Function to check if number is palindrome
is_palin <- function(n) {

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

    # Compare the first part of the sequence with the MIRRORED second part
    is_mirrored <- function(half.length, first.half, second.half) {
      j <- half.length
      for (i in 1:half.length) {
        first.half[i] == second.half[j]

        j <- half.length - i
      }
      is.mirror <- ifelse(j==0, TRUE, FALSE)

      return(is.mirror)
    }

    palin.check <- is_mirrored(half.length, first.half, second.half)

    } else {

      ## Case 2: Uneven number --------------------------------------------

      first.half <- entire.number.split[1:floor(half.length)]
      second.half <- entire.number.split[(ceiling(half.length)+1):nchar(n)]

      # Extract middle element if it exists
      mid.element <- entire.number.split[ceiling(half.length)]

      # Actual check
      palin.check <- ifelse(entire.number.split[1] && entire.number.split[length(entire.number.split)] == mid.element,
                            TRUE,
                            FALSE)

    }

      return(palin.check)
}

n <- 2002002
is_palin(n)
