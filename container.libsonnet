local d = import "doc-util/main.libsonnet";

{
  container: {
    '#array': d.fn(
      |||
        `array` takes a single argument of any type.
        If it is an array, it returns it, otherwise it is wrapped in an array.
      |||,
      [d.arg('x', d.T.any)]),
    array(x):: (if std.type(x) == "array" then x else [x]),

    '#keyValuePairs': d.fn(
      |||
        `keyValuePairs` takes a single argument of type `object`.
        It returns an array, where each element is in the form of `{k: v}` where `k` is the field, and `v` is the value of the field.
      |||,
      [d.arg('o', d.T.object)]),
    keyValuePairs(o):: [
      { [k]: o[k] } for k in std.objectFields(o)
    ],
  },
}
