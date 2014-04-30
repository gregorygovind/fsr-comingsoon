class Apimoz < ActiveRecord::Base
  attr_accessible :link

  require 'openssl'
  require 'base64'
  require 'cgi'
  require 'open-uri'


  ACCESS_ID = "member-64193c4287"
  SECRET_KEY = "62cae2d950a24d98615c4fd0361bd19b"
  # Set your expires for several minutes into the future.
  # # Values excessively far in the future will not be honored by the Mozscape API.
  expires = Time.now.to_i + 300
  # A new linefeed is necessary between your AccessID and Expires.
  string_to_sign = "#{ACCESS_ID}\n#{expires}"
  # Get the "raw" or binary output of the hmac hash.
  binary_signature = OpenSSL::HMAC.digest('sha1', SECRET_KEY, string_to_sign)
  # We need to base64-encode it and then url-encode that.
  URL_SAFE_SIGNATURE = CGI::escape(Base64.encode64(binary_signature).chomp)
  # This is the URL that we want metrics for.
  object_url = 'swansoftwaresolutions.com'
  # Add up all the bit flags you want returned.
  # Learn more here: http://apiwiki.moz.com/query-parameters/
  cols = '4'
  # Now put your entire request together.
  # This example uses the Mozscape URL Metrics API.
  @request_url = "http://lsapi.seomoz.com/linkscape/top-pages/#{object_url}?Offset=1&Limit=3&Cols=#{cols}&Sort=page_authority&AccessID=#{ACCESS_ID}&Expires=#{expires}&Signature=#{URL_SAFE_SIGNATURE}"
  #@request_url = "http://lsapi.seomoz.com/linkscape/metadata/last_update&AccessID=#{ACCESS_ID}&Expires=#{expires}&Signature=#{SECRET_KEY}"
  # Go and fetch the URL
  # "response" is now the JSON string returned fron the API puts response

  class << self
    #def apimoz_response
    #  @response = open(@request_url).read
    #end


  end
end
