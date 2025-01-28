!1:: ; Hotkey Ctrl+1 for AL1
Send, AL1:
Send, 1-99-st al
Send, en
Send, conf t
Send, acc list 1 deny 172.16.10.0 0.0.0.255
Send, acc l 1 permit any
Send, int g
Send, int gigabitEthernet 0/1
Send, ip acc g 1 out
Send, exit
return

!2:: ; Hotkey Ctrl+2 for AL2
Send, AL2:
Send, 1-99-st al
Send, en
Send, conf t
Send, acc l 2 deny host 172.16.10.3 /0.0.0.0
Send, acc l 2 permit any
Send, int g
Send, int gigabitEthernet 0/1
Send, ip acc g 2 out
Send, exit
return

!3:: ; Hotkey Ctrl+3 for AL ext
Send, AL ext:
Send, en
Send, conf t
Send, acc 
Send, acc l 100 deny ip 192.168.3.0 0.0.0.255 host 192.168.1.11
Send, acc 
Send, acc l 100 permit ip any any
Send, int g
Send, int gigabitEthernet 0/1
Send, ip acc group 100 in
Send, exit
Send, en
Send, conf t
Send, acc 
Send, acc l 101 deny tcp 192.168.4.0 0.0.0.255 host 192.168.1.11 eq www
Send, acc 
Send, acc l 101 permit ip any any
Send, int g
Send, int gigabitEthernet 0/1
Send, ip acc group 101 in
Send, exit
return

!4:: ; Hotkey Ctrl+4 for AL ext (continued)
Send, AL ext:
Send, en
Send, conf t
Send, acc l 102 permit ip 192.168.2.0 0.0.0.255 host 192.168.1.11
Send, acc l 102 deny ip any host 192.168.1.11
Send, acc l 102 permit ip any any
Send, int g
Send, int gigabitEthernet 0/0
Send, ip acc 
Send, ip acc g 102 out
Send, exit
return

!5:: ; Hotkey Ctrl+5 for NT(stat)
Send, NT(stat):
Send, en
Send, "sh run"
Send, conf t
Send, ip nat inside source static 192.168.12.12(local addr) 209.165.200.241
Send, ip nat inside source static 192.168.11.11(local addr) 209.165.200.242
Send, int s 0/1/1
Send, ip nat outside 
Send, exit
Send, int s
Send, int serial 0/0/0
Send, ip nat inside
Send, ext
Send, int serial 0/0/1
Send, ip nat inside
Send, ext
Send, int g 0/0
Send, int gigabitEthernet 0/0
Send, ip nat inside
Send, exit
return

!6:: ; Hotkey Ctrl+6 for NT(dyna)
Send, NT(dyna):
Send, conf t
Send, acc
Send, acc-list 1 per 192.168.10.0 0.0.0.255
Send, acc-list 1 per 192.168.11.0 0.0.0.255
Send, acc-list 1 per 192.168.12.0 0.0.0.255

Send, ip nat pool NAT-POOL ?
Send, ip nat pool NAT-POOL 209.165.200.243 209.165.200.245 ne
Send, ip nat pool NAT-POOL 209.165.200.243 209.165.200.245 netmask 255.255.255.248

Send, ip nat inside source ?
Send, ip nat inside source list 1 pool NAT-POOL 

Send, int
Send, interface s0/1/1
Send, ip nat outside
Send, exit
Send, int se
Send, int serial 0/0/0
Send, ip nat in
Send, exit
Send, int
Send, int g0/0
Send, ip nat in
Send, exit
return
