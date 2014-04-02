class Post < ActiveRecord::Base
  attr_accessible :desc, :title, :id
  has_many :comments
end
