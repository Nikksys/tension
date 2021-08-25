class Prise < ApplicationRecord
  
  def moment?
    if moment.hour >= 6 && moment.hour < 12
      "matin"
    elsif moment.hour >= 12 && moment.hour < 18
      "midi"
    elsif moment.hour >= 18 || moment.hour < 6
      "soir"
    end
  end
  
  def create_timestamp
        # Create the DateTime
        date = day.to_datetime + time.seconds_since_midnight.seconds
        # Set the timezone in which you want to interpret the time
        zone = 'Bogota'
        # Find the offset from UTC taking into account daylight savings
        offset = DateTime.now.in_time_zone(zone).utc_offset / 3600
        # Back out the difference to find the adjusted UTC time and save it as UTC with the correct time
        self.date = date - offset.hours
    end
  
end
