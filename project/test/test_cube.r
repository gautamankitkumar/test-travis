source('../src/my_code.r')
library(testthat)
test_that("Cube function works", 
	{ expect_equal(cube(3), 27)
	expect_equal(cube(2), 8) }
	)