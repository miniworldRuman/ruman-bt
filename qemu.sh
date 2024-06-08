apk update
apk add libvirt-daemon qemu-img qemu-system-x86_64 qemu-modules
wget https://o.of.cd/client/OpenFRP_0.57.0_e511492b_20240423/frpc_linux_amd64.tar.gz
tar xf frpc_linux_amd64.tar.gz
chmod 777 *
wget https://mirrors.tuna.tsinghua.edu.cn/osdn/android-x86/69704/android-x86-8.1-r2.iso
qemu-system-x86_64 -hda android.qcow2 -cdrom android-x86-8.1-r2.iso -boot d -m 8192 -vnc :1 -vga vmware -net user -net nic,model=e1000 -cpu host,kvm=on -smp 8 & ./frpc_linux_amd64 -u 13c26992495e6ccf235034385944ee30 -p 453388
