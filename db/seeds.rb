#Admin User Creation
# user = User.create(first_name: "test", last_name: "admin", email: "admin@TurboTechParts.com", password: "Admin123", phone_number: "000000000", address: "xyz")
# user.add_role(:admin)
#
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

require 'faker'

puts "Electronic Categories Creation ..."
cat1 = ProductCategory.find_or_create_by! name: 'Power Products'
cat2 = ProductCategory.find_or_create_by! name: 'Connectors'
cat3 = ProductCategory.find_or_create_by! name: 'Sensors'
cat4 = ProductCategory.find_or_create_by! name: 'Cables and wire'

def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_images', file_name))
end

puts "Products Creation ..."

Product.destroy_all

cat1.products.create!({
                        name:  'SOGO BUGATTI-B65 PRO MAX CAR LED KIT',
                        description: Faker::Hipster.paragraph,
                        image: open_asset('5.jpg'),
                        price: 70.99,
                        quantity: 10
                      })

cat3.products.create!({
                        name:  'Automotive Part',
                        description: Faker::Hipster.paragraph,
                        image: open_asset('2.jpeg'),
                        price: 100.99,
                        quantity: 10
                      })


cat2.products.create!({
                        name:  "Electronic Circuit",
                        description: Faker::Hipster.paragraph,
                        image: open_asset('2.jpeg'),
                        quantity: 16,
                        price: 15.49
                      })

cat4.products.create!({
                        name:  'Fibre Cable',
                        description: Faker::Hipster.paragraph,
                        image: open_asset('4.jpeg'),
                        quantity: 18,
                        price: 26.00
                      })

cat4.products.create!({
                        name:  'Fibre\'s Electric Wire',
                        description: Faker::Hipster.paragraph,
                        image: open_asset('5.jpg'),
                        quantity: 29,
                        price: 200.29
                      })
cat2.products.create!({
                        name:  'Home Set',
                        description: Faker::Hipster.paragraph,
                        image: open_asset('8.jpg'),
                        quantity: 10,
                        price: 30.00
                      })
cat4.products.create!({
                        name:  'Tyre',
                        description: Faker::Hipster.paragraph,
                        image: open_asset('7.jpeg'),
                        quantity: 10,
                        price: 70.99
                      })

cat4.products.create!({
                        name:  'Auto Part 1',
                        description: Faker::Hipster.paragraph,
                        image: open_asset('8.jpg'),
                        price: 3_052.00,
                        quantity: 10
                      })

cat4.products.create!({
                        name:  'Radiator 2',
                        description: Faker::Hipster.paragraph,
                        image: open_asset('7.jpeg'),
                        price: 987.65,
                        quantity: 10
                      })
cat4.products.create!({
                        name:  'Radiator 3',
                        description: Faker::Hipster.paragraph,
                        image: open_asset('8.jpg'),
                        price: 987.65,
                        quantity: 10
                      })
cat4.products.create!({
                        name:  'Best Fibre\'s Electric Wire',
                        description: Faker::Hipster.paragraph,
                        image: open_asset('5.jpg'),
                        price: 300.29,
                        quantity: 40
                      })
cat4.products.create!({
                        name:  'WHeel 2',
                        description: Faker::Hipster.paragraph,
                        image: open_asset('7.jpeg'),
                        price: 800.99,
                        quantity: 80
                      })


