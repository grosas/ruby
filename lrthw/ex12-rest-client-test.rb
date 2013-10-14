# /usr/bin/ruby
require 'rest-client'

response = RestClient.get 'https://10.0.28.67/api/2.0/global/config'

puts response

