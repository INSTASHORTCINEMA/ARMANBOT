if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/INSTASHORTCINEMA/ARMANBOT.git /ARMANBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ARMANBOT
fi
cd /ARMANBOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
