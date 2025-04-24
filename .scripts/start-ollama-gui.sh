#! /usr/bin/dash

export OLLAMA_GUI_DIRECTORY="$HOME/git/ollama-gui"

start_cmd="yarn -s --cwd '$OLLAMA_GUI_DIRECTORY' dev"
stop_cmd="/usr/bin/node $OLLAMA_GUI_DIRECTORY/node_modules/.bin/vite"

# Start the Ollama service, which is started and stopped manually to avoid useless RAM usage
#doas /usr/bin/rc-service ollama start

# Start the Ollama GUI server software and fork to background
/usr/bin/dash -c "$start_cmd" &

# Start the Ollama GUI client web app using the Librewolf web browser
/usr/bin/librewolf --no-remote --profile /home/tdljayden/.config/url_to_webapp/webapp_profiles/ollama http://localhost:5173/

# The following will execute when librewolf is closed and the process finished.

# Stop the Ollama GUI server software using a command to identify the running process
pkill -f "$stop_cmd"

# Stop/restart the Ollama service, mainly to cleanup VRAM
#doas /usr/bin/rc-service ollama stop
doas /usr/bin/rc-service ollama restart
