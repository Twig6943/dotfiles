# ErrorFixes

Fixes to errors I encounter every now and then can be found here.

## Sudo password

```bash
faillock --reset
```

## Screenshare

```bash
systemctl --user restart xdg-desktop-portal
```

## Unable to connect to libvirt

```bash
sudo systemctl restart libvirtd
sudo systemctl restart network
```

## Network `default` virt-manager

1. Add `default` network and use `/usr/share/libvirt/networks/default.xml` to define it

### The XML file (In case it doesn't exist)

```bash
<network>
  <name>default</name>
  <uuid>9a05da11-e96b-47f3-8253-a3a482e445f5</uuid>
  <forward mode='nat'/>
  <bridge name='virbr0' stp='on' delay='0'/>
  <mac address='52:54:00:0a:cd:21'/>
  <ip address='192.168.122.1' netmask='255.255.255.0'>
    <dhcp>
      <range start='192.168.122.2' end='192.168.122.254'/>
    </dhcp>
  </ip>
</network>
```

```bash
sudo virsh net-destroy default
sudo virsh net-undefine default
sudo virsh net-define --file default.xml
sudo virsh net-start default
sudo virsh net-autostart default
sudo virsh net-list --all
sudo systemctl restart libvirtd
sudo systemctl restart network
```
