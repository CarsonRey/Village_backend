class Api::V1::RequestsController < ApplicationController
  def index
    @requests = Request.all
    render json: @requests
  end

# user_id: params[:user_id], mouths_to_feed: params[:mouths_to_feed]

  def create
    byebug
    @request = Request.new(request_params)
    if @request.save
      render json: @request
    else
      render json: {error: "couldn't make request"}
    end
  end

  def destroy

  end

  private

  def request_params
    {user_id: params[:user_id], mouths_to_feed: params[:mouths_to_feed]}
    # params.require(:request).permit(:user_id, :mouths_to_feed)
  end

end
