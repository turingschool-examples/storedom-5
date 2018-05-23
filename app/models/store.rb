class Store < ApplicationRecord
  before_save :generate_slug
  has_many :items
  validates :slug, uniqueness: true
  validates :name, uniqueness: true


  def generate_slug
    self.slug = name.parameterize
  end
end
