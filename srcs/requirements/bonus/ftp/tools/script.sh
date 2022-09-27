useradd -u 3434 -g users -d /home/sammy -s /bin/bash -p $(echo "test" | openssl passwd -1 -stdin) sammy
mkdir -p /home/sammy/ftp
chown -R sammy: /home/sammy;
mkdir -p /home/sammy/ftp/files
echo "vsftpd test file" | tee /home/sammy/ftp/files/test.txt
echo "sammy" | tee -a /etc/vsftpd.userlist
service vsftpd start
# /usr/sbin/vsftpd;
tail -f > /dev/null
