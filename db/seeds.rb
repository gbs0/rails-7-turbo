require 'faker'

case Rails.env
  when 'development'
    puts 'Seeding development database'
    puts '-' * 80
    puts 'Removing all Products from database...'
    puts "\n"

    Product.destroy_all

    puts "Creating Products in Database..."
  
    5.times do
      Product.create!(
        name: Faker::Commerce.product_name,
        price: Faker::Commerce.price,
        quantity: (1..10).to_a.sample
      )
    end
    puts "Done Creating Products!"

  when 'test'
    puts 'Seeding development database'
    puts '-' * 80
    puts 'Removing all Products from database...'
    puts "\n"
    
    Product.destroy_all

    puts "Creating Products in Database..."
  
    5.times do
      Product.create!(
        name: Faker::Commerce.product_name,
        price: Faker::Commerce.price,
        quantity: (1..10).to_a.sample
      )
    end
    puts "Done Creating Products!"

  when 'production'
end