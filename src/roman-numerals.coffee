# Description
#   A hubot script for translating decimal numbers into roman numerals
#
# Commands:
#   translate <decimal> - translates the decimal number into roman numerals

module.exports = (robot) ->

  robot.respond /translate (.*)/, (res) ->

    decimal = res.match[1]

    if isNaN(decimal)
      res.reply decimal.toString() + " is not a decimal number. Please enter a decimal number."
      return

    if decimal >= 10000
      res.reply decimal.toString() + " is too large. Please enter a number less than 10000."
      return

    if decimal <= 0
      res.reply decimal.toString() + " is not positive. Please enter a positive number."
      return

    digit = decimal % 10
    roman_numerals = get_digit_numerals(digit, ["I", "V", "X"])

    if decimal >= 10
      digit = Math.floor(decimal / 10) % 10
      roman_numerals = get_digit_numerals(digit, ["X", "L", "C"]) + roman_numerals

    if decimal >= Math.pow(10, 2)
      digit = Math.floor(decimal / Math.pow(10, 2)) % 10
      roman_numerals = get_digit_numerals(digit, ["C", "D", "M"]) + roman_numerals

    if decimal >= Math.pow(10, 3)
      digit = Math.floor(decimal / Math.pow(10, 3)) % 10
      roman_numerals = get_digit_numerals(digit, ["M", "", ""]) + roman_numerals

    res.reply roman_numerals

  get_digit_numerals = (digit, roman_numerals) ->
    switch digit
      when 0 then return ""
      when 1 then return roman_numerals[0]
      when 2 then return roman_numerals[0] + roman_numerals[0]
      when 3 then return roman_numerals[0] + roman_numerals[0] + roman_numerals[0]
      when 4 then return roman_numerals[0] + roman_numerals[1]
      when 5 then return roman_numerals[1]
      when 6 then return roman_numerals[1] + roman_numerals[0]
      when 7 then return roman_numerals[1] + roman_numerals[0] + roman_numerals[0]
      when 8 then return roman_numerals[1] + roman_numerals[0] + roman_numerals[0] + roman_numerals[0]
      when 9 then return roman_numerals[0] + roman_numerals[2]
