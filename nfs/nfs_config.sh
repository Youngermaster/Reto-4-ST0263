# Creating an NFS Share
# Creates a directory for the NFS share and installs the NFS server
sudo mkdir -p /srv/exports/wordpress
# Installs the NFS server
sudo apt -y install nfs-kernel-server
# Adds the NFS share to the exports file
sudo echo "/srv/exports/wordpress 10.0.5.0/24(rw,sync,no_root_squash,no_subtree_check)" >> /etc/exports
# the above line exports the directory /srv/exports/wordpress to any server in the 10.0.5.0/24 subnet. It allows Read-Write access. The sync option ensures all writes are completed to disk.
# Exports of the new NFS share
sudo exportfs

# Mounting the NFS Share on the WordPress Servers
# Installs the NFS client
sudo echo "10.0.5.11:/srv/exports/wordpress /var/www/html nfs auto 0 0" >> /etc/fstab
# Mounts the NFS share
sudo mount -a
# We should repeat the above steps on the second WordPress server
