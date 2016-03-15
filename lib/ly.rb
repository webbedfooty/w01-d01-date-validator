year = gets.chomp
february = 28
if year % 4 == 0 || year % 100 != 0 && year % 400 == 0
  february = 29
else
end
