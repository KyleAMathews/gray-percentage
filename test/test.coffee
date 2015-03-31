chai = require 'chai'
expect = chai.expect
gray = require '../'

describe 'gray', ->
  it 'should exist', ->
    expect(gray).to.exist

  it 'should return correct hsl values for various gray %s', ->
    expect(gray(0)).to.equal("hsl(0,0%,0%)")
    expect(gray(100)).to.equal("hsl(0,0%,100%)")
    expect(gray(25)).to.equal("hsl(0,0%,25%)")
    expect(gray(50)).to.equal("hsl(0,0%,50%)")

  it 'should throw an error if lightness is not a numeric value', ->
    expect(-> gray('blah')).to.throw(Error)

  it 'should round down values over 100', ->
    expect(gray(300)).to.equal("hsl(0,0%,100%)")

  it 'should round up negative values', ->
    expect(gray(-100)).to.equal("hsl(0,0%,0%)")

  it 'should understand some named hues', ->
    expect(gray(30, "cool")).to.contain("hsl(237,")
    expect(gray(30, "slate")).to.contain("hsl(122,")
    expect(gray(30, "warm")).to.contain("hsl(69")

  it 'should accept numeric hue values', ->
    expect(gray(30, 122)).to.contain("hsl(122,")
    expect(gray(30, 69)).to.contain("hsl(69")
    expect(-> gray(30, "blah")).to.throw(Error)
