# Algorithmia Ruby wrapper.
# Released under the MIT License
# http://github.com/bih/algorithmia

class Algorithmia
  attr_writer :api_key

  # Authentication stuffs.
  def self.api_key
    @api_key
  end

  def self.api_key?
    not @api_key.nil?
  end

  def self.api_key=(api_key)
    if not api_key.is_a?(String) or api_key.to_s.empty?
      raise AlgorithmiaApiKeyTooShort.new("Invalid Algorithmia API key")
    end

    @api_key = api_key
  end
end