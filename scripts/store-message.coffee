# Description:
#   Store all message to mongodb
#
# Commands:
#   None
#
# Author:
#   kiennt

module.exports = (robot) ->
  mongoose = require('mongoose')
  mongoose.connect(process.env.HUBOT_MONGODB_URL)

  ChatLogSchema = mongoose.Schema({
    name: String,
    content: String,
    createdAt: { type: Date, index: true, default: Date.now }
  })

  ChatLog = mongoose.model('chatlog', ChatLogSchema)

  robot.hear /.*$/i, (msg) ->
    message = msg.message
    #log = new ChatLog({ name: message.user.name, content: message.text })
    #log.save()
