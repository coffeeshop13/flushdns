@echo off
echo Resetting TCP/IP stack...
netsh int ip reset
echo TCP/IP stack reset done.

echo Releasing IP address...
ipconfig /release
echo IP address released.

echo Renewing IP address...
ipconfig /renew
echo IP address renewed.

echo Flushing DNS cache...
ipconfig /flushdns
echo DNS cache flushed.

echo Resetting Winsock...
netsh winsock reset
echo Winsock reset done.

echo Clearing ARP cache...
netsh interface ip delete arpcache
echo ARP cache cleared.

echo Resetting network adapter settings...
netsh int ip reset resetlog.txt
echo Network adapter reset done.

echo Please restart your computer to apply the changes.
pause
