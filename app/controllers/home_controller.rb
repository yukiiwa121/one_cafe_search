class HomeController < ApplicationController
    skip_before_action :require_login,only:%i[home]

  def home ; end
  
   layout "application"
    def index
    end

end
