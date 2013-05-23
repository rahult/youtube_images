require "youtube_images/version"

module YouTubeImages

  class IncorrectYouTubeID < Exception; end

  def self.For(id_or_url, secure=false)
    id = id_or_url[/[\w]+$/]

    raise IncorrectYouTubeID if id.nil? || (id.length < 11)

    url_prefix = url_constructor(secure, id)

    {
      default: "#{url_prefix}/default.jpg",
      medium:  "#{url_prefix}/hqdefault.jpg",
      high:    "#{url_prefix}/mqdefault.jpg",
      maximum: "#{url_prefix}/maxresdefault.jpg"
    }
  end

  private

  def self.uri
    "img.youtube.com/vi"
  end

  def self.protocol(secure)
    secure ? "https" : "http"
  end

  def self.url_constructor(secure, id)
    "#{protocol(secure)}://#{uri}/#{id}"
  end

end
