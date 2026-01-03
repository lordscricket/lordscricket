#!/usr/bin/dash
cp prod_data.json src/_data/data.json
echo "Make sure you have stopped all instances of the npm dev server"
echo "You can check this by running a new one (npm run dev) and see if"
echo "port 8080 is bound already (localhost:8081 suggests otherwise)"
sleep 6
npm run clean && npm run build:manual
