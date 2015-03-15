# Algorithmia Ruby wrapper.
# Released under the MIT License
# http://github.com/bih/algorithmia

$:.push File.expand_path("../lib", __FILE__)

require 'algorithmia/base'
require 'algorithmia/version'
require 'algorithmia/errors'
require 'algorithmia/authentication'
require 'algorithmia/result'
require 'algorithmia/http'

class Algorithmia
	def self.call(endpoint, input)
		post_http("/api/#{endpoint}", input)
	end
end