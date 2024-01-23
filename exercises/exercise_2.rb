require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

### Exercise 2: Update the first store

# Load the first store (with `id = 1`) from the database and assign it to an instance variable `@store1`.
# Load the second store from the database and assign it to `@store2`.
# Update the first store (`@store1`) instance in the database. (Change its name or something.)

# Your code goes here ...
@store1 = Store.find(id = 1)

@store2 = Store.find(id = 2)

store1 = Store.find_by(annual_revenue: 300000)

if store1
  store1.update(annual_revenue: 400000)
else
  puts "No store found with the annual revenue of $300,000."
end