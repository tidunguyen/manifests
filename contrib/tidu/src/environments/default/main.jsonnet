local k = import 'github.com/grafana/jsonnet-libs/ksonnet-util/kausal.libsonnet';
{
  _config:: {
    tidu: {
      port: 80,
      name: 'tidu',
      image: 'tidu-kf-webapp'
    },
  },

  local deployment = k.apps.v1.deployment,
  local container = k.core.v1.container,
  tidu: {
    deployment: deployment.new(
      name=$._config.tidu.name,
      replicas=1,
      containers=[
        container.new($._config.tidu.name, $._config.tidu.image)
        + container.withPorts([port.new("api", $._config.prometheus.port)]),
      ]
    )
  },
}
