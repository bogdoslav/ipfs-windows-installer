ipfs.exe init
start /B "" "ipfs.exe" daemon>%temp%\IPFS_output.txt 
timeout 1
start "" http://localhost:8080/ipfs/QmYwAPJzv5CZsnA625s3Xf2nemtYgPpHdWEz79ojWnPbdG/readme
