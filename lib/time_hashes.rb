class Time
  define_method(:time_hashes) do
    time = self
    if time.friday?()
        p "Hooray!"
    elsif time.monday?()
        p "Looks like somebody has a case of the Mondays"
    end
  end

  define_method(:day_light_savings) do
      time = self
      next_week = time + (7*24*60*60)
      if time.dst?() && next_week.dst?()
          true
      elsif next_week.dst?()
          p "Daylight Savings Time is coming soon!"
      else
          p "Don't reset your clocks yet!"
      end

  end
end
