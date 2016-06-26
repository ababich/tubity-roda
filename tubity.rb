require 'roda'
require 'byebug'
require 'oj'

Dir[File.dirname(__FILE__) + '/models/*.rb'].each {|file| require file }

class Tubity < Roda
  route do |r|
    r.post 's' do
      r.body.rewind  # in case someone already read it
      data = Oj.load(r.body.read)
      url = data['url']
      shorten_url = String.new(TubityUrl.shorten(url: url).to_s)

      # it is important for Oj not to use new ruby hash syntax
      Oj.dump({
        'url' => url,
        'shorten_url' => shorten_url
      })
    end

    r.is ':hash' do |hash|
      r.redirect TubityUrl.expand(hash: hash)
    end
  end

end
