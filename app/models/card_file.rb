class CardFile < ApplicationRecord
  belongs_to :user
  has_many :words
  validates :filename, presence: true
end
