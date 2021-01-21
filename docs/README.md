---
permalink: /
---

# package lm

```jsonnet
local lm = import "github.com/cakehappens/lonely-mountain/main.libsonnet"
```

random useful functions

## Index

* [`obj arrays`](#obj-arrays)
  * [`fn all(fn, arr)`](#fn-arraysall)
  * [`fn any(fn, arr)`](#fn-arraysany)
* [`obj container`](#obj-container)
  * [`fn array(x)`](#fn-containerarray)
  * [`fn keyValuePairs(o)`](#fn-containerkeyvaluepairs)
* [`obj encoding`](#obj-encoding)
  * [`fn manifestJsonOneLine(o)`](#fn-encodingmanifestjsononeline)
* [`obj obj`](#obj-obj)
  * [`fn all(fn, o)`](#fn-objall)
  * [`fn allFields(fn, o)`](#fn-objallfields)
  * [`fn keysAfterPrune(o)`](#fn-objkeysafterprune)
  * [`fn lookup(obj, field, default)`](#fn-objlookup)
  * [`fn lookupAll(obj, field, default)`](#fn-objlookupall)
  * [`fn values(o)`](#fn-objvalues)
  * [`fn valuesPruned(o)`](#fn-objvaluespruned)
* [`obj reflection`](#obj-reflection)
  * [`fn arrayOfType(arr, arr)`](#fn-reflectionarrayoftype)
* [`obj strings`](#obj-strings)
  * [`fn capitalize(o)`](#fn-stringscapitalize)

## Fields

## obj arrays



### fn arrays.all

```ts
all(fn, arr)
```

`all` passes each element of the collection to the given function.
`all` returns true if the function provided never returns false.

> `PARAMETERS`

* `fn (function(x) bool)` - where `x` is a value from the array; and a boolean is returned
* `o (object)` - the object to evaluate

> `RETURNS`

`bool`


### fn arrays.any

```ts
any(fn, arr)
```

`any` passes each element of the collection to the given function.
`any` returns true if the function provided ever returns true.

> `PARAMETERS`

* `fn (function(x) bool)` - where `x` is a value from the array; and a boolean is returned
* `o (object)` - the object to evaluate

> `RETURNS`

`bool`


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



### fn obj.all

```ts
all(fn, o)
```

`all` returns true when the function provided returns true for all values in an object

> `PARAMETERS`

* `fn (function(x) bool)` - where `x` is the value of a field in the root object; and a boolean is returned
* `o (object)` - the object to evaluate

> `RETURNS`

`bool`


### fn obj.allFields

```ts
allFields(fn, o)
```

`allFields` returns true when the function provided returns true for all field names in an object

> `PARAMETERS`

* `fn (function(x) bool)` - where `x` is the field name of a field in the root object; and a boolean is returned
* `o (object)` - the object to evaluate

> `RETURNS`

`bool`


### fn obj.keysAfterPrune

```ts
keysAfterPrune(o)
```

`keysAfterPrune` is shorthand for `std.objectFields(std.prune(o))`


### fn obj.lookup

```ts
lookup(obj, field, default)
```

`lookup` retrieves the value of a single element from an object, given its field. If the given field does not exist, a the given default value is returned instead.


### fn obj.lookupAll

```ts
lookupAll(obj, field, default)
```

`lookupAll` is like `lookup` but includes hidden fields.


### fn obj.values

```ts
values(o)
```

`values` takes an object and returns an array where each element of the array are the field _values_ in the object.


### fn obj.valuesPruned

```ts
valuesPruned(o)
```

`valuesPruned` is shorthand for `std.prune(lm.object.values(o))`


## obj reflection



### fn reflection.arrayOfType

```ts
arrayOfType(arr, arr)
```

`arrayOfType` takes an array and a type as a string (see [std.type(x)](https://jsonnet.org/ref/stdlib.html)).
Returns true if all elements in the array of the desired type, otherwise false.

Example usage: 

```jsonnet
assert assertion.arrayOfType(["a", 1], "string") : "not all items are strings";
```


## obj strings



### fn strings.capitalize

```ts
capitalize(o)
```

`capitalize` takes an string and capitalizes the first letter.
