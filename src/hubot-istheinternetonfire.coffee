# Description:
#   Is the internet on fire?
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot is the internet on fire - Check if the internet is on fire.
#
# Notes:
#   None
#
# Author:
#   bdashrad@gmail.com

module.exports = (robot) ->

  robot.respond /\bis the internet on fire(\?)?\b/i, (msg) ->
    robot.http('https://istheinternetonfire.com/status.txt')
      .get() (err, res, body) ->
        response = body.trim()
        msg.send response
