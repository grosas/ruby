require 'httparty'
require 'json'

class GitHub
  include HTTParty
  headers "User-Agent" => "codecademy"

  
  def initialize(options = {})
  	@auth = {
  	  :username => options[:username],
  	  :password => options[:password]
  	}
    @token = options[:token]
  end
  
  def check_accepted_scopes_for(endpoint)
    endpoint = "https://api.github.com#{endpoint}"
    headers = {}
    
    response = self.class.get(endpoint, :headers => headers)
    
    # return array of required scopes
  end
  
  def create_token(scopes = [])
    endpoint = "https://api.github.com/authorizations"
    post_body = {}
    response = self.class.post endpoint, {
      :body => post_body.to_json,
      :basic_auth => @auth
    }
      
    response.parsed_response
  end
  
end

# Use Basic Auth to get a token
client = GitHub.new(:username => "api-padawan", :password => "GitHubPassw0rd")
token = client.create_token

# Use OAuth to check scopes for a method
client = GitHub.new(:token => token["token"])
scopes = client.check_accepted_scopes_for("/user")

puts scopes

# Use Basic Auth to create a new token with desired scopes
client = GitHub.new(:username => "api-padawan", :password => "GitHubPassw0rd")
token  = client.create_token(["user"])

puts token.inspect