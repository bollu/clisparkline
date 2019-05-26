# clisparkline

Sparklines are tiny charts to visually present data, like so: `_▁▂▃▄▅▆▇█`

`clisparklines` is a tiny haskell library to print sparklines on the CLI.

##### Example program

```hs
import System.Console.Sparkline
main = seriesPrintSpark $ [0, 1, 2, 3, 2, 1]
```

##### Output

```
_▂▅█▅▂
```
