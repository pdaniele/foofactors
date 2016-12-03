context("Frequency Table of Factors")

test_that("Does it create accurate frequencies", {

  # Not sure what to do other than to check some data where I know what the values should be
  cars_tibble <- freq_out(mtcars$cyl)
  iris_tibble <- freq_out(iris$Species)

  #Don't think there is much point to a false expectation here.
  expect_identical(cars_tibble$n, c(11,7,14))
  expect_identical(iris_tibble$n, c(50,50,50))
})

