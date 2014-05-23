def mutate_test(m)
  m.push(7)
end

number = [1,5]
puts "These numbers are before mutate #{number}"
mutate_test(number)
puts "These numbers are after putate #{number}"


# mutate array in method
a= [1,2,3,4,5]

def mutating(mutate)
  mutate.delete(2)
end
puts
puts 'second example'
puts
puts a #before mutate
puts
mutating(a)
puts a


