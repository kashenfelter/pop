context('transition-class')

test_that('transition classes work', {

  # alias works
  expect_equal(tr, transition)

  # two types of transfun
  tr1 <- transition(larva ~ egg, p(0.5))
  tr2 <- transition(egg ~ adult, r(10))

  # check they have the right class
  expect_s3_class(tr1, 'transition')
  expect_s3_class(tr2, 'transition')

  # check is.transition works on transitions
  expect_true(is.transition(tr1))
  expect_true(is.transition(tr2))

  # check is.transition works on non-transitions
  expect_false(is.transition(list()))
  expect_false(is.transition(NA))
  expect_false(is.transition(NULL))

  # check print.transition works
  expect_equal(capture.output(print(tr1)),
               'transition:	egg -> larva with probability 0.5')
  expect_equal(capture.output(print(tr2)),
               'transition:	adult -> egg with rate 10')

})