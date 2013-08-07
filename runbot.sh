#!/usr/bin/env sh

# Set Environment Variables
export HUBOT_IRC_NICK=exercism-bot
export HUBOT_IRC_SERVER=chat.freenode.net
export HUBOT_IRC_ROOMS="##exercism-frontend"

# Set Environment Variable for PG Brain

export DATABASE_URL=postgres://xpymszbuudvepn:c9Ayednn7JgyPssR4DarPqekko@ec2-54-221-203-200.compute-1.amazonaws.com:5432/d63o4mav4uhcv7
export HUBOT_MONGO_URL=mongodb://bryan:10faba96@dharma.mongohq.com:10070/app17350489
# Using SSL?
#export HUBOT_IRC_PORT=6697
#export HUBOT_IRC_USESSL=true
#export HUBOT_IRC_SERVER_FAKE_SSL=true

# Server password?
#export HUBOT_IRC_PASSWORD=password

# Don't let hubot flood the room.
export HUBOT_IRC_UNFLOOD=true

# Output environment variables
echo HUBOT_IRC_NICK=$HUBOT_IRC_NICK
echo HUBOT_IRC_SERVER=$HUBOT_IRC_SERVER
echo HUBOT_IRC_ROOMS=$HUBOT_IRC_ROOMS

#echo HUBOT_IRC_PORT=$HUBOT_IRC_PORT
#echo HUBOT_IRC_USESSL=$HUBOT_IRC_USESSL
#echo HUBOT_IRC_SERVER_FAKE_SSL=$HUBOT_IRC_SERVER_FAKE_SSL
#echo HUBOT_IRC_PASSWORD=$HUBOT_IRC_PASSWORD

echo ""
echo "Starting bot"
./bin/hubot -a irc
