# Given a month, day, and year, validate whether or not
# the resulting date is within a given set of parameters.
#
# Step 1: determine if the year is a leap year
#   and if so, assign the number of days for February at 29
# Step 2: determine if the year falls within the range 1880-2280, inclusive
# Step 3: determine if the month is a valid entry
# Step 4: determine the number of days based on the month and year submitted
# Step 5: determine if the day submitted falls within that determined range
# Step 6: determine if all 3 factors are true, given the set of parameters

def valid_date?(month, day, year)
valid_date = true
# Step 1: determine if the year is a leap year,
#   and if so, assign the number of days for February at 29
  february = 28
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    february = 29
  else
  end

# Step 2: determine if the year falls within the range 1880-2280, inclusive
#  year_chk = false
  if year <= 1880 || year >= 2280
    valid_date = false
  else
  end

# Step 3: determine if the month is a valid entry
#  month_chk = false
  if month <= 1 || month => 12
    valid_date = false
  else
  end

# Step 4: determine the number of days based on the month and year submitted
  month_days = 31
  if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
    month_days = 31
  elsif month == 4 || month == 6 || month == 9 || month == 11
    month_days = 30
  elsif month == 2
    month_days = february
  end

# Step 5: determine if the day submitted falls within that determined range
#  day_chk = false
  if day <= 1 || day >= month_days
      valid_date = false
  else
  end

# Step 6: determine if all 3 factors are true, given the set of parameters
#  if month_chk == true && day_chk == true && year_chk == true
#    return true
#  else
#  end
valid_date

end
