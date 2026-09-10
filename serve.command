#!/bin/zsh
# Double-click to run the site on a local server (GLB loading needs http://, not file://)
cd "$(dirname "$0")"
PORT=8777
( sleep 1 && open "http://localhost:$PORT" ) &
echo "VELORA 3D running at http://localhost:$PORT  —  press Ctrl+C to stop"
python3 -m http.server $PORT
