$headers=@{}
$headers.Add("user-agent", "vscode-restclient")
$headers.Add("accept", "application/json")
$headers.Add("content-type", "application/json")
$headers.Add("authorization", "Basic YWRtaW46YWRtaW4=")
Invoke-WebRequest -Uri 'http://localhost:3000/api/datasources' -Method POST -Headers $headers -ContentType 'application/json' -Body '{"name":"Loki","type":"loki","url":"http://loki:3100","access":"proxy","user":"","database":"","basicAuth":false}'