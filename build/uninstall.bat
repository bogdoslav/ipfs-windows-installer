schtasks /End /TN "IPFS"
netsh advfirewall firewall delete rule name="IPFS in" program="%cd%\ipfs.exe"
netsh advfirewall firewall delete rule name="IPFS out" program="%cd%\ipfs.exe"
schtasks /Delete /F /TN "IPFS"
rem taskkill /f /im ipfs.exe