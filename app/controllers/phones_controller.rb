class PhonesController < ApplicationController
  before_action :set_phone, only: [ :show]

  def index
    @phones =Phone.all
  end

  def show
  end

  private

  def set_phone
    @phone=Phone.find(params[:id])
  end
end
