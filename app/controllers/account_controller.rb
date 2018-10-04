class AccountController < ApplicationController
    before_action :set_account, only: [:index, :new, :create]
    def index
    end
  
    def new
    end
  
    def create
      pp params[:image]
    end
  
    private
      def set_account
        @account = User.find_by(username: params[:account])
      end
  
    def account_params
      params.permit(:image)
    end
end