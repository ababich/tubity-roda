class TubityUrl

  KEY_URL  = 'tubity:url:'
  KEY_HASH = 'tubity:hash:'

  def self.shorten(url:)
    return unless url.to_s.match(URI.regexp)

    hash = R.get(KEY_URL + url)

    unless hash
      hash = Counter.get_hash

      R.set(KEY_HASH + hash, url)
      R.set(KEY_URL + url, hash)
    end

    hash
  end


  def self.expand(hash:)
    R.get(KEY_HASH + hash)
  end
end