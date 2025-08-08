# BRRRR Calculator: Buy, Rehab, Rent, Refinance, Repeat

def prompt(message)
  print message
  gets.to_f
end

purchase_price = prompt('Purchase price: ')
rehab_costs = prompt('Rehab costs: ')
after_repair_value = prompt('After repair value: ')
rent_per_month = prompt('Monthly rent: ')
ltv = prompt('Refinance LTV (0-1): ')

total_investment = purchase_price + rehab_costs
refinance_amount = after_repair_value * ltv
cash_still_invested = [total_investment - refinance_amount, 0].max
annual_cash_flow = rent_per_month * 12

puts "Total investment: $#{total_investment}"
puts "Refinance amount: $#{refinance_amount}"
puts "Cash still invested: $#{cash_still_invested}"
puts "Annual cash flow: $#{annual_cash_flow}"

if cash_still_invested > 0
  roi = (annual_cash_flow / cash_still_invested) * 100
  puts "Return on investment: #{roi.round(2)}%"
else
  puts 'Infinite ROI (no cash invested after refinance)'
end

