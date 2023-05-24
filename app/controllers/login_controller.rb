class LoginController < ApplicationController

  def index
  end

  def is_logged_in?
    false
  end
  helper_method :is_logged_in?

end
