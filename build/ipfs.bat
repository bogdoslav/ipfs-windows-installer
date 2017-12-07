ipfs.exe init
start /B "" "ipfs.exe" daemon>%temp%\IPFS_output.txt 
ping 127.0.0.1 -n 6 > nul
start "" http://localhost:8080/ipfs/QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG/readme
