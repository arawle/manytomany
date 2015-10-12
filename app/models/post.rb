class Post < ActiveRecord::Base
  validates_presence_of :title, :content, :author
  has_many :posttags, dependent: :destroy
  has_many :tags, through: :posttags
end
