require 'pry'
puts 'What is the amount due?'
amount_due = gets.chomp.to_f
puts 'What is the amount tendered?'
amount_tendered = gets.chomp.to_f

change = amount_tendered - amount_due
puts "==============================="
puts "Total Change Due: $#{"%.2f"%change}"

change = change.divmod 1



if change[0] >= 1
 puts "Dollars Due: #{change[0]}"
end

if change[1] / 0.25 >= 1
  cents_left = change[1] / 0.25
  quarters = cents_left.divmod 1
  puts "Quarters Due: #{quarters[0]}"
  change = change[1]
  amount_remaining = change - (quarters[0].to_f * 0.25)
end

if amount_remaining != nil 
  cents_left = amount_remaining/0.05
  nickles = cents_left.divmod 1
  puts "Nickles Due: #{nickles[0]}"
  amount_remaining = amount_remaining - (nickles[0] * 0.05)
end

if amount_remaining != nil
  cents_left = amount_remaining/0.01
  pennies = cents_left.divmod 1
  puts "Pennies Due: #{pennies[0]}"
end


