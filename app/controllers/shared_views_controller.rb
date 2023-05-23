class SharedViewsController < ApplicationController

  def is_logged_in?
    session[:user_id] != nil
  end
  helper_method :is_logged_in?

end