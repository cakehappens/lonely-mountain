local d = import "doc-util/main.libsonnet";

{
  '#arrayOfType': d.fn(
    |||
      `arrayOfType` takes an array and a type as a string (see [std.type(x)](https://jsonnet.org/ref/stdlib.html)).
      Returns true if all elements in the array of the desired type, otherwise false.

      Example usage: 
      
      ```jsonnet
      assert assertion.arrayOfType(["a", 1], "string") : "not all items are strings";
      ```
    |||,
    [d.arg('arr', d.T.array), d.arg('arr', d.T.string)]),
  arrayOfType(arr, type):: (
    std.length(
      std.filter(
        function(v) (
          std.type(v) == type
        ),
        arr
      )
    ) == std.length(arr)
  ),
}