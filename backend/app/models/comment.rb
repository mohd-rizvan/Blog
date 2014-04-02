class Comment < ActiveRecord::Base
  attr_accessible :desc, :post_id, :id
  belongs_to :post
end
