require "csv"
require "faker"
Product.destroy_all
Category.destroy_all


csv_file = Rails.root.join('db/MobilePhones.csv')
csv_data = File.read(csv_file)

phones = CSV.parse(csv_data, headers: true)

phones.each do | m |
  mobile_phone_input = Category.find_or_create_by(name: m["category"])

if mobile_phone_input && mobile_phone_input.valid?
  phone = mobile_phone_input.products.find_or_create_by(
    name: m["name"],
    price: m["price"],
    description: Faker::Lorem.sentences(number: 35),
    image: Faker::LoremFlickr.image(size: "250x250")
  )
  puts "Invalid product #{m['name']}" unless mobile_phone_input.valid?
end
  puts m['name']
endAdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?