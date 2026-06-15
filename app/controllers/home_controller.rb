class HomeController < ApplicationController
    skip_before_action :require_login,only: %i[index]

  def index ; end
  
   layout "application"
    def index
    end

end
