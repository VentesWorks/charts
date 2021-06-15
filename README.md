# Helm Charts

Helm charts for deploying Python web and backend applications.

[Helm](https://helm.sh) must be installed to use the charts. For more information on using Helm, refer to the [Helm documentation](https://github.com/kubernetes/helm#docs). For a quick introduction to Charts, see the [Chart Guide](https://helm.sh/docs/topics/charts/).

## Requirements

1. Kubernetes 1.20+
2. Helm 3.0+

## How Do I Install These Charts?

```sh
helm repo add leadbook https://ventesworks.github.io/charts/repo/
```

You can then run `helm search repo leadbook` to see all charts.

To install a chart, check out `leadbook/<chart name>/values.yaml` and provide your custom `values.yaml` for your application.

```sh
helm install my-release leadbook/<chart name> -f values.yaml
```

## Uninstalling the Chart

To uninstall/delete the `my-release` release:

```sh
helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Work on the Chart

To view the rendered templates after editing:

```sh
helm template --debug my-release leadbook/app/ > output.yaml
```
