# Pastes inspected data in redis
#
# paste storage - Pastes redis data to paste service and displays url

Sys  = require "sys"
exec = require('child_process').exec
Fs   = require 'fs'

module.exports = (robot) ->
  robot.respond /(paste storage|brain dump)$/i, (msg) ->
    data = Sys.inspect(robot.brain.data, false, 4)
    Fs.writeFileSync('.paste_storage', data)
    exec "cat .paste_storage | curl -F 'sprunge=<-' http://sprunge.us",
      (error, stdout, stderr) ->
        msg.send stdout
        Fs.unlink '.paste_storage'
