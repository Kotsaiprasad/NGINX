{{/*
Generate a fullname for the chart
*/}}
# helm-chart/templates/_helpers.tpl

{{- define "helm-chart.fullname" -}}
{{ .Release.Name }}
{{- end -}}
