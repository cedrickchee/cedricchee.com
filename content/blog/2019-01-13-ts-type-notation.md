+++
title = "TypeScript Type Notation"
#description = "This is a showcase post."
date = 2019-01-13T18:59:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["typescript", "javascript"]

[extra]
ToC = false
+++

Recently, I often see developers sharing fairly complicated TypeScript code that I couldn't wrap my mind around easily.
I want to understand TypeScript better. So, this post will take a fairly complicated TypeScript example and try to break it down.

```typescript
interface Array<T> {
  concat(...items: Array<T[] | T>): T[];
  reduce<H>(
    callback: (state: H, element: H, index: number, array: T[]) => H,
    firstState?: H): H;
  ···
}
```

This is an interface for an Array whose elements are of type T that we have to fill in whenever we use this interface:
- method `.concat()` has zero or more parameters (defined via the rest operator `...`). Each of those parameters has the type `T[]|T`. That is, it is either an Array of `T` values or a single `T` value.
- method `.reduce()` introduces its own type variable, `U`. `U` expresses the fact that the following entities all have the same type (which you don’t need to specify, it is inferred automatically):
  - Parameter `state` of `callback()` (which is a function)
  - Result of `callback()`
  - Optional parameter `firstState` of `.reduce()`
  - Result of `.reduce()`

`callback` also gets a parameter element whose type has the same type `T` as the Array elements, a parameter `index` that is a number and a parameter `array` with `T` values.

The explanations above were written after I read and ["understand TypeScript's type notation"](https://2ality.com/2018/04/type-notation-typescript.html). It's a good post by 2ality.

I also refer to a few learning resources below to help me demystified the previous code:

- [The definitive guide to TypeScript and possibly the best TypeScript book. Free and Open Source](https://github.com/basarat/typescript-book). (_this is the book where I used the second time when I picked up TypeScript seriously in Aug 2018. The first time was when TypeScript 2.0 was released in Sept 2016._)
- [A cheatsheet for React users using TS with React for the first (or nth!) time](https://github.com/sw-yx/react-typescript-cheatsheet)
