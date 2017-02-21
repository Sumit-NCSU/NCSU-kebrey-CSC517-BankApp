# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create([{name: 'Sumit'},{email: 'ssrivas8@ncsu.edu'}, {password: 'TODO: encrypt password and put the encrypted string here'}, {is_admin: 1}])