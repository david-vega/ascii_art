class User < ActiveRecord::Base
  has_many :posts
  attr_accessible :email, :name, :provider, :uid

  def self.create_with_omniauth auth
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end
end
