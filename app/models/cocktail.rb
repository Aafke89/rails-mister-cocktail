class Cocktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  mount_uploader :image, ImageUploader


  validates :name, presence: true, uniqueness: true

end
