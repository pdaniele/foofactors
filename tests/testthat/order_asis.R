context("Factors in the Order they appear")

test_that("order_asis returns factors in the order they appear", {

  x <- factor(c('a', 'b', 'c', 'd'))
  y <- factor(c('b', 'c', 'a', 'd'))
  z <- factor(c('d', 'c', 'b', 'a'))

  x_c <- c('a', 'b', 'c', 'd')
  y_c <- c('b', 'c', 'a', 'd')
  z_c <- c('d', 'c', 'b', 'a')

  x2 <- order_asis(x)
  y2 <- order_asis(y)
  z2 <- order_asis(z)
  cars2 <- order_asis(mtcars$cyl)

  expect_identical(levels(x2),x_c)
  expect_identical(levels(x2),y_c)
  expect_identical(levels(y2),z_c)
  expect_false(levels(cars2) == c(6,4,8)) #False Expectation
})

