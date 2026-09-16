{{- define "agent-sandbox.name" -}}
{{- required "name is required, e.g. --set name=travel-agent" .Values.name -}}
{{- end -}}

{{- define "agent-sandbox.templateName" -}}
{{- include "agent-sandbox.name" . }}-template
{{- end -}}

{{- define "agent-sandbox.warmpoolName" -}}
{{- include "agent-sandbox.name" . }}-warmpool
{{- end -}}

{{- define "agent-sandbox.claimName" -}}
{{- .Values.claim.name | default (include "agent-sandbox.name" .) -}}
{{- end -}}
 