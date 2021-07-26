
echo Bomb Begins
ssr
init


ssr(){
PYTHON="python"
SUDO="sudo"
PIP="$PYTHON -m pip"
INSTALL="apt -y install"
}
init(){
packs=(openssl git $PYTHON $PYTHON-pip figlet toilet)
for pack in ${packs[@]}; do
$SUDO $INSTALL $pack
done
$PIP install -r requirements.txt
}

while :
 do
    $PYTHON xpp.py --sms
    
