class AdminController < ApplicationController
  authorize_resource :class => false 
  before_action :authenticate_user! 
  def dashboard
  end
end
