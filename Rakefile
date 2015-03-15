# Algorithmia Ruby wrapper.
# Released under the MIT License
# http://github.com/bih/algorithmia

# Old dependency stuff.

$:.push File.expand_path("../lib", __FILE__)
require "rubygems"

def gem_available?(name)
   Gem::Specification.find_by_name(name)
rescue Gem::LoadError
   false
rescue
   Gem.available?(name)
end

def build_gem
  # Cleanup.
  sh "sudo gem uninstall algorithmia" if gem_available?("algorithmia")
  Dir['*.gem'].map{ |f| File.delete(f) } if Dir['*.gem'].any?
  
  # Build the new gem.
  sh "sudo gem build algorithmia.gemspec"

  # Bundle all gems.
  sh "bundle install"

  # And install it locally!
  spec = Gem::Specification::load("algorithmia.gemspec")
  sh "sudo gem install ./algorithmia-#{spec.version}.gem"
end

def load_console
  # Load the library.
  require "algorithmia"
  require "ripl"

  # Loading the console.
  puts ("-" * 5) + " Loading Algorithmia Console " + ("-" * 5)

  require "ripl"
  Ripl.start({ binding: binding })
end

# Rake stuff.

task :test do
  $LOAD_PATH.unshift('lib', 'spec')
  Dir.glob('./spec/**/*_spec.rb') { |f| require f }
end

task :console do
  build_gem
  load_console
end

task :deploy do
  build_gem

  spec = Gem::Specification::load("algorithmia.gemspec")
  sh "gem push algorithmia-#{spec.version}.gem"

  puts ("-" * 5) + " SUCCESS - Gem has been pushed live! " + ("-" * 5)
end
