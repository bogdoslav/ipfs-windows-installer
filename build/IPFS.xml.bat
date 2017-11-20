rem This file generates XML file for IPFS task
del IPFS.temp.xml
del IPFS.utf16.xml
echo       ^<Command^>%cd%\ipfs.exe^</Command^>>>IPFS.temp.xml
rem convert to UTF-16
CMD /U /C Type IPFS.temp.xml>>IPFS.utf16.xml
copy IPFS.1.xml+IPFS.utf16.xml+IPFS.2.xml IPFS.xml /Y
del IPFS.temp.xml
del IPFS.utf16.xml


