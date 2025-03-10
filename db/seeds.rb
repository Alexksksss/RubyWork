# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Theme.delete_all
Theme.reset_pk_sequence
Theme.create([
               { name: "-----", qty_items: 0 },
               { name: "Какое из произведений художника О.Ренуара наилучшим образом характеризует его творчество?", qty_items: 5 },
               { name: "Какое из произведений художника П.Пикассо наилучшим образом характеризует его творчество?", qty_items: 4 },
               { name: "Какое из произведений художника А.Матисса наилучшим образом характеризует его творчество?", qty_items: 3 }
             ])

Image.delete_all
Image.reset_pk_sequence
Image.create([
               { name: 'Кошка1', file: '5.jpg', theme_id: 2 },
               { name: 'Кошка2', file: '6.jpg', theme_id: 2 },
               { name: 'Кошка3', file: '7.jpg', theme_id: 2 }
             ])

User.delete_all
User.reset_pk_sequence
User.create(name: "Example User", email: "example@railstutorial.org", password: "222222", password_confirmation: "222222")
