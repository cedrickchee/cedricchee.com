+++
title = "First Taste of Generics in Go"
#description = "This is a showcase post."
date = 2020-07-19T12:15:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["go", "programming"]

[extra]
ToC = false
+++

This [friendly, down-to-earth tutorial](https://bitfieldconsulting.com/golang/generics) explains what generic functions and types are, why we need them, how they work in Go, and where we can use them.

## Generic functions in Go

```go
func PrintAnything(type T)(thing T) {
}

func main() {
    PrintAnything(int)(99)
}
```
