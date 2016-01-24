class Tag < ActiveRecord::Base
  validates :name, presence: true
  has_many :posttags, dependent: :destroy
  has_many :posts, through: :posttags
end
