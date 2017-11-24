rem call IPFS.xml.bat
rem Schtasks /Create /XML IPFS.xml /TN IPFS
netsh advfirewall firewall delete rule name=all program="%cd%\ipfs.exe"
netsh advfirewall firewall add rule name="IPFS in" dir=in program="%cd%\ipfs.exe" action=allow 
netsh advfirewall firewall add rule name="IPFS out" dir=out program="%cd%\ipfs.exe" action=allow 
rem schtasks /Run /TN "IPFS" 
