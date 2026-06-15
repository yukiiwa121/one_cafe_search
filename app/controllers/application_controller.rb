class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  private

  def required_login
    redirect_to login_path, danger: "ログインしてください" unless logged_in?
  end
  
end
