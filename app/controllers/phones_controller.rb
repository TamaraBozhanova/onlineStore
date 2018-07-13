class PhonesController < ApplicationController
  before_action :set_phone, only: [ :show, :edit, :update, :destroy]

  def index
    @phones =Phone.paginate(page: params[:page], per_page: 5)
  end

  def show
  end

  #def new
    #@phone=Phone.new
  #end

  private

  def set_phone
    @phone=Phone.find(params[:id])
  end
end
