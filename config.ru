require "./tubity"
require 'redis'

redis_host = ENV['REDIS_HOST'] || '127.0.0.1'
R = Redis.new host: redis_host,
              driver: :hiredis

run Tubity
