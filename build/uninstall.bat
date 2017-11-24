schtasks /End /TN "IPFS"
netsh advfirewall firewall delete rule name=all program="%cd%\ipfs.exe"
schtasks /Delete /F /TN "IPFS"
rem taskkill /f /im ipfs.exe