context("Frequency Table of Factors")

test_that("Does it create accurate frequencies", {

  # Not sure what to do other than to check some data where I know what the values should be
  cars_tibble <- freq_out(factor(mtcars$cyl))
  iris_tibble <- freq_out(factor(iris$Species))

  #Don't think there is much point to a false expectation here.
  expect_equal(cars_tibble$n, c(11,7,14))
  expect_equal(iris_tibble$n, c(50,50,50))
  expect_error(freq_out(mtcars))
})



