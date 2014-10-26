class Color < ActiveRecord::Base
  belongs_to :palette

  def strip_color
    self.value.gsub!('#','') if self.value.match(/\#|#/)
    self.save
  end
end
