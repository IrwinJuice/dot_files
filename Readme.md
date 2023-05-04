## Timezone
```
timedatectl set-timezone Europe/Kyiv
```

## GitHub
For Auth on GitHub from terminal easiest way is using [GitHub CLI](https://github.com/cli/cli#installation)" 

## NVIDIA
-   Download Nvidia driver
- Change the permissions
```shell
chmod +x NVIDIA-Linux-x86_64-525.116.03.run
```
- Update system

```shell
sudo dnf update
```
- Reboot
```shell
sudo reboot
```
- Install the Nvidia driver compilation dependencies
```shell
sudo dnf install kernel-devel kernel-headers gcc make dkms acpid libglvnd-glx libglvnd-opengl libglvnd-devel pkgconfig
```
- Create and open a new configuration file.
```shell
sudo nvim /etc/modprobe.d/blacklist.conf
```
- Add the following lines to the file
```
blacklist nouveau
options nouveau modeset=0
```
- Open the Grub loader configuration file
```shell
sudo nvim /etc/default/grub
```
- Add <b> rd.driver.blacklist=nouveau</b> to the end of the line that starts with <b>GRUB_CMDLINE_LINUX=</b>
```
GRUB_CMDLINE_LINUX="rhgb quiet rd.driver.blacklist=nouveau"
```
- Update the Grub configuration file
```shell
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
```
- Remove the Xorg x11 driver with
```shell
sudo dnf remove xorg-x11-drv-nouveau
```
- Rebuild the kernel initramfs using:
```shell
systemctl set-default multi-user.target
```
- Reboot
```shell
sudo reboot
```
- Once the system restarts, log in as the administrator
- Start the installation process
```shell
sudo bash Downloads/NVIDIA-Linux-x86_64-525.116.03.run
```
- Yes, Yes, Yes ....
- Enable the GUI
```shell
systemctl set-default graphical.target
```
- Reboot
```shell
sudo reboot
```

## Terminal

Show all names(files, dirs) in current dir
```
ls -a | sort
```



