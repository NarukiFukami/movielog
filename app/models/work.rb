class Work < ApplicationRecord
  mount_uploader :image, WorkImageUploader

  belongs_to :director

  acts_as_list

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :release, presence: true
  validates :cast, presence: true
  validates :description, presence: true

  scope :by_new, ->{ order(updated_at: :desc) }
  scope :by_position, ->{ order(position: :asc) }
end
