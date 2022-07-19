class BankAccount < ApplicationRecord
  has_many :transactions

  validates :name, :birthday, presence: true
  validates_cpf_format_of :cpf
  validates :cpf, presence:true, uniqueness: true
  validates_date :birthday, before: lambda { 18.years.ago },
                                before_message: "must be at least 18 years old"

end
