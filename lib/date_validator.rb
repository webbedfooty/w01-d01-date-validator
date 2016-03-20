# Given a month, day, and year, validate whether or not
# the resulting date is within a given set of parameters.
#
# Step 1: determine if the year falls within the range 1880-2280, inclusive
# Step 2: determine if the month is a valid entry
# Step 3: determine if the year is a leap year
#   and if so, assign the number of days for February at 29
# Step 4: determine the number of days based on the month and year submitted
# Step 5: determine if the day submitted falls within that determined range
#######################################

def valid_date?(month, day, year)
  year_valid(year) &&
  month_valid(month) &&
  day_valid(day, month, year)
end
#######################################
# Step 1: determine if the YEAR falls within the range 1880-2280, inclusive
#
# + YEAR: integer representation of year (e.g. 1999 = year 1999)
#
# Returns true if YEAR is valid; otherwise returns false
def year_valid(year)
  year >= 1880 && year <= 2280
end
#######################################
# Step 2: determines if the MONTH is a valid entry
#
# + MONTH: integer representation of month (e.g. January = 1)
#
# Returns true if MONTH is valid; otherwise returns false
def month_valid(month)
  month >= 1 && month <= 12
end
#######################################
# Step 3: determine if the year is a LEAP YEAR,
# and if so, assign the number of days for February at 29
#
# + FEBRUARY: integer representation for the number of days in February
#
# Returns 29 if it is LEAP YEAR; otherwise 28 if not a LEAP YEAR
def determine_february(year)
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    february = 29
  else
    february = 28
  end
end
#######################################
# Step 4: determine the number of days based on the month and year submitted
#
# + DAYS IN MONTH: integer representation of the number of days in the month
#
# Returns a value for 'month_days' based on the MONTH and YEAR provided;
# the value for FEBRUARY is determined on whether or not it is a LEAP YEAR
def determine_month_days(month, year)
  month_days = {
    1 => 31,
    2 => determine_february(year),
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
#######################################
# Step 5: determine if the DAY submitted falls within that determined range
#
# + DAY: integer representation of the day (e.g. 4 = 4th)
#
# Returns true if DAY is valid; otherwise returns false
def day_valid(day, month, year)
  day >= 1 && day <= determine_month_days(month, year)
end
