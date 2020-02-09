df :: Double -> Double
df x = 4 * x ** 3 - 9 * x ** 2

gradientDescent :: Double -> Double -> Double -> Double -> IO Double
gradientDescent gamma precision previousStepSize curX =
  if previousStepSize > precision
    then do
      let newX = curX - (gamma * df curX)
      print curX
      gradientDescent gamma precision (abs (newX - curX)) newX
    else return curX

runGradientDescent :: IO Double
runGradientDescent = gradientDescent gamma precision previousStepSize curX
 where
  curX             = 6
  gamma            = 0.01
  precision        = 0.0001
  previousStepSize = 1 / precision

main = do
  runGradientDescent
