Start-Process ".\docker-20.10.14\docker\dockerd.exe" -ArgumentList "-D --experimental" -WindowStyle Hidden
Write-Output "Wait 15 seconds for dockerd to start. Then run the containers"
Start-Sleep -s 15
Start-Process ".\docker-20.10.14\docker\docker.exe" -ArgumentList "system prune -af" -WindowStyle Hidden
.\docker-compose.exe -f stt-ukr-docker-compose.yml up -d 
.\docker-compose.exe -f entities-extractor-xlu-docker-compose.yml up -d
.\docker-compose.exe -f sarasvati-docker-compose.yml up -d
Read-Host -Prompt "Press Enter to exit"