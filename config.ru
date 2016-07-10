require "./tubity"
require 'redis'
require 'rack/cors'

# redis
redis_host = ENV['REDIS_HOST'] || '127.0.0.1'
R = Redis.new host: redis_host,
              driver: :hiredis

# cors
use Rack::Cors do
  allow do
    origins '*'
    resource '/s', headers: :any, methods: :post
  end
end

run Tubity
