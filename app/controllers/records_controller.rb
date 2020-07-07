class RecordsController < ApplicationController
  before_action :move_to_index, except: [:index, :landing]
  def index
    if current_user.present?
      @record = Record.new
      graph_data
    end
  end

  def show
    graph_data
  end

  def new
    @record = Record.new
  end
  
  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to :root
    else
      redirect_to :root
      flash[:danger] = "未記入項目があり保存できませんでした。もう一度登録し直してください。"
      
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def landing
  end

  def graph
    graph_data
  end

  private
  def record_params
    params.require(:record).permit(:course, :price, :really_type, :avarage_type, :miss_type).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def graph_data
    if User.where(id: current_user.id, course_chart: "普通：お手軽").present?
      @data = Record.where(course: "普通：お手軽")
      @data_title = "普通：お手軽"
    elsif User.where(id: current_user.id, course_chart: "普通：お勧め").present?
      @data = Record.where(course: "普通：お勧め")
      @data_title = "普通：お勧め"
    elsif User.where(id: current_user.id, course_chart: "普通：高級").present?
      @data = Record.where(course: "普通：高級")
      @data_title = "普通：高級"
    else
    end
  end
end
