{{/*
Generate a fullname for the chart
*/}}
# helm-chart/templates/_helpers.tpl
{{- define "helm-chart.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "helm-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "helm-chart.labels" -}}
app.kubernetes.io/name: {{ include "helm-chart.name" . }}
helm.sh/chart: {{ include "helm-chart.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "helm-chart.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}

