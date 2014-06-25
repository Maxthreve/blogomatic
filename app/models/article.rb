class Article < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 3}
  belongs_to :dietitian
  has_and_belongs_to_many :tags
end
