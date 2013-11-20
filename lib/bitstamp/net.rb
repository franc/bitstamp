module Bitstamp
  module Net
    def self.to_uri(path)
      return "https://www.bitstamp.net/api#{path}/"
    end

    def self.curl(verb, path, options={})
      self.rest(verb, path, options)  
=begin
      verb = verb.upcase.to_sym

      c = Curl::Easy.new(self.to_uri(path))

      if Bitstamp.configured?
        options[:key] = Bitstamp.key
        options[:nonce] = Time.now.to_i.to_s
        options[:signature] = HMAC::SHA256.hexdigest(Bitstamp.secret, options[:nonce]+Bitstamp.client_id+options[:key]).upcase
      end

      c.post_body = options.to_query

      c.http(verb)

      return c
=end
    end

    def self.rest(verb, path, params={})
      options = {}
      if Bitstamp.configured?
        params[:key] = Bitstamp.key
        params[:nonce] = Time.now.to_i.to_s
        params[:signature] = HMAC::SHA256.hexdigest(Bitstamp.secret, params[:nonce]+Bitstamp.client_id+params[:key]).upcase
      end
      options[:method] = verb.downcase.to_sym
      options[:url] = self.to_uri(path)
      options[:payload] = params
      options[:params] = params
      result = RestClient::Request.execute(options)
        #method:  verb.downcase.to_sym,
        #                          url:     self.to_uri(path),
        #                          params:  options,
        #                          payload: options)
      JSON.parse(result)
    end

    def self.get(path, options={})
      request = self.curl(:GET, path, options)

      return request
    end

    def self.post(path, options={})
      request = self.curl(:POST, path, options)

      return request
    end

    def self.patch(path, options={})
      request = self.curl(:PATCH, path, options)

      return request
    end

    def self.delete(path, options={})
      request = self.curl(:DELETE, path, options)

      return request
    end
  end
end
