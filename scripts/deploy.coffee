# Deploy responses
#
responses = [
  "http://inception.davepedu.com/",
  "Woah dude. WOAH",
  "NOOOOOOOOOOOOOOOO",
  "Do you want fries with that?",
  "You're kidding. Right?",
  "Danger Will Wobinson",
]

module.exports = (robot) ->
  robot.respond /deploy/i, (msg) ->
    msg.send msg.random responses


