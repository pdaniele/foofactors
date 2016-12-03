context("Finding Factors")

test_that("any_factors finds all factors in your dataframe", {
  x <- any_factors(iris)
  y <- any_factors(mtcars)

  expect_true(length(x) > 0)
  expect_false(length(y) > 0)
  expect_identical(x, 'Species')
})

