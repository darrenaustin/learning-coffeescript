#
# Exercise 1
#
root = global ? window
root.aphorism = 'Fool me 8 or more times, shame on me'

do restoreOldAphorism = ->
  root.aphorism = 'Fool me once, shame on you'
  console.log aphorism

console.log aphorism

#
# Exercise 2
#
Genie = ->
Genie.wishesLeft = 3
Genie::grantWish = ->
  if Genie.wishesLeft > 0
    console.log 'Your wish is granted!'
    Genie.wishesLeft--

new Genie().grantWish()
new Genie().grantWish()
new Genie().grantWish()
new Genie().grantWish()

#
# Exercise 3
#
class Season
class Spring extends Season

# should be Object's prototype: {}.__proto__
console.log (new Season).__proto__.__proto__ 
console.log (new Spring).__proto__.__proto__.__proto__

#
# Exercise 4
#
(window ? global).property = 'global context'
@property = 'surrounding context'
class Foo
  constructor: -> @property = 'instance context'
  bar: -> console.log @property

foo = new Foo
bar = foo.bar
foo.bar()
bar()

# should display 'instance context' followed by 'instance context'
# If you wanted it to print 'instance context' followed by 'global context',
# you would use -> when defining bar
