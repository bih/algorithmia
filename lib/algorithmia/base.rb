# Algorithmia Ruby wrapper.
# Released under the MIT License
# http://github.com/bih/algorithmia

require 'singleton'
require 'httparty'

class Algorithmia
  include Singleton
  include HTTParty

  base_uri "https://api.algorithmia.com"
  format :json
end