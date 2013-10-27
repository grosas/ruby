require 'httparty'
require 'json'

class GitHub
  API_CLIENT_ID     = '34a57b3c1f20e85a56ab'
  API_CLIENT_SECRET = '89060fce512d1042d168c3e71504ae35208cef1b'
  
  include HTTParty
  headers "User-Agent" => "codecademy"
  basic_auth "api-padawan", "GitHubPassw0rd"

  def create_token
    endpoint = "https://api.github.com/authorizations"
    post_body = {
      :client_id     => API_CLIENT_ID,
      :client_secret => API_CLIENT_SECRET,
      :scopes        => ["repo:status"]
    }
    self.class.post endpoint, :body => post_body.to_json
  end
end

client = GitHub.new
response = client.create_token

puts response.parsed_response