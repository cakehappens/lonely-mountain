local d = import "doc-util/main.libsonnet";

{
  '#': d.pkg(
    name='lm',
    url='github.com/cakehappens/lonely-mountain/main.libsonnet',
    help='random useful functions',
  ),
} +
  (import "./container.libsonnet") +
  (import "./encoding.libsonnet") +
  (import "./obj.libsonnet") +
  (import "./reflection.libsonnet") +
  (import "./strings.libsonnet") +
  (import "./arrays.libsonnet")
