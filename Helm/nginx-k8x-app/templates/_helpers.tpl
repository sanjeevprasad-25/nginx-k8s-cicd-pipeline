{{- define "nginx_k8s.name" -}}
{{- .Values.app -}}
{{- end -}}

{{- define "nginx_k8s.labels" -}}
app: {{ include "nginx_k8s.name" . }}
env: {{ .Values.environment }}
{{- end -}}