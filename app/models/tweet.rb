class Tweet < ApplicationRecord
  belongs_to :user

  has_many :likes

  validates :message, presence: true, length: {maximum: 140, too_long: 'A tweet is 140 characters max.  Everybody knows that!'}

end
