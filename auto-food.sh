  
#!/usr/bin/sh

sudo chmod 777 /home/pi/nCube-sparrow-dry-100-v2/
cd /home/pi/nCube-sparrow-dry-100-v2
sudo chmod 777 *
python3 start.py
git stash
git pull
sleep 5
git stash pop
python3 exec_print.py &
sleep 2
python3 exec.py &
sleep 2
pm2 start thyme.js
