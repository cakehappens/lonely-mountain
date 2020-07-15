local d = import "doc-util/main.libsonnet";

{
    '#manifestJsonOneLine': d.fn(
    |||
      `manifestJsonOneLine` takes a value of any type, and returns the json representation in a single non-prettified line.
    |||,
    [d.arg('o', d.T.any)]),
  manifestJsonOneLine(o):: (
    std.strReplace(std.manifestJsonEx(o, ""), "\n", "")
  ),
}