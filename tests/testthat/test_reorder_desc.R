context("Factors in Descending Order")

test_that("reorder_desc returns factors in descending order ", {

  x <- factor(c('a', 'b', 'c', 'd'))
  y <- factor(c('b', 'c', 'a', 'd'))
  z <- factor(c('d', 'c', 'b', 'a'))
  a <- factor(c('e', 'f', 'g', 'h'))

  x2 <- reorder_desc(x)
  y2 <- reorder_desc(y)
  z2 <- reorder_desc(z)

  expect_equal(levels(x2),levels(y2))
  expect_equal(levels(x2),levels(z2))
  expect_equal(levels(y2),levels(z2))
  expect_error(reorder_desc(mtcars))
})

