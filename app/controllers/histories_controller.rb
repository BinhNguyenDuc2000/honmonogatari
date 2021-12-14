class HistoriesController < ApplicationController
  
  def index
    @histories = History.all
  end
  def current_user
      @current_user ||= User.find_by(id: session[:user_id])
  end
  def show
  end
  def create
      @history = History.new(history_params)
      @history.has_read = 0
      @history.save
  end
  
  private
  
  def history_params
      params.require(:history).permit(:user_id, :book_id)
  end
  
end
