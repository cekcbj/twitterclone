class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :tweet, presence: true, length: {maximum: 150}
  
end
