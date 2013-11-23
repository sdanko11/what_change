require 'pry'
puts 'What is the amount due?'
amount_due = gets.chomp.to_f
puts 'What is the amount tendered?'
amount_tendered = gets.chomp.to_f

change = amount_tendered - amount_due
puts "==============================="
puts "Total Change Due: $#{"%.2f"%change}"


if change >= 1.00
  change_split = change.divmod 1
  dollars_due = change_split[0]
  puts "Dollars Due: #{dollars_due}"
  change = change_split[1]
end

if change >= 0.25 
  change_divided = change/0.25
  change_split = change_divided.divmod 1
  quarter_due = change_split[0]
  change = change - (0.25 * quarter_due)
  puts "Quarters Due: #{quarter_due}"
end

if change >= 0.10 && change < 0.25
  change_divided = change/0.10
  change_split = change_divided.divmod 1
  dimes_due = change_split[0]
  change = change - (0.10 * dimes_due)
  puts "Dimes Due: #{dimes_due}"
  change = change.round(3)
end

if change >= 0.05 && change < 0.10
  change_divided = change/0.05
  change_split = change_divided.divmod 1
  nickles_due = change_split[0]
  change = change - (0.05 *nickles_due)
  puts "Nickles Due: #{nickles_due}"
  change = change.round(3)
end

if change >= 0.01 && change < 0.05
  change_divided = change/0.01
  change_split = change_divided.divmod 1
  pennies_due = change_split[0]
  puts "Pennies Due: #{pennies_due}"
end

