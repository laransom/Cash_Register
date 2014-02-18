# Cash Register I
# Lee & Lydia

puts "What is the amount due?"
total = gets.chomp.to_f

puts "What is the amount tendered?"
cash = gets.chomp.to_f
change = cash - total
if cash < total
  change = change.abs
  puts "WARNING: Customer still owes $#{sprintf('%.2f', change)}! Exiting..."
else
  puts '============THANK YOU============'
  puts "The total change due is $#{sprintf('%.2f', change)}"
  puts
  puts Time.now.strftime('%m/%d/%Y %l:%M%p')
  puts '================================='
end
