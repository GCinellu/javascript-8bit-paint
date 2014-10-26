class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :paintings
  has_many :palettes
  has_many :colors, through: :palettes

  after_create :create_palette

  private

  def create_palette
    self.palettes.create label: 'Default Palette'
  end
end
