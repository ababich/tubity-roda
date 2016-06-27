require 'roda'
require 'byebug'
require 'oj'

Dir[File.dirname(__FILE__) + '/models/*.rb'].each {|file| require file }

class Tubity < Roda
  plugin :json_parser, parser: Oj.method(:load)
  plugin :json, serializer: proc{|o| Oj.dump(o)}

  route do |r|
    r.post 's' do
      url = r.params['url']
      shorten_url = String.new(TubityUrl.shorten(url: url).to_s)

      {
        'url' => url,
        'shorten_url' => shorten_url
      }
    end

    r.is ':hash' do |hash|
      r.redirect TubityUrl.expand(hash: hash)
    end
  end

end
