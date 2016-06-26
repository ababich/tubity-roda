require "./tubity"
require 'redis'

R = Redis.new driver: :hiredis

run Tubity
