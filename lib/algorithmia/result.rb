# Algorithmia Ruby wrapper.
# Released under the MIT License
# http://github.com/bih/algorithmia

class Algorithmia::Result
  def initialize(hash)
    @json = clean_output(hash) rescue {}
  end

  def duration
    @json[:duration] rescue -1
  end

  def result
    @json[:result] rescue nil
  end

  private

  def clean_output(hash_without_symbols)
    hash_with_symbols = Hash.new
    hash_without_symbols.each { |k, v| hash_with_symbols[k.to_sym] = v } if hash_without_symbols.is_a?(Hash)
    hash_with_symbols
  end
end