class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: 'Movie has already been bookmarked' }
end
