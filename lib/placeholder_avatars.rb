require "placeholder_avatars/version"
require 'twitter'

module PlaceholderAvatars
  def self.fetch(keyword="ruby", count=100)
  	Twitter.search(keyword, count: count).results.map(&:profile_image_url)
  end
end
