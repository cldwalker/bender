# Tell wobot to shut up by flipping shut_up in his brain
#
# shut up - Tells wobot to shut up
# speak up - Tells wobot to not shut up

module.exports = (robot) ->
  robot.hear /shut up$/, (msg) ->
    @robot.brain.data.shut_up = '1'
    msg.send ':('

  robot.hear /speak up$/, (msg) ->
    delete @robot.brain.data.shut_up
    msg.send 'muahahahahaha'
