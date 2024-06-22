class Band < ApplicationRecord
  acts_as_paranoid

  has_one_attached :logo

  has_many :albums, dependent: :destroy
  has_many :songs, through: :albums
end
