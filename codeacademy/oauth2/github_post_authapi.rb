require 'httparty'
require 'json'

class GitHub
  include HTTParty
  headers "User-Agent" => "codecademy"
  basic_auth "api-padawan", "GitHubPassw0rd"

  def create_token
    endpoint = 'https://api.github.com/authorizations'
    self.class.post endpoint, :body => {}.to_json
  end
end

client = GitHub.new
response = client.create_token

print response.parsed_response


=begin response
{"id"=>4166989, "url"=>"https://api.github.com/authorizations/4166989", "app"=>{"name"=>"GitHub API", "url"=>"http://developer.github.com/v3/oauth/#oauth-authorizations-api", "client_id"=>"00000000000000000000"}, "token"=>"facf5c5c8325bc35bb647b33138afae7f90b75ca", "note"=>nil, "note_url"=>nil, "created_at"=>"2013-10-23T11:57:15Z", "updated_at"=>"2013-10-23T11:57:15Z", "scopes"=>[]}nil
=end