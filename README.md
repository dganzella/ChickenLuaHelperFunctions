# ChickenLuaHelperFunctions
Helper functions for array, string and table in lua


## Array

```
arrMap(arr, f)
arrFlip(arr)
arrFilter(arr, f)
arrContains(arr, val)
arrConcat(...)
arrIndexOf(arr, value)
arrFindFirst(arr, f)
arrFindFirstIndex(arr, f)
arrForEach(arr, f)
arrReduce(arr, initial, f)
arrSome(arr, f)
```

## String

```
strCharAt(inputstr, at)
strContains(inputstr, of)
strCountOcurrences(inputstr, of)
strReplaceAt(inputstr, at, replaceWith)
strFirstIndexOf(inputstr, tofind)
strLastIndexOf(inputstr, tofind)
strSplit(inputstr, sep)
strTrimSpaces(inputstr)
stringMatchManyPatterns(inputstr, patternList)
strJoin(inputstrarr, joinStr)
strReplace(inputstr, target, replacement)
strMultiReplace(inputstr, targets, replacement)
```

## Table


```
tblGetKeys(t)
tblGetValues(t)
tblShallowCopy(t)
```
