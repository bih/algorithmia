# Algorithmia Ruby wrapper.
# Released under the MIT License
# http://github.com/bih/algorithmia

class Algorithmia
  private

  def self.post_http(endpoint, params = {})
    params = params.to_s unless params.is_a?(Hash)
    parse_output post(endpoint, body: params, headers: { "Authorization" => @api_key, "Accept" => "application/json" })
  end

  def self.get_http(endpoint, params = {})
    params = params.to_s unless params.is_a?(Hash)
    parse_output get(endpoint, query: params, headers: { "Authorization" => @api_key, "Accept" => "application/json" })
  end

  def self.parse_output(res)
    result = res.parsed_response

    # Error!
    raise AlgorithmiaException.new(result[:error]) if result.include?(:error)

    # Result!
    Algorithmia::Result.new(result)
  rescue NoMethodError => e
    raise AlgorithmiaException.new(res.parsed_response)
  rescue JSON::ParserError => e
    raise AlgorithmiaException.new(e)
  rescue Exception => e
    raise AlgorithmiaException.new(e)
  end
end