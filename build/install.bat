call uninstall.bat
netsh advfirewall firewall add rule name="IPFS in" dir=in program="%cd%\ipfs.exe" security=authnoencap action=allow
netsh advfirewall firewall add rule name="IPFS out" dir=out program="%cd%\ipfs.exe" security=authnoencap action=allow
ipfs.exe init
schtasks /Create /F /NP /RL highest /SC ONSTART /TR "%cd%\ipfs.exe daemon" /TN "IPFS"
schtasks /Run /TN "IPFS"
start ipfs.exe daemon