class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
        @email = user_signed_in? ? current_user.email : 'undefined'
    end
end
