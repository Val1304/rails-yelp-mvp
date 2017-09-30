class Review < ApplicationRecord
  belongs_to :restaurant
  validates_associated :restaurant
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], message: "Rating should be between 0 and 5" }

end


# , greater_than_or_equal_to: 0, less_than_or_equal_to: 5
