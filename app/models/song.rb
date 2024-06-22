class Song < ApplicationRecord
  acts_as_paranoid

  has_one_attached :song_file

  belongs_to :album
end
