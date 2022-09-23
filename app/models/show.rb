class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list 
    self.characters.map do |role|
        "#{role.actor.first_name} #{role.actor.last_name}"
    end 
  end 

end