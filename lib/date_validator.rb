# This method takes three arguments: month, date, and year, and returns either TRUE
# or FALSE (the boolean values, not the string representation of those boolean
# values) depending on whether the date is valid (i.e. does exist on the calendar)
# or is not valid (i.e. does not exist on the calendar).
#
# Here are the rules:

# + The month must be between 1 and 12 (inclusive)
# + The year must be between 1880 and 2280 (inclusive)
# + The day must exist within the month
# + You must account for leap years (look up how leap years work)
# + No using the `Date` class (we'll refactor to allow the `Date` class later this week)
# + Only worry about integer inputs (no floats, strings, etc.)
#
# This method should, in its final form, not do any output.

def valid_date?(month, day, year)
  #write your method here
if month <= 12
  month_chk = true
end

if month = 1 || month = 3 || month = 5 || month = 7 || month = || 8 || month = 10 || month = 12
  month_days = 31
elsif month = 4 || month = 6 || month = 9 || month = 11
  month_days = 30
elsif month = 2
  month = 'february'
end

if day <= month_days
  day_chk = true
end

if year >= 1880 || year <= 2280
  year_chk = true
end

if month_chk = true && day_chk = true && year_chk = true

  
  return true
end
