class TransactionResource < JSONAPI::Resource
  attributes :amount :trans_type

  has_one :bank_account
end
