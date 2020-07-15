local d = import "doc-util/main.libsonnet";

{
  '#objectValues': d.fn(
    |||
      `objectValues` takes an object and returns an array where each element of the array are the field _values_ in the object.
    |||,
    [d.arg('o', d.T.object)]),
  objectValues(o):: [o[field] for field in std.objectFields(o)],
}