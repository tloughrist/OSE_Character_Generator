class SharedViewsController < ApplicationController

  def is_logged_in?
    false
  end
  helper_method :is_logged_in?

end