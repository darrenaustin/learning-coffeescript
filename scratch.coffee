Boy = ->
Boy::sing = -> console.log "It ain't easy being a boy named Sue"
sue = new Boy()
sue.sing()

Gift = (@name) ->
  Gift.count++
  @day = Gift.count
  @announce()
  
Gift.count = 0
Gift::announce = ->
  console.log "On day #{@day} of Christmas I received #{@name}"

gift1 = new Gift('a partridge in a pear tree')
console.log "gift1 prototype = #{gift1::}"

# for k,v of gift1
#   console.log "gift1.#{k} = #{v}"

#gift1::announce = ->
#  console.log "Some other thing"
  
gift2 = new Gift('two turtle doves')

Raven = ->
Raven::quoth = -> console.log 'Nevermore'
raven1 = new Raven()
raven1.quoth()

Raven::quoth = -> console.log "I'm hungry"
raven1.quoth()

raven2 = new Raven()
raven2.quoth = -> console.log "I'm my own kind of raven.  Raven2 rules!"
raven1.quoth()
raven2.quoth()

class Tribble
  constructor: -> 
    @isAlive = true
    Tribble.count++
    
  breed: -> new Tribble if @isAlive
  die: ->
    Tribble.count-- if @isAlive
    @isAlive = false
    
  @count: 0
  @makeTrouble: -> console.log ('Trouble!' for i in [1..@count]).join(' ')

tribble1 = new Tribble
tribble2 = new Tribble
Tribble.makeTrouble()

tribble1.die()
Tribble.makeTrouble()

tribble2.breed().breed().breed()
Tribble.makeTrouble()

class Pet
  constructor: (@name) -> @isHungry = true
  eat: -> @isHungry = false
  toString: -> 
    "I'm '#{@name}', and I'm #{if @isHungry then '' else 'not '}hungry"
  
class Dog extends Pet
  eat: ->
    console.log '*crunch, crunch*'
    super()
    
  fetch: ->
    console.log 'Yip yip!'
    @isHungry = true

dog1 = new Dog("Ace")
console.log dog1.toString()
dog1.eat()
console.log dog1.toString()
dog1.fetch()
console.log dog1.toString()

