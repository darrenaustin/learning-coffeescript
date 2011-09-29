#
# Exercise 1
#
clearArray = (arr) ->
  arr.splice 0, arr.length

arr = [1, 2, 3]
console.log "Clearing #{arr} = #{clearArray arr}"

clearArray = (arr) ->
  arr.splice 0, arr.length
  arr

arr = [1, 2, 3]
console.log "Clearing #{arr} = #{clearArray arr}"

clearArray = (arr) ->
  arr.splice 0, arr.length
  return

arr = [1, 2, 3]
console.log "Clearing #{arr} = #{clearArray arr}"

#
# Exercise 2
#
run = (f, args...) -> f.apply @, args
console.log run ((x, y) -> x + y), 4, 5

#
# Exercise 3
#
# Had to look at the answer, but it involves
# postfix operators (if/unless/for/while/until), i.e:

# return failure message if message?

# is the same as:

# return failure(message) if message?

# or 

# if message? then failure message

# 
# Exercise 4
#
# If you were allowed a space between between
# the function name and it's parethesized list,

# f (g) h 

# would be equivalent to 

# f(g)(h)

#
# Exercise 5
#
# The context for foo.bar.bar() is the bar property of foo.
# The context for @hoo() is the current calling context
# The context for @hoo.rah() is the hoo property of the current calling context

#
# Exercise 6
#
# what = this (or @)
xInContext = ->
  console.log @x
what = {x: 'quantum entanglement'}
xInContext.apply what


#
# Exercise 7
#
# It doesn't work, because the parameter x is not specified, and there is a default 
# initializer that sets it to the inner x which is undefined.  Therefore inside the 
# if x is falsy and hence it prints 'Nope.'
#
x = true
showAnswer = (x = x) -> 
  console.log if x then 'It works!' else 'Nope.'
showAnswer()

