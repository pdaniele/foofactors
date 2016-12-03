context("Factors in the Order they appear")

test_that("order_asis returns factors in the order they appear", {

  x <- c('a', 'b', 'c', 'd')
  y <- c('b', 'c', 'a', 'd')
  z <- c('d', 'c', 'b', 'a')

  x2 <- order_asis(x)
  y2 <- order_asis(y)
  z2 <- order_asis(z)
  cars2 <- order_asis(mtcars$cyl)

  expect_equal(levels(x2), x)
  expect_equal(levels(y2), y)
  expect_equal(levels(z2), z)
  expect_false(levels(cars2)[2] == 6) #False Expectation
  expect_false(levels(cars2)[3] == 6) #False Expectation
})

