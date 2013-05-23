require 'minitest/autorun'
require 'minitest/pride'
require "youtube_images"

describe YouTubeImages do

  before do
    @images_hash =  {
      default: "http://img.youtube.com/vi/onghF8NYbPw/default.jpg",
      medium:  "http://img.youtube.com/vi/onghF8NYbPw/hqdefault.jpg",
      high:    "http://img.youtube.com/vi/onghF8NYbPw/mqdefault.jpg",
      maximum: "http://img.youtube.com/vi/onghF8NYbPw/maxresdefault.jpg"
    }
  end

  describe "when asked about images for a invalid youtube video" do

    it "must respond with an exception if the URL is invalid" do
      proc { YouTubeImages::For("http://asd") }.must_raise YouTubeImages::IncorrectYouTubeID
    end

    it "must respond with an exception if the URL is invalid" do
      proc { YouTubeImages::For("asdfasd") }.must_raise YouTubeImages::IncorrectYouTubeID
    end

  end

  describe "when asked about images for a youtube ID" do

    it "must respond with an image" do
      YouTubeImages::For("onghF8NYbPw").must_equal @images_hash
    end

  end

  describe "when asked about images for a youtube URL" do

    it "must respond with an image" do
      YouTubeImages::For("http://www.youtube.com/watch?v=onghF8NYbPw").must_equal @images_hash
    end

  end

end
