# 
# Exercise 1
#
# Not sure, some use of display: none in a stylesheet changing the class when they are displayed

#
# Exercise 2
#
# Yes the world is safe.  The click call binds a click event to the destroyWorld function
# (but doesn't call it).  The unbind call removes the click binding so the destroyWorld
# will never be called.

#
# Excerise 3
#
# These are all equivalent: they select any .redShirt element that is child of the #awayTeam
# element
$('#awayTeam .redShirt').die()
$('#awayTeam').find('.redShirt').die()
$('.redShirt', $('#awayTeam')).die()

# This one returns all .redShirt elements anywhere (not just children of #awayTeam)
# in the DOM as well as the #awayTeam element itself
$('.redShirt, #awayTeam').die()

#
# Excerise 4
#
$('#drJekyll').click ->
  alert 'Now I shall transform!'
   $(this).attr 'id', 'mrHyde'
   $(this).unbind 'click'