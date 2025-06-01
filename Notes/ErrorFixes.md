# ErrorFixes

Fixes to error I encounter every now and then can be found here.

### Sudo password 🔑

```bash
faillock --reset
```

### Screenshare 🖥️

```bash
systemctl --user restart xdg-desktop-portal
```
### Network `default` virt-manager

1. Add `default` network and use `/usr/share/libvirt/networks/default.xml` to define it

```bash
<network>
  <name>default</name>
  <uuid>$(uuidgen)</uuid>
  <forward mode='nat'/>
  <bridge name='virbr0' stp='on' delay='0'/>
  <ip address='192.168.122.1' netmask='255.255.255.0'>
    <dhcp>
      <range start='192.168.122.2' end='192.168.122.254'/>
    </dhcp>
  </ip>
</network>
```

```bash
sudo systemctl restart network
sudo systemctl restart libvirtd
virsh net-start default
virsh net-autostart default
virsh net-list --all
```
