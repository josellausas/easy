AlgoBox = require 'src/AlgoBox'

describe 'Maximum Subsequence Problem:', ->
  it 'solves empty list', ->
    assert.equal 0, (AlgoBox.getMaxSubseqSum {})
    return
  it 'solves all negatives', ->
    assert.equal 0, (AlgoBox.getMaxSubseqSum {-1})
    return
  it 'solves zero case', ->
    assert.equal 0, (AlgoBox.getMaxSubseqSum {0})
    return
  it 'solves a simple case', ->
    assert.equal 1, (AlgoBox.getMaxSubseqSum {-2,0,1,-2})
    return
  return