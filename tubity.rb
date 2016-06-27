require 'roda'
require 'byebug'
require 'oj'

Dir[File.dirname(__FILE__) + '/models/*.rb'].each {|file| require file }

class Tubity < Roda
  plugin :json_parser, parser: Oj.method(:load)
  plugin :json, serializer: proc{|o| Oj.dump(o)}

  plugin :path
  path :root, url: true do |hash|
    "/#{hash}"
  end

  route do |r|
    r.post 's' do
      url = r.params['url']
      shorten_url = TubityUrl.shorten(url: url)

      # Oj requires old hash format to preserve keys as String
      { 'url' => url, 'shorten_url' => root_url(shorten_url) }
    end

    r.is ':hash' do |hash|
      r.redirect TubityUrl.expand(hash: hash)
    end
  end

end
