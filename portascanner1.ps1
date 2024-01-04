param($ip, $porta)
if (!$ip){

echo "Scanner de Porta - Toxyz "
echo "Como se usa: ./portascanner1.ps1 192.168.0.1 21"

}else{

$portasimportante = 21,22,25,443,3306, 80, 81, 8080, 8181,2222;
foreach($porta in $portasimportante){
if (Test-NetConnection $ip  -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet){
  echo "Porta $porta aberta"
}}else{

  echo "Porta $porta fechada"
}
}