require 'json'
require 'open-uri'

class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses

end
