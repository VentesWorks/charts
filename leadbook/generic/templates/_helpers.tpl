{{/*
Return the proper generic_app image name
*/}}
{{- define "generic.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.generic_app.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "generic.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.generic_app.image) "global" .Values.global) -}}
{{- end -}}

{{/*
Compile all warnings into a single message.
*/}}
{{- define "generic.validateValues" -}}
{{- $messages := list -}}
{{- $messages := without $messages "" -}}
{{- $message := join "\n" $messages -}}

{{- if $message -}}
{{-   printf "\nVALUES VALIDATION:\n%s" $message -}}
{{- end -}}
{{- end -}}
