class TopsController < ApplicationController
    def index
    end
    def index2
    end
    
    before_action :authenticate_user!
end
