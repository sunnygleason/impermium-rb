require 'json'

module Impermium
  class Response
    attr_accessor :http_response, :quality_classifier, :profanity_classifier, :spam_classifier
    
    def initialize(response)
      @http_response = response
      return unless response.status == 200

      response_json = JSON(response.body)
      @quality_classifier   = response_json["quality_classifier"]
      @profanity_classifier = response_json["profanity_classifier"]
      @spam_classifier      = response_json["spam_classifier"]
    end
  end

end