class WelcomeController < ApplicationController

def home

end

def about

end

skip_before_action :authenticate_user!, only: [:index]

end