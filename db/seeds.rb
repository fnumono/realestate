# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Property.delete_all

address = Faker::Address.street_address
price = Faker::Commerce.price
name = Faker::Name.name
description = Faker::Book.title
type = Faker::Book.genre

# property_list = [
# 	["Rumah", "Menteng Indah", "Rumah Baru bersih 3 kamar", "2.6M", "jual"],
# 	["Ruko", "Puri Indah", "Rumah Baru bersih 3 kamar", "3.8M", "sewa"],
# 	["Apartemen", "Pik", "Rumah Baru bersih 3 kamar", "7.3M", "jual"],
# 	["Rumah", "Karawaci", "Rumah Baru bersih 3 kamar", "12.2M", "jual"],
# 	["Apartemen", "Tangerang", "Rumah Baru bersih 3 kamar", "1.8M", "sewa"],
# 	["Rumah", "Surabaya", "Rumah Baru bersih 3 kamar", "2.9M", "jual"]
# ]

# property_list.each do |name, address, description, price, type|
# 	Property.create(name: name, address: address, description: description, price: price, type: type)
# end

10000.times do
	Property.create(
		name: Faker::Name.name,
		address: Faker::Address.street_address,
		description: Faker::Book.title,
		price: Faker::Commerce.price,
		type: Faker::Book.genre )
end