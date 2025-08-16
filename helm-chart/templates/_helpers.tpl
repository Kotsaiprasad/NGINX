{{/*
Generate the chart name (e.g., "helm-chart")
*/}}
{{- define "helm-chart.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Generate the full name: "<release-name>-<chart-name>", truncated to 63 chars max
*/}}
{{- define "helm-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Generate consistent labels for your resources
*/}}
{{- define "helm-chart.labels" -}}
app.kubernetes.io/name: {{ include "helm-chart.name" . }}
helm.sh/chart: {{ include "helm-chart.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Generate chart version label (e.g., "helm-chart-0.1.0")
*/}}
{{- define "helm-chart.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}


