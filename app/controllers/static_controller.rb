class StaticController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    end
  end
  def dashboard
    if !user_signed_in?
      redirect_to new_user_session_path
    end
  end
end
