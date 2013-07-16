class Post < ActiveRecord::Base
  attr_accessible :text, :title, :state, :city
end
