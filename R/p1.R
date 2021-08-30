# Problem 1: Multiples of 3 or 5
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# Daniel Koska (koda86), Aug 30 2021
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

upper <- 1000

nums <- 1:(upper-1)

mod <- function (x, y) {x %% y}

mod3.idx <- unlist(lapply(nums, 3, FUN = mod))
mod5.idx <- unlist(lapply(nums, 5, FUN = mod))

multiples <- nums[mod3.idx==0 | mod5.idx==0]

sum(multiples)

