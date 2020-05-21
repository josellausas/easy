
--- Node
class Node
  new: (data) =>
    @data = data
    @next = nil



--- Linked List
class LinkedList
  new: =>
    @head = nil
    @tail = nil
    @size = 0

  insert: (item) =>
    node = Node item
    -- Empty thing
    if @head == nil
      @head = node
      @tail = @head
    else
      @tail.next = node
      @tail = node
    -- Increment count
    @size = @size + 1

  pop: =>
    if @head == nil
      return nil
    elseif @head == @tail
      popNode = @head
      @head = nil
      @tail = nil
      @size = 0
      return popNode.data
    else
      -- Find the node before the tail
      finderNode = @head
      while finderNode.next ~= @tail
        finderNode = finderNode.next
      
      -- Pop and set new tail
      popNode = @tail
      finderNode.next = nil
      @tail = finderNode
      @size = @size - 1
      return popNode.data

  clear: =>
    pop = @\pop!
    while pop ~= nil
      pop = @\pop!
    if @size ~= 0
      print "Something is not right!"

return LinkedList
