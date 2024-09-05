# Use an official Ubuntu 24.04 base image  
FROM ubuntu:24.04  
  
# Update the package index  
RUN apt-get update && apt-get install -y \  
    qemu-kvm \  
    libvirt-daemon-system \  
    bridge-utils \  
    virt-manager \  
    && rm -rf /var/lib/apt/lists/*  
  
# Expose ports for libvirt (optional, depends on your setup)  
EXPOSE 16509  5901
  
# Start libvirtd on container start (NOT recommended for real use, just for demonstration)  
CMD ["/usr/sbin/libvirtd", "--listen"]  
  
# You may want to set up KVM networking and storage properly  
# This is just a starting point