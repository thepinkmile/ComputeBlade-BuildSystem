kubectl create namespace awx
# pause for ~60 seconds
kubectl apply -k awx-operator/
# pause for ~60 seconds

# get initial admin password (AWX Dashboard @ `http://localhost/`)
[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String((kubectl get secret awx-local-admin-password -n awx -o jsonpath="{.data.password}")))

