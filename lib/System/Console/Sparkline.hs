{-|
Module      : Sparkline
Description : generate string-sparklines to render to CLI from data
Copyright   : (c) Siddharth Bhat, 2019
License     : MIT
Maintainer  : siddu.druid@gmail.com

@series2sparkline@ allows one to convert a list of
@RealFloat@ into a string.

@seriesPrintSparkline@ prints a sparkline to stdout.
-}
module Sparkline where

-- | Characters in the sparkline
sparkchars :: String
sparkchars = "_▁▂▃▄▅▆▇█"

-- | Convert an int to a sparkline character
num2sparkchar :: RealFrac a => a -- ^ Max value
  -> a -- ^ Current value
  -> Char
num2sparkchar maxv curv =
   sparkchars !!
     (floor $ (curv / maxv) * (fromIntegral (length sparkchars - 1)))

-- | Convert a series into a sparkline string
series2sparkline :: RealFrac a => [a] -> String
series2sparkline vs =
  let maxv = if null vs then 0 else maximum vs
  in map (num2sparkchar maxv) vs

-- | Print a series to stdout.
seriesPrintSparkline :: RealFrac a => [a] -> IO ()
seriesPrintSparkline = putStrLn . series2sparkline
