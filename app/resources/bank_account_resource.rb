class BankAccountResource < JSONAPI::Resource
  attributes :name, :cpf, :birthday, :balance, :account_number, :doc_image

  has_many :transactions
end
