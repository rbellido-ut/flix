class Movie < ActiveRecord::Base
  def flop?
    total_gross.blank? || total_gross < 50000000
  end

  def self.released # defining a method with 'self' is similar to making a method static (singleton)
    where('released_on <= ?', Time.now).order(released_on: :desc)
  end

end
