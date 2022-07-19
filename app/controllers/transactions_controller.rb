class TransactionsController < JSONAPI::ResourceController
  skip_before_action :verify_authenticity_token

  def create
    @bank_account = params[:bank_account]
    @amount = params[:amount].to_f
    @trans_type = params[:trans_type]

    @acc = BankAccount.find_by_id(@bank_account)

    if @acc
      @original_balance = @acc.balance

      if @trans_type == "credit"
        @final_balance = @original_balance + @amount
      elsif @trans_type == "debit"
        @final_balance = @original_balance - @amount
      else
        render json: {"error": "unknown operation"}, status: 200
        return
      end

      if @final_balance < 0
        render json: {"error": "insufficient funds"}, status: 200
      else
        @trans = Transaction.new(trans_param)
        @trans.bank_account = @acc
        if @trans.save
          @acc.update_attribute(:balance, @final_balance)
          render json: @acc, status: 200
        else
           render json: {"error": "unable to save the transaction"}, status: 200
        end
      end


      #
    else
      render json: {"error": "bank account not found"}, status: 200
    end
   end

   def trans_param
      params.permit(:amount, :trans_type)
   end


end
