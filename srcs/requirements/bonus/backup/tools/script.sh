mkdir -p /home/backup/
now=$(date +%m_%d_%Y_%H_%M)
echo "Backup in progress..."
mkdir -p /home/$now
cp -r /home/backup/* /home/$now/
echo "Backup done."