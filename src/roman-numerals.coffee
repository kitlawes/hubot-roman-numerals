# Description
#   A hubot script for translating decimal numbers into roman numerals
#
# Commands:
#   translate <decimal> - translates the decimal number into roman numerals

module.exports = (robot) ->

  robot.respond /translate (.*)/, (res) ->
    decimal = res.match[1]
    res.reply "I"
