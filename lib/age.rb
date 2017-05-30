module Age
  def age
    dob = Date.parse(@dob)
    today = Date.today
    today = adjust_today(dob, today)
    today.year - dob.year
  end

  private

  def adjust_today(dob, today)
    if dob.month > today.month ||
        dob.month == today.month && dob.day >= today.day
      today <<= 12 # one year younger
    end
    today
  end
end
