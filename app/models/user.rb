class User < ActiveRecord::Base

  def self.find_or_create_from_auth(auth)
    provider = auth[:provider]
    uid = auth[:uid]
    nickname = auth[:info][:nickname]
    image_url = auth[:info][:image]
    token = auth[:credentials][:token]
    stoken = auth[:credentials][:secret]
    
    
    self.find_or_create_by(provider: provider, uid: uid) do |user|
      user.nickname = nickname
      user.image_url = image_url
      user.token = token
      user.stoken = stoken
    end
  end
end