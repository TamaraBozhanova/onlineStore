class PhonesController < ApplicationController

  before_action :set_phone, only: [ :show, :edit, :update, :destroy]

  def index
    @phones =Phone.paginate(page: params[:page], per_page: 5)
  end

  def show
  end

  def new
    @phone=Phone.new
  end

  def create
    @phone=Phone.new(phone_params)
    if @phone.save
      redirect_to @phone, success: 'Телефон успешно создан'
    else
      flash.now[:danger] = 'Телефон не создан'
      render :new
    end
  end

  def edit
  end

  def update
    if @phone.update_attributes(phone_params)
      redirect_to @phone, success: 'Телефон успешно обновлен'
    else
      flash.now[:danger] = 'Телефон не обновлен'
      render :edit
    end
  end

  def destroy
    @phone.destroy
    redirect_to phones_path, success: 'Телефон успешно удален'
  end

  private

  def set_phone
    @phone=Phone.find(params[:id])
  end

    def phone_params
      params.require(:phone).permit(:name, :price, :description, :image, :category_id)
    end
end
