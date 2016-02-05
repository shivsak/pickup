class Gameperson < ActiveRecord::Base
  belongs_to :person
  belongs_to :game
end
