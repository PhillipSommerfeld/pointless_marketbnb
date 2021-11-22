class TransactionsController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

#Basic Crud Actions
  def index
    @transactions = Transaction.all
  end

  def show
  end

  def new
    @transaction = Transaction.new
  end

  def edit
  end

  def create
    @transaction = Transaction,.new(transaction_params)
  end

  def update
  #Needs to be improved
  end

  def destroy
    @transaction.destroy
        #maybe redirect somewhere else?
  end

  private

    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def transaction_params
      params.require(:transaction).permit(:offer_id, :user_id, :item_price)
    end
end
