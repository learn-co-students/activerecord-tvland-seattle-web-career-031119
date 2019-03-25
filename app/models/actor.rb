class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    name = ""
    self.characters.collect {|character|
      name = character.name
    }
    show_id = 0
    self.characters.each {|character|
      show_id =character.id
    }

    show_name = Show.all.find(show_id).name

    "#{name} - #{show_name}"
  end


end
