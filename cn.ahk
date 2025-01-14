!v:: ; Ctrl + V
Send, %Clipboard%
return


Down:: ; Down Arrow
Pause
return

^1:: ; Ctrl + 1
Send, enable{Enter}
return

^2:: ; Ctrl + 2
Send, configure terminal
return

^3:: ; Ctrl + 3
Send, ip dhcp pool Router0
return

^4:: ; Ctrl + 4
Send, network 192.168.1.0 255.255.255.0
return

^5:: ; Ctrl + 5
Send, default-router 192.168.1.1
return

^6:: ; Ctrl + 6
Send, dns-server 8.8.8.8
return

^7:: ; Ctrl + 7
Send, ip dhcp excluded-address 192.168.1.1 192.168.1.10
Send, access-list 1 deny 192.168.3.0 0.0.0.255
return

^8:: ; Ctrl + 8
Send, access-list 1 permit any
return
