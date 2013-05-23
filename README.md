# Getting Started [![Build Status](https://travis-ci.org/rahult/youtube_images.png?branch=master)](https://travis-ci.org/rahult/youtube_images) [![Code Climate](https://codeclimate.com/github/rahult/youtube_images.png)](https://codeclimate.com/github/rahult/youtube_images)

**YouTube Images** can be used to extract thumbnails/images for a given youtube video ID or URL without a developer ID. It uses a URL constructor instead of an API

## Requirement

Ruby 1.9 or greater

## Installation

YouTube Images is released as a Ruby Gem. The gem is to be installed within a Ruby
or Rails application. To install, simply add the following to your Gemfile:

```ruby
# Gemfile
gem 'youtube_images'
```

After updating your bundle, you can use YouTubeImages::For("video-id") function within your ruby code

## Usage

For example if you want to fetch the default thumbnail for youtube URL you can do something like this

```ruby
YouTubeImages::For("http://www.youtube.com/watch?v=5zVaFjSxAZs")[:default]
```

## Advanced Usage

```ruby
YouTubeImages::For("http://www.youtube.com/watch?v=5zVaFjSxAZs")
```

will return a hash for default, medium, high and maximum dimension images

So to access different dimension images you can do something like this

```ruby
YouTubeImages::For("http://www.youtube.com/watch?v=5zVaFjSxAZs")[:medium]
```

```ruby
YouTubeImages::For("http://www.youtube.com/watch?v=5zVaFjSxAZs")[:high]
```

```ruby
YouTubeImages::For("http://www.youtube.com/watch?v=5zVaFjSxAZs")[:maximum]
```
