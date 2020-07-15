local d = import "doc-util/main.libsonnet";

{
  arrays: {
    '#all': d.fn(
      |||
        `all` returns true when the function provided returns true for all values in an array

        > `PARAMETERS`

        * `fn (function(x) bool)` - where `x` is the value of from the array; and a boolean is returned
        * `o (object)` - the object to evaluate

        > `RETURNS`

        `bool`
      |||,
      [d.arg('fn', d.T.func), d.arg('arr', d.T.array)]),
    all(fn, arr):: (
      std.length(std.filter(fn, arr)) == std.length(arr)
    ),
  },
}