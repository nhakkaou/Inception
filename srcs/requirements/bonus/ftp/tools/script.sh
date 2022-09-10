adduser sammy;
echo "sammy:test" | chpasswd;
mkdir -p /home/sammy/ftp
chown nobody:nogroup /home/sammy/ftp
chmod a-w /home/sammy/ftp
ls -la /home/sammy/ftp
mkdir -p /home/sammy/ftp/files
chown sammy:sammy /home/sammy/ftp/files
ls -la /home/sammy/ftp
echo "vsftpd test file" | sudo tee /home/sammy/ftp/files/test.txt
echo "vsftpd test file" | tee /home/sammy/ftp/files/test.txt
echo "sammy" | tee -a /etc/vsftpd.userlist
cat /etc/vsftpd.userlist
service vsftpd start
/usr/sbin/vsftpd;