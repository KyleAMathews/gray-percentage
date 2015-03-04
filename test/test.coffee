chai = require 'chai'
expect = chai.expect
gray = require '../'

describe 'gray', ->
  it 'should exist', ->
    expect(gray).to.exist

  it 'should return correct rgb values for various gray %s', ->
    expect(gray(0)).to.equal("rgb(0,0,0)")
    expect(gray(100)).to.equal("rgb(255,255,255)")
    expect(gray(25)).to.equal("rgb(63.75,63.75,63.75)")
    expect(gray(50)).to.equal("rgb(127.5,127.5,127.5)")

  it 'should round down values over 100', ->
    expect(gray(300)).to.equal("rgb(255,255,255)")

  it 'should round up negative values', ->
    expect(gray(-100)).to.equal("rgb(0,0,0)")
