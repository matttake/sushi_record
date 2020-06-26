class RecordsController < ApplicationController
  before_action :move_to_index, except: :index
  def index
    @record = Record.new
    @data = Record.all
  end

  def show
    
  end

  def new
    @record = Record.new
  end
  
  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to :root
    else
      render :root
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  private
  def record_params
    params.require(:record).permit(:course, :price, :really_type, :avarage_type, :miss_type).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
