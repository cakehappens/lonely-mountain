local d = import "doc-util/main.libsonnet";

{
  '#': d.pkg(
    name='lm',
    url='github.com/cakehappens/lonely-mountain/main.libsonnet',
    help='random useful functions',
  ),

  container: (import "./container.libsonnet"),
  encoding: (import "./encoding.libsonnet"),
  obj: (import "./obj.libsonnet"),
  assertion: (import "./assertion.libsonnet"),
  strings: (import "./strings.libsonnet"),
}
