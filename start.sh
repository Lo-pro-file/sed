if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/angel-loveyou/sed /sed
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /sed
fi
cd /sed
pip3 install -U -r requirements.txt
echo "Starting Bypass Bot...."
python3 main.py
