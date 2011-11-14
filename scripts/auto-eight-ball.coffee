# Auto eight-ball - triggered by any question
#

ball = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes – definitely",
  "You may rely on it",
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Signs point to yes",
  "Yes",
  "Reply hazy, try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful",
]

module.exports = (robot) ->
  robot.hear /\?(\s+|$)/, (msg) ->
    if not @robot.brain.data.shut_up
      msg.send msg.random ball

  robot.hear /shut up$/, (msg) ->
    @robot.brain.data.shut_up = '1'
    msg.send ':('

  robot.hear /speak up$/, (msg) ->
    delete @robot.brain.data.shut_up
    msg.send 'muahahahahaha'
