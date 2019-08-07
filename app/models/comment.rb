class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :content, presence: true, lenght: {minimum: 5, maximimum: 1000}
end
 