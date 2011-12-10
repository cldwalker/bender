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
  robot.hear /.*deploy(?:\s+|$)/i, (msg) ->
    if not @robot.brain.data.shut_up
      msg.send msg.random responses


