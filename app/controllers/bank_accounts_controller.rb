class BankAccountsController < JSONAPI::ResourceController
  skip_before_action :verify_authenticity_token

  def create
      @acc = BankAccount.new(bank_param)

      @acc.balance = 0



      if @acc.save
        @number = @acc.id.to_s
        @zeroes = "000000000000"
        @padding = @zeroes.truncate(@zeroes.length-@number.length, omission: '')
        @acc.account_number = @padding + @number
        render json: {"account_number": @acc.account_number}, status: 200
      else
         render json: {"error": "coundn't create account"}
      end
   end

   def bank_param
      # params.require(:client).permit(:name, :cpf, :birthday, :image)
      params.permit(:name, :cpf, :birthday)
   end
end
