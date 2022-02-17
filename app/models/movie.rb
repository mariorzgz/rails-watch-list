class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

  def find_bookmark(list)
    bookmarks.find_by list_id: list.id
  end
end
