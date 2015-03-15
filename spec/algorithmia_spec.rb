# Algorithmia Ruby wrapper.
# Released under the MIT License
# http://github.com/bih/algorithmia

# Required according to the command-line tool.
gem 'minitest'

# Load in the test.
require 'minitest/autorun'
require 'minitest/spec'

# And the source of Algorithmia, of course.
FileList['lib/**/*.rb'].each{ |source| load(source) }

class AlgorithmiaRubyTest < Minitest::Test
  # TODO: Some tests.
end