local d = import "doc-util/main.libsonnet";

{
  strings: {
    '#capitalize': d.fn(
      |||
        `capitalize` takes an string and capitalizes the first letter.
      |||,
      [d.arg('o', d.T.object)]),
    capitalize(str):: std.asciiUpper(str[0]) + std.substr(str, 1, std.length(str) - 1),
  },
}