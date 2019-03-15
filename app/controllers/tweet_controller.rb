class TweetController < ApplicationController
  helper_method :timeline

 


  ## これ書かないとgemが動きません ##


  require 'twitter'
  def timeline
    client = Twitter::REST::Client.new do |config|


      config.consumer_key = ENV['TWITTER_KEY']


      config.consumer_secret = ENV['TWITTER_SECRET']


      config.access_token = session[:oauth_token]


      config.access_token_secret = session[:oauth_token_secret]


    end
    @text =[]
    @fav =[]
    @rt =[]
    @image =[]
    client.home_timeline(:count => 200).each do |tweet|


      ## 作りかけで恐縮ですが...二重配列にRT数などの要素を格納する予定です ##





      @text.push(tweet.full_text)


      @fav.push(tweet.favorite_count)


      @rt.push(tweet.retweet_count)

      @image.push(tweet.user.profile_image_url_https.to_s)



    end
  end
end
