class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :danger, :info, :warming
  include CurrentCart
  before_action :set_cart
end
