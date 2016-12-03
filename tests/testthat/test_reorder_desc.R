context("Factors in Descending Order")

test_that("reorder_desc returns factors in descending order ", {

  x <- factor(c('a', 'b', 'c', 'd'))
  y <- factor(c('b', 'c', 'a', 'd'))
  z <- factor(c('d', 'c', 'b', 'a'))

  x2 <- reorder_desc(x)
  y2 <- reorder_desc(y)
  z2 <- reorder_desc(z)

  expect_identical(levels(x2),levels(y2))
  expect_identical(levels(x2),levels(z2))
  expect_identical(levels(y2),levels(z2))
  expect_false(levels(y2) == levels(x2)) # False expectation
  expect_false(levels(z2) == levels(x2)) # False expectation
  expect_false(levels(z2) == levels(y2)) # False expectation

})
