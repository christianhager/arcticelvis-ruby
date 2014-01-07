module ArcticElvis
  module Configuration
    VALID_CONFIG_KEYS = [:api_key].freeze
    DEFAULT_API_KEY = nil

    attr_accessor *VALID_CONFIG_KEYS
 
    # setup defaults on extend
    def self.extended(base)
      base.reset
    end
 
    def reset
      self.api_key = DEFAULT_API_KEY
    end

    def configure
      yield self
    end
  end
end