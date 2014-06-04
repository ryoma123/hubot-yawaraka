# Description:
#   tiqav画像検索
#
# Commands:
#   hubot hello, I am (name) - 挨拶をする

module.exports = (robot) ->
  robot.respond /tiqav (.*)/i, (msg) ->
  	request = require('request');
  	request.get("http://api.tiqav.com/search.json?q=#{msg.match[1]}", (error, response, body) ->
  		if error or response.statusCode !=200
  			return msg.send('画像検索に失敗しました...')
  		data = JSON.parse(body)[0]
  		msg.send "画像の様子です: http://img.tiqav.com/#{data.id}.#{data.ext}")