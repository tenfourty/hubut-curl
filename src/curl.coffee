# Description:
#   This is a hubot script that calls curl (requires mac or linux to run).
#
#   This could be a bit dodgy as I don't do any filtering of the commands that can be run by curl!
#
# Dependencies:
#  None
#
# Configuration
#   None
#
# Commands:
#  hubot curl <args> - run curl with <args>
#
# Author:
#  Jeremy Brown <jeremy@tenfourty.com>
#


module.exports = (robot) ->
  run_cmd = (cmd, args, cb ) ->
    spawn = require("child_process").spawn
    child = spawn(cmd, args)
    child.stdout.on "data", (buffer) -> cb buffer.toString()
    child.stderr.on "data", (buffer) -> cb buffer.toString()
    #child.stdout.on "end", -> cb resp

  robot.respond "/curl\s*(.*)/i", (res) ->
    args = []
    if res.match[1].length != 0
      args = res.match[1].split(" ")
    run_cmd "curl", args, (text) -> res.send text
