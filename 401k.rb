#first_year = ((principal + match + deposit) * 0.7) + (principal + match + deposit)
#second_year = ((total + match + deposit) * 0.07) + (total + match + deposit)

# USAGE: <match ie 0.50> <principal> <depo_percent ie: 0.15> <interest ie: 0.07> <years> <salary>
#year1 = (principal + deposit + (match * deposit)) * interest
#others = (yearbefore + deposit + (match * deposit)) * interest
match = ARGV[0].to_f
principal = ARGV[1].to_f
percentage = ARGV[2].to_f
interest = ARGV[3].to_f + 1
years = ARGV[4].to_i
salary = ARGV[5].to_i
total_depo = percentage * salary


year = 1
total = 0
while year <= years
  if year <= 1
    total_time = (principal + total_depo + (match * total_depo)) * interest
    total = total + total_time
  else
    total_time = (total_depo + (match * total_depo)) * interest
    total = total + total_time
  end
  year = year + 1
end

puts "After #{years} year(s), the 401k is worth: #{total}"
