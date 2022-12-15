require "csv"
require "faker"
Product.destroy_all
Category.destroy_all
AdminUser.destroy_all
Province.destroy_all
User.destroy_all

csv_file = Rails.root.join("db/MobilePhones.csv")
csv_data = File.read(csv_file)

phones = CSV.parse(csv_data, headers: true)

phones.each do |m|
  mobile_phone_input = Category.find_or_create_by(name: m["category"])

  if mobile_phone_input&.valid?
    phone = mobile_phone_input.products.find_or_create_by(
      name:        m["name"],
      price:       m["price"],
      description: Faker::Lorem.sentences(number: 35),
      image:       Faker::LoremFlickr.image(size: "250x250")
    )
    Rails.logger.debug "Invalid product #{m['name']}" unless mobile_phone_input.valid?
  end
  Rails.logger.debug m["name"]
end

province_csv_file = Rails.root.join("db/Province_Tax.csv")
province_csv_file_data = File.read(province_csv_file)

provinces = CSV.parse(province_csv_file_data, headers: true)

provinces.each do |m|
  province_csv_file_data = Province.find_or_create_by(name: m["Province"])
  province_csv_file_data.gst = m["GST"]
  province_csv_file_data.pst = m["PST"]
  province_csv_file_data.hst = m["HST"]
  province_csv_file_data.save!
end

if Rails.env.development?
  AdminUser.create!(email: "admin@example.com", password: "password",
                    password_confirmation: "password")
end
