class ChatController < ApplicationController
  # before_action :authenticate!
  before_action :authenticate_user!

  def show
    @messages = Message.order(created_at: :asc).last(20)
  end

  private

  # def authenticate!
  #   redirect_to login_path unless session[:username]
  # end
end
