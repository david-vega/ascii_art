class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :text, :title, :state, :city
end
