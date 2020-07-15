local d = import "doc-util/main.libsonnet";

{
  arrays: {
    '#all': d.fn(
      |||
        `all` passes each element of the collection to the given function.
        `all` returns true if the function provided never returns false.

        > `PARAMETERS`

        * `fn (function(x) bool)` - where `x` is a value from the array; and a boolean is returned
        * `o (object)` - the object to evaluate

        > `RETURNS`

        `bool`
      |||,
      [d.arg('fn', d.T.func), d.arg('arr', d.T.array)]),
    all(fn, arr):: (
      std.length(std.filter(fn, arr)) == std.length(arr)
    ),

    '#any': d.fn(
      |||
        `any` passes each element of the collection to the given function.
        `any` returns true if the function provided ever returns true.

        > `PARAMETERS`

        * `fn (function(x) bool)` - where `x` is a value from the array; and a boolean is returned
        * `o (object)` - the object to evaluate

        > `RETURNS`

        `bool`
      |||,
      [d.arg('fn', d.T.func), d.arg('arr', d.T.array)]),
    any(fn, arr):: (
      std.length(std.filter(fn, arr)) == std.length(arr)
    ),
  },
}