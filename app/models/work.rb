class Work < ApplicationRecord
  belongs_to :director

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :release, presence: true
  validates :cast, presence: true
  validates :description, presence: true

  scope :by_new, ->{ order(updated_at: :desc) }
end
