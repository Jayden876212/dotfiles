cd /usr/local/searxng
source searx-pyenv/bin/activate
cd searxng-src
export SEARXNG_SETTINGS_PATH="/etc/searxng/settings.yml"
#export SEARXNG_REDIS_URL="unix:///run/user/1001/redis.sock?db=0"
python searx/webapp.py
