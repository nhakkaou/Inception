mkdir -p ~/backup/
while(true)
do
    echo "Backup in progress..."
    mkdir -p ~/backup/$(date +%F)
    cp -r /home/backup/* ~/backup/$(date +%F)
    echo "Backup done."
    #  backup every 4 hours
    sleep 24h
done