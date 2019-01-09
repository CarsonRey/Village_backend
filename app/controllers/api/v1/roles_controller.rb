class Api::V1::RolesController < ApplicationController

  def index
    @roles = Role.all
    render json: @roles
  end
  
end
