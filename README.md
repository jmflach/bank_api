# BANK_API

This project was built as a test for an interview. The goal was to build an Ruby on Rails API with three end-points:

- create_account: let you create a bank account
- create_transaction: let you create transactions (credit or debit) for the bank accounts
- list_transactions: let you list all the transactions that happened in a bank account

Path and parameters to the endpoints:

- localhost:3000/bank-accounts/create

  name

  cpf

  birthday

  doc_image


- localhost:3000/transactions/create

  account_number

  amount

  trans_type (credit or debit)


- localhost:3000/transactions/statement

  account_number


You can also use the sh scripts provided with the parameters in the command line to send the requests. For example:

./create_account Joao 04353814908 18/03/1993 @/home/João/avatar.png

The cpf verification is disabled for testing.

Todo:

- better error messages
- alter the path of the endpoints if desired by the client


System requirements:

- Ruby 2.7.2
- Rails 7.0.3
- Postgresql
- active_storage (rails active_storage:install)
- jsonapi
- validates_timeliness
- validators
