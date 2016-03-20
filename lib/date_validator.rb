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
  year_valid(year) &&
  month_valid(month) &&
  day_valid(day)
end

# Step : determine if the year falls within the range 1880-2280, inclusive
def year_valid(year)
  if year > 1879 && year < 2281
end

# Step : determine if the month is a valid entry
def month_valid(month)
  month > 0 && month < 13
end

# Step : determine the number of days based on the month and year submitted

def month_days(month, year)
  month_days = {
    1 => 31,
    2 => february(year),
    3 => 31,
    4 => 30,
    5 => 31,
    6 => 30,
    7 => 31,
    8 => 31,
    9 => 30,
    10 => 31,
    11 => 30,
    12 => 31
  }
  month_days.default = 0

  month_days[month]
end

# Step : determine if the year is a leap year,
# and if so, assign the number of days for February at 29

def february(year)
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    february = 29
  else
    february = 28
end

# Step : determine if the day submitted falls within that determined range
def day_valid(day, month_days)
  day > 0 && day <= month_days
end

end
