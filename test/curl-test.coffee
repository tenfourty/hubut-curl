chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'curl', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/curl')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith("/curl\s*(.*)/i")
