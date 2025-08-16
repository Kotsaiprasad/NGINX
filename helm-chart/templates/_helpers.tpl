{{/*
Generate a fullname for the chart
*/}}
{{- define "nodeapp.fullname" -}}
{{ .Release.Name }}
{{- end -}}
