#
# Excercise 1
#

# It is probably intended to countdown from 10 every 100ms and 
# then print 'Surprise'.  However, it won't ever do that, as
# the do loop will never return to the event loop, so the interval
# timer code is never called, so the countdown timer is never 
# decremented

# One potential fix
countdown = 10
h = setInterval (-> 
                  countdown--
                  if countdown is 0
                    clearInterval h
                    console.log 'Surprise'
                  ), 100
