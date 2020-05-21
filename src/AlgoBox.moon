getMaxSubseqSum = (listOfInts) ->
  if #listOfInts < 1
    return 0
  start = 0
  sum = 0
  bestSum = 0
  for j, item in ipairs listOfInts 
    sum = sum + item
    if sum > bestSum
      bestSum = sum
    elseif sum < 0
      start = j + 1
      sum = 0
  -- Best array is from start -> j
  return bestSum

return {:getMaxSubseqSum}
