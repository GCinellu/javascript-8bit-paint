class Palette < ActiveRecord::Base
  has_many :colors
  belongs_to :user
end
