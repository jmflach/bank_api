class BankAccountResource < JSONAPI::Resource
  attributes :name, :cpf, :birthday, :balance, :account_number

  has_many :transactions
end
