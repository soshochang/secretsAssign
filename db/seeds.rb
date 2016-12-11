# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:"shane", email:"shane@example.com", password:"password", password_confirmation:"password")
u2 = User.create(name:"oscar", email:"oscar@example.com", password:"password", password_confirmation:"password")
s1 = Secret.create(content:"secret1", user:u1)
s2 = Secret.create(content:"secret2", user:u1)
s3 = Secret.create(content:"secret3", user:u2)