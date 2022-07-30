mkdir /home/backup/
while(true)
{
    echo "Backup in progress..."
    $tmp = /home/backup/`date +%F`
    mkdir $tmp
    cp -r /home/ $tmp
    echo "Backup done."
    #  backup every 4 hours
    sleep 240
}
