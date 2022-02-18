class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true

  def default_photo
    photo.key.nil? ? "photo-1574894078563-01e879b89809_ufnpax" : photo.key
  end
end
