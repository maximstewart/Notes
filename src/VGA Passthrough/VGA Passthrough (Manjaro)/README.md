# Passthrough Helper for Manjaro

Run this script using su instead of sudo. The ">" redirects of echo will not work otherwise.


# Edit /etc/default/grub

intel_iommu=on (or) amd_iommu=on\
rd.driver.pre=vfio-pci\
kvm.ignore_msrs=1


# Edit /etc/mkinitcpio.conf

MODULES="vfio_pci vfio vfio_iommu_type1 vfio_virqfd"\
FILES="/usr/bin/vfio-pci-override.sh"\
Hooks="... vfio ...."


# Tutorial

* https://www.youtube.com/watch?v=QlGx0XvWuag

# "Error 43: Driver failed to load" on Nvidia GPUs passed to Windows VMs
* https://wiki.archlinux.org/index.php/PCI_passthrough_via_OVMF#%22Error_43:_Driver_failed_to_load%22_on_Nvidia_GPUs_passed_to_Windows_VMs

# Sources

* https://wiki.archlinux.org/index.php/PCI_passthrough_via_OVMF#Using_identical_guest_and_host_GPUs
* https://forum.manjaro.org/t/virt-manager-fails-to-detect-ovmf-uefi-firmware/110072
