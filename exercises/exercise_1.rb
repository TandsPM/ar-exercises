require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Use Active Record's `create` class method multiple times to create 3 stores in the database:

# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)

# Output (`puts`) the number of the stores using ActiveRecord's `count` method,
#to ensure that there are three stores in the database.

# Your code goes below here ...

class AddLocationToStores < ActiveRecord::Migration[7.1]
  def change
    add_column :location, :annual_revenue, :apparel_carried
  end
end

class Store < ActiveRecord::Base
  attr_accessor :location, :annual_revenue, :apparel_carried
end

Store.create(location: 'Burnaby', annual_revenue: 300000, apparel_carried: "men's and women's")
Store.create(location: 'Richmond', annual_revenue: 1260000, apparel_carried: "women's only")
Store.create(location: 'Gastown', annual_revenue: 190000, apparel_carried: "men's only")

puts "Number of stores in the database: #{Store.count}"