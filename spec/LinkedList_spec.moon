LinkedList = require 'src.LinkedList'

describe 'Linked List', ->
  ll = LinkedList!
  it 'can create a new List', ->
    assert.truthy(ll)
  it 'can append a new items', ->
    ll\insert 1
    assert.equal ll.size, 1
    ll\insert 2
    ll\insert 3
    assert.equal ll.size, 3
  it 'can remove an item', ->
    x = ll\pop!
    assert.equal ll.size, 2
    assert.equal x, 3
    assert.equal ll\pop!, 2
    assert.equal ll\pop!, 1
    assert.equal ll\pop!, nil
  it 'can find an item', ->
    pending "Implement"
  return