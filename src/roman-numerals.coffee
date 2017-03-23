# Description
#   A hubot script for translating decimal numbers into remoan numerals
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>

module.exports = (robot) ->

  robot.respond /hello/, (res) ->
    res.reply "hello!"

  robot.hear /orly/, (res) ->
    res.send "yarly"
