Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/roman-numerals.coffee')

describe 'roman-numerals', ->

  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'askes for a decimal number', ->
    @room.user.say('user', '@hubot translate string').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate string']
        ['hubot', '@user string is not a decimal number. Please enter a decimal number.']
      ]

  it 'askes for a number less than 10,000', ->
    @room.user.say('user', '@hubot translate 10000').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 10000']
        ['hubot', '@user 10000 is too large. Please enter a number less than 10000.']
      ]

  it 'askes for a positive number', ->
    @room.user.say('user', '@hubot translate 0').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 0']
        ['hubot', '@user 0 is not positive. Please enter a positive number.']
      ]

  it 'translates 1 to I', ->
    @room.user.say('user', '@hubot translate 1').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 1']
        ['hubot', '@user I']
      ]

  it 'translates 2 to II', ->
    @room.user.say('user', '@hubot translate 2').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 2']
        ['hubot', '@user II']
      ]

  it 'translates 3 to III', ->
    @room.user.say('user', '@hubot translate 3').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 3']
        ['hubot', '@user III']
      ]

  it 'translates 4 to IV', ->
    @room.user.say('user', '@hubot translate 4').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 4']
        ['hubot', '@user IV']
      ]

  it 'translates 5 to V', ->
    @room.user.say('user', '@hubot translate 5').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 5']
        ['hubot', '@user V']
      ]

  it 'translates 6 to VI', ->
    @room.user.say('user', '@hubot translate 6').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 6']
        ['hubot', '@user VI']
      ]

  it 'translates 9 to IX', ->
    @room.user.say('user', '@hubot translate 9').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 9']
        ['hubot', '@user IX']
      ]

  it 'translates 27 to XXVII', ->
    @room.user.say('user', '@hubot translate 27').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 27']
        ['hubot', '@user XXVII']
      ]

  it 'translates 48 to XLVIII', ->
    @room.user.say('user', '@hubot translate 48').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 48']
        ['hubot', '@user XLVIII']
      ]

  it 'translates 59 to LIX', ->
    @room.user.say('user', '@hubot translate 59').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 59']
        ['hubot', '@user LIX']
      ]

  it 'translates 93 to XCIII', ->
    @room.user.say('user', '@hubot translate 93').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 93']
        ['hubot', '@user XCIII']
      ]

  it 'translates 141 to CXLI', ->
    @room.user.say('user', '@hubot translate 141').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 141']
        ['hubot', '@user CXLI']
      ]

  it 'translates 163 to CLXIII', ->
    @room.user.say('user', '@hubot translate 163').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 163']
        ['hubot', '@user CLXIII']
      ]

  it 'translates 402 to CDII', ->
    @room.user.say('user', '@hubot translate 402').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 402']
        ['hubot', '@user CDII']
      ]

  it 'translates 575 to DLXXV', ->
    @room.user.say('user', '@hubot translate 575').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 575']
        ['hubot', '@user DLXXV']
      ]

  it 'translates 911 to CMXI', ->
    @room.user.say('user', '@hubot translate 911').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 911']
        ['hubot', '@user CMXI']
      ]

  it 'translates 1024 to MXXIV', ->
    @room.user.say('user', '@hubot translate 1024').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 1024']
        ['hubot', '@user MXXIV']
      ]

  it 'translates 3000 to MMM', ->
    @room.user.say('user', '@hubot translate 3000').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 3000']
        ['hubot', '@user MMM']
      ]
