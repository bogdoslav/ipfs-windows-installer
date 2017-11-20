call uninstall.bat
ipfs.exe init
rem schtasks /Create /F /NP /RL highest /SC ONSTART /TR "%cd%\ipfs.exe daemon" /TN "IPFS"
call IPFS.xml.bat
Schtasks /Create /XML IPFS.xml /TN IPFS
netsh advfirewall firewall add rule name="IPFS in" dir=in program="%cd%\ipfs.exe" security=authnoencap action=allow
netsh advfirewall firewall add rule name="IPFS out" dir=out program="%cd%\ipfs.exe" security=authnoencap action=allow
rem schtasks /Run /TN "IPFS" 
call ipfs.bat