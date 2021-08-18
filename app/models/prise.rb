class Prise < ApplicationRecord
  
  def moment?
    if moment.hour >= 6 && moment.hour < 12
      "matin"
    elsif moment.hour >= 12 && moment.hour < 18
      "midi"
    elsif moment.hour >= 18 
      "soir"
    end
  end
  
end
