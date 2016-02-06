class Game < ActiveRecord::Base
  has_many :people

  def format_time
    self.date.strftime("%B, %Y")
  end

end
