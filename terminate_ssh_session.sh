echo "Felhasználók listázása akiknél SSH munkamenet észlelhető..."
ps -aux | grep ssh | tr -d [:blank:] | cut -d : -f 4 | grep pts | cut -d @ -f1 | sort -u
echo -n "Felhasználónév: "
read FELHASZNALO
killid=$(ps -aux | grep ssh |  grep $FELHASZNALO | grep @ | tr -s ' ' | cut -d " " -f 2)
sudo kill $killid
echo "Megpróbálom az SSH kapcsolat bontását a következő felhasználónál: ${FELHASZNALO}"
