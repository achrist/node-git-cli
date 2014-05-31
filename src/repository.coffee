S      = require 'string'
path   = require 'path'

errors = require './errors'


class Repository
  BAD_PATH_MSG = "repository path should point .git directory"

  constructor: (@path) ->
    unless S(@path).endsWith('.git')
      throw new errors.BadRepositoryError(BAD_PATH_MSG)

  workingDir: -> path.dirname @path


module.exports = Repository
