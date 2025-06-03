class DashboardController < ApplicationController
    allow_unauthenticated_access only: :index

    def index
        redirect_to abouts_path if authenticated?
    end

    def home
        redirect_to new_session_path unless authenticated?
    end
end
