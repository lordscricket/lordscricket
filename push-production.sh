#!/usr/bin/dash

cp -fv prod_data.json src/_data/data.json
echo "Make sure you have stopped all instances of the npm dev server"
echo "You can check this by running a new one (npm run dev) and see if"
echo "port 8080 is bound already (localhost:8081 suggests otherwise)"
if [ "$1" != "/now" ]; then
    sleep 6
fi
npm run clean && npm run manual:build
# git push origin main
