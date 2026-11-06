kubectl create namespace awx
Start-Sleep -Seconds 60

kubectl apply -k awx-operator/
Start-Sleep -Seconds 120

kubectl apply -k awx-instance/
Start-Sleep -Seconds 120

# get initial admin password (AWX Dashboard @ `http://localhost/`)
[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String((kubectl get secret awx-local-admin-password -n awx -o jsonpath="{.data.password}")))
