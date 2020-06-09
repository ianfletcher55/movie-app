class Movie < ApplicationRecord

  #validates :title, :director, length: { greater_than: 2 }
  validates :year, numericality: { greater_than_or_equal_to: 1900 }
  validates :plot, length: { in: 10...250 }
  #validates :english, presence: true

end
