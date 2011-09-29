#
# Exercise 1
#
# copy = original just points copy at the same array object as original.
# If you make changes to it via copy, you are also changing original.
# Using copy = original[0..] you are using slice which makes a copy
# of the array (or part of it)

#
# Exercise 2
#
# It only calls once() one time and it returns the array [1,2,3] which 
# is then iterated through in the for in loop.  In a normal javascript
# loop, once would be called though each iteration of the loop.

#
# Exercise 3
do -> 
  for x in [1, 2]
    setTimeout (-> console.log "Possibly wrong #{x}"), 0

# will yeild 2 2 on the console, because x in the callback is referencing the x in
# the for loop which will have changed to 2 by the time the timeout callback is called.
# To fix this problem, we need to capture x:

do ->
  for x in [1, 2]
    do (x) ->
      setTimeout (-> console.log "Correct #{x}"), 0

#
# Exercise 4
#
objContains = (obj, val) -> 
  for k,v of obj when v is val
    return true
  false
  
o = {name: 'Darren', age: 45}

console.log objContains o, 'Darren'
console.log objContains o, 45
console.log objContains o, 'nope'

#
# Exercise 5
#
doAndRepeatUntil = (body, condition) ->
  loop
    body()
    break if condition()

user = 
  x: 0
  paidInFull: false
  harangue: -> 
    @x++
    @paidInFull = @x > 3
    console.log "Haranguing user #{@x} times, paidInFull = #{@paidInFull}"

doAndRepeatUntil (-> user.harangue()), -> user.paidInFull


#
# Exercise 6
#
# Math.min.apply Math, (w.length for w in wordList)
