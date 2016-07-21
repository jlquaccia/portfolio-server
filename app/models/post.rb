class Post < ActiveRecord::Base
  validates :title, :body, :description, :image_url, presence: true
end