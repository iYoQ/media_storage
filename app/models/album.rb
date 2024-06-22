class Album < ApplicationRecord
  acts_as_paranoid

  has_one_attached :logo

  belongs_to :band
  has_many :songs, dependent: :destroy

  accepts_nested_attributes_for :songs
end
