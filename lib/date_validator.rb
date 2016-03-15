def valid_date?(month, day, year)
  february = 28
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    february = 29
  else
  end

  year_chk = false
  if year >= 1880 && year <= 2280
    year_chk = true
  else
  end

  month_chk = false
  if month >= 1 && month <= 12
    month_chk = true
  else
  end

  month_days = 31
  if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
    month_days = 31
  elsif month == 4 || month == 6 || month == 9 || month == 11
    month_days = 30
  elsif month == 2
    month_days = february
  end

  day_chk = false
  if day >= 1 && day <= month_days
    day_chk = true
  else
  end

  if month_chk == true && day_chk == true && year_chk == true
    return true
  else
  end
end
