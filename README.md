# clisparkline


![Hackage](https://img.shields.io/hackage/v/clisparkline.svg)


Sparklines are tiny charts to visually present data, like so: `_▁▂▃▄▅▆▇█`

`clisparklines` is a tiny haskell library to print sparklines on the CLI.

##### Example program

```hs
import System.Console.Sparkline
main = putStrLn . series2spark $ [0, 1, 2, 3, 2, 1]
```

##### Output

```
_▂▅█▅▂
```
