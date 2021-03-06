class Game < ActiveRecord::Base
  has_many :gamepeople
  has_many :people, through: :gamepeople

  def format_time
    self.date.strftime("%B, %Y")
  end

  def get_black_icon
    if self.game_type.downcase == 'football'
      '/images/black_icons/football.png'
    elsif self.game_type.downcase == 'soccer'
      '/images/black_icons/soccer.png'
    elsif self.game_type.downcase == 'basketball'
      '/images/black_icons/basketball.png'
    elsif self.game_type.downcase == 'archery'
      '/images/black_icons/archery.png'
    elsif self.game_type.downcase == 'badminton'
      '/images/black_icons/badminton.png'
    elsif self.game_type.downcase == 'tennis'
      '/images/black_icons/tennis.png'
    elsif self.game_type.downcase == 'squash'
      '/images/black_icons/squash.png'
    elsif self.game_type.downcase == 'swim'
      '/images/black_icons/swim.png'
    elsif self.game_type.downcase == 'baseball'
      '/images/black_icons/baseball.png'
    elsif self.game_type.downcase == 'cycle'
      '/images/black_icons/cycle.png'
    elsif self.game_type.downcase == 'yoga'
      '/images/black_icons/yoga.png'
    elsif self.game_type.downcase == 'beer pong'
      '/images/black_icons/beer.png'
    else

    end
  end

  def get_white_icon

      if self.game_type.downcase == 'football'
        '/images/white_icons/football.png'
      elsif self.game_type.downcase == 'soccer'
        '/images/white_icons/soccer.png'
      elsif self.game_type.downcase == 'basketball'
        '/images/white_icons/basketball.png'
      elsif self.game_type.downcase == 'archery'
        '/images/white_icons/archery.png'
      elsif self.game_type.downcase == 'badminton'
        '/images/white_icons/badminton.png'
      elsif self.game_type.downcase == 'tennis'
        '/images/white_icons/tennis.png'
      elsif self.game_type.downcase == 'squash'
        '/images/white_icons/squash.png'
      elsif self.game_type.downcase == 'swim'
        '/images/white_icons/swim.png'
      elsif self.game_type.downcase == 'baseball'
        '/images/white_icons/baseball.png'
      elsif self.game_type.downcase == 'cycle'
        '/images/white_icons/cycle.png'
      elsif self.game_type.downcase == 'yoga'
        '/images/white_icons/yoga.png'
      elsif self.game_type.downcase == 'beer pong'
        '/images/white_icons/beer.png'
      end
  end

  def get_participants
    self.people
  end

  def is_in_game
    in_game = false
  end

  def get_description
    if self.description.blank?
      "No description available"
    else
      self.description
    end
  end

end
