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
    expect(gray(30, "cool")).to.equal("hsl(237,3.1725405%,30%)")
    expect(gray(30, "slate")).to.equal("hsl(122,3.1725405%,30%)")
    expect(gray(30, "warm")).to.equal("hsl(69,3.1725405%,30%)")

  it 'should accept numeric hue values', ->
    expect(gray(30, 122)).to.equal("hsl(122,3.1725405%,30%)")
    expect(gray(30, 69)).to.equal("hsl(69,3.1725405%,30%)")
    expect(-> gray(30, "blah")).to.throw(Error)
