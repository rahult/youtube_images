require 'minitest/autorun'
require 'minitest/pride'
require "youtube_images"
require 'coveralls'
Coveralls.wear!

def image_hash_for(id)
  @images_hash =  {
    default: "http://img.youtube.com/vi/#{id}/default.jpg",
    medium:  "http://img.youtube.com/vi/#{id}/hqdefault.jpg",
    high:    "http://img.youtube.com/vi/#{id}/mqdefault.jpg",
    maximum: "http://img.youtube.com/vi/#{id}/maxresdefault.jpg"
  }
end


describe YouTubeImages do

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
      YouTubeImages::For("onghF8NYbPw").must_equal image_hash_for("onghF8NYbPw")
    end

    it "must respond with an image" do
      YouTubeImages::For("wrHU-DSirsw").must_equal image_hash_for("wrHU-DSirsw")
    end

  end

  describe "when asked about images for a youtube URL" do

    it "must respond with an image" do
      YouTubeImages::For("http://www.youtube.com/watch?v=onghF8NYbPw").must_equal image_hash_for("onghF8NYbPw")
    end

  end

end
