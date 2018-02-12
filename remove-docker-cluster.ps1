# Run script with Administrator rights
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -NoNewWindow -File `"$PSCommandPath`"" -Verb RunAs; exit }

docker-machine rm  manager-0 -f

docker-machine rm  worker-0 -f
docker-machine rm  worker-1 -f
docker-machine rm  worker-2 -f

docker-machine rm  dtr-0 -f

docker-machine ls