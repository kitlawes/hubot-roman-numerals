Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/roman-numerals.coffee')

describe 'roman-numerals', ->

  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'translates 1 to I', ->
    @room.user.say('user', '@hubot translate 1').then =>
      expect(@room.messages).to.eql [
        ['user', '@hubot translate 1']
        ['hubot', '@user I']
      ]
