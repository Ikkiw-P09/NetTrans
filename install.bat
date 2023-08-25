cd %userprofile%/Desktop
mkdir NetTrans
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
net share NetworkFiles= %userprofile%/Desktop/NetTrans /grant:everyone, read
echo Your IP address for access NetTrans from another devices.
ipconfig | findstr /C:Address