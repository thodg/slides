% Thomas de Grivel <thoxdg@gmail.com>
% https://kmx.io/

# Title

## Frame 1

 - List item 1
 - List item 2


## Frame 2
```
(resource 'group "wifi"
          :gid 2300)
(resource 'file "/etc/wifi/wifi.conf"
          :owner "root"
          :group "wifi"
          :content (read-file "/etc/wifi/wifi.conf"))
```
