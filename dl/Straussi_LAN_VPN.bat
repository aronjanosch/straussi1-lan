::DNS für ZeroTier Adapter für Straussi LAN einstellen

call zerotier-cli join d3ecf5726dac875d

echo ZeroTier Adapter created
echo Please accept the new Network...

timeout /t 5 /nobreak > nul

netsh interface ipv4 set dns "ZeroTier One [d3ecf5726dac875d]" static 192.168.192.1
netsh interface ipv4 set interface "ZeroTier One [d3ecf5726dac875d]" metric=1

echo ZeroTier Adapter configured
echo Flushing DNS
ipconfig /flushdns

timeout /t 5 /nobreak > nul
echo Success

timeout 5