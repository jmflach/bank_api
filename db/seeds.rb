# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

joao = BankAccount.create!(name: 'joao', cpf: '098765432456', birthday: '23/23/1212')
fred = BankAccount.create!(name: 'frederico', cpf: '04587210254', birthday: '15/04/2000')

trans_1 = joao.transactions.create!(trans_type: "credit", amount: 500)
trans_2 = joao.transactions.create!(trans_type: "debit", amount: 100)
trans_3 = joao.transactions.create!(trans_type: "debit", amount: 100)

trans_4 = fred.transactions.create!(trans_type: "credit", amount: 500)
trans_5 = fred.transactions.create!(trans_type: "debit", amount: 1000)
trans_6 = fred.transactions.create!(trans_type: "credit", amount: 100)
