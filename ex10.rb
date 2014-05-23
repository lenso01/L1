def mutate_test(m)
  m.push(7)
end


number = [1,5]
puts "These numbers are before mutate #{number}"


mutate_test(number)
puts "These numbers are after putate #{number}"

