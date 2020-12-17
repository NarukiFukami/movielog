class Director < ApplicationRecord
  has_many :works
  
  validates :name, presence: true
  validates :country, presence: true

  scope :by_new, ->{ order(updated_at: :desc) }
end
