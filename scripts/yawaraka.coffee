# Description:
#   超クールなスクリプト
#
# Commands:
#   hubot hello, I am (name) - 挨拶をする

module.exports = (robot) ->
  robot.respond /hello, I am (.*)/i, (msg) ->
    name = msg.match[1]
    msg.send "Test"
    msg.send "ちょりーっす、#{name}"