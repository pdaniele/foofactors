context("Should a factor be character")

test_that("chr_factor accurately determines if the length of the vector is equal to the length of the unique values", {

  x <- factor(c('Brown', 'Bears', 'Bite', 'Bananas')) ## Should be True
  y <- factor(c('Apple', 'Orange', 'Apple', 'Orange')) ## Should be False
  z <- factor(c(1,2,2,3)) ## Should be False
  a <- factor(c(1,1,1,1)) ## Should be False
  b <- factor(c(1,2,3,4)) ## Should be True

  expect_true(chr_factor(x))
  expect_false(chr_factor(y))
  expect_false(chr_factor(z))
  expect_false(chr_factor(a))
  expect_true(chr_factor(b))
  expect_error(chr_factor(mtcars))
})
