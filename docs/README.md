---
permalink: /
---

# package lm

```jsonnet
local lm = import "github.com/cakehappens/lonely-mountain/main.libsonnet"
```

random useful functions

## Index

* [`obj assertion`](#obj-assertion)
  * [`fn arrayOfType(arr, arr)`](#fn-assertionarrayoftype)
* [`obj container`](#obj-container)
  * [`fn array(x)`](#fn-containerarray)
  * [`fn keyValuePairs(o)`](#fn-containerkeyvaluepairs)
* [`obj encoding`](#obj-encoding)
  * [`fn manifestJsonOneLine(o)`](#fn-encodingmanifestjsononeline)
* [`obj obj`](#obj-obj)
  * [`fn objectValues(o)`](#fn-objobjectvalues)
* [`obj strings`](#obj-strings)
  * [`fn capitalize(o)`](#fn-stringscapitalize)

## Fields

## obj assertion



### fn assertion.arrayOfType

```ts
arrayOfType(arr, arr)
```

`arrayOfType` takes an array and a type as a string (see [std.type(x)](https://jsonnet.org/ref/stdlib.html)).
Returns true if all elements in the array of the desired type, otherwise false.

Example usage: 

```jsonnet
assert assertion.arrayOfType(["a", 1], "string") : "not all items are strings";
```


## obj container



### fn container.array

```ts
array(x)
```

`array` takes a single argument of any type.
If it is an array, it returns it, otherwise it is wrapped in an array.


### fn container.keyValuePairs

```ts
keyValuePairs(o)
```

`keyValuePairs` takes a single argument of type `object`.
It returns an array, where each element is in the form of `{k: v}` where `k` is the field, and `v` is the value of the field.


## obj encoding



### fn encoding.manifestJsonOneLine

```ts
manifestJsonOneLine(o)
```

`manifestJsonOneLine` takes a value of any type, and returns the json representation in a single non-prettified line.


## obj obj



### fn obj.objectValues

```ts
objectValues(o)
```

`objectValues` takes an object and returns an array where each element of the array are the field _values_ in the object.


## obj strings



### fn strings.capitalize

```ts
capitalize(o)
```

`capitalize` takes an string and capitalizes the first letter.
