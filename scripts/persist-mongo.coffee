# Description:
#   persist all chat in mongo
#
# Events:

mongo = require('mongodb').MongoClient
format = require('util').format

zeroPad = (number) ->
  ('0' + number).slice -2

module.exports = (robot) ->

  robot.hear /^(.*)$/i, (msg) ->
    mongo.connect process.env.HUBOT_MONGO_URL, (err, db) ->
      if err
        throw err
      date = new Date
      day = "#{date.getFullYear()}-#{zeroPad date.getMonth()}-#{zeroPad date.getDate()}"
      user = msg.message.user.name
      message = msg.message.text
      record = {date: date, user: user, message: message}
      db.collection('hubot').update {day: day}, { $push: {comments: record}}, {upsert:true}, (err, db) ->
        throw err if err

