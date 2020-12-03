local d = import "doc-util/main.libsonnet";

{
  obj: {
    '#values': d.fn(
      |||
        `values` takes an object and returns an array where each element of the array are the field _values_ in the object.
      |||,
      [d.arg('o', d.T.object)]),
    values(o):: [o[field] for field in std.objectFields(o)],

    '#all': d.fn(
      |||
        `all` returns true when the function provided returns true for all values in an object

        > `PARAMETERS`

        * `fn (function(x) bool)` - where `x` is the value of a field in the root object; and a boolean is returned
        * `o (object)` - the object to evaluate

        > `RETURNS`

        `bool`
      |||,
      [d.arg('fn', d.T.func), d.arg('o', d.T.object)]),
    all(fn, o):: $.arrays.all(fn, self.values(o)),

    '#allFields': d.fn(
      |||
        `allFields` returns true when the function provided returns true for all field names in an object

        > `PARAMETERS`

        * `fn (function(x) bool)` - where `x` is the field name of a field in the root object; and a boolean is returned
        * `o (object)` - the object to evaluate

        > `RETURNS`

        `bool`
      |||,
      [d.arg('fn', d.T.func), d.arg('o', d.T.object)]),
    allFields(fn, o):: $.arrays.all(fn, std.objectFields(o)),

    '#valuesPruned': d.fn(
      |||
        `valuesPruned` is shorthand for `std.prune(lm.object.values(o))`
      |||,
      [d.arg('o', d.T.object)]),
    valuesPruned(o):: std.prune(self.values(o)),

    '#keysAfterPrune': d.fn(
      |||
        `keysAfterPrune` is shorthand for `std.objectFields(std.prune(o))`
      |||,
      [d.arg('o', d.T.object)]),
    keysAfterPrune(o):: std.objectFields(std.prune(o)),

    '#lookup': d.fn(
      |||
        `lookup` retrieves the value of a single element from an object, given its field. If the given field does not exist, a the given default value is returned instead.
      |||,
      [d.arg('obj', d.T.object), d.arg('field', d.T.string), d.arg('default', d.T.any)],
    ),
    lookup(obj, field, default):: (if std.objectHas(obj, field) then obj[field] else default),
  },
}