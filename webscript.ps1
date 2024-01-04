
$site = Read-Host "Digite o site desejado"
$web = Invoke-WebRequest -uri "$site" -Method Options
echo "O servidor roda"
$web.headers.server
echo "--------------"
echo "O servidor aceita os metodos"
$web.headers.allow
echo "--------------"
echo "Links achados"
$web = Invoke-WebRequest -uri ("$site")
$web.links.href | Select-String http://