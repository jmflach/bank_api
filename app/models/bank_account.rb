class BankAccount < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_many :transactions
  has_one_attached :doc_image

  validates :name, :birthday, :cpf, :doc_image, presence: true
  # validates_cpf_format_of :cpf
  # validates :cpf, uniqueness: true
  validates_date :birthday, before: lambda { 18.years.ago }, before_message: "must be at least 18 years old"

  def get_image_url
    url_for(self.doc_image)
  end

end
