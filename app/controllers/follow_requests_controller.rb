class FollowRequestsController < ApplicationController
  before_action :set_follow_request, only: %i[show edit update destroy]

  def index
    @q = FollowRequest.ransack(params[:q])
    @follow_requests = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def show; end

  def new
    @follow_request = FollowRequest.new
  end

  def edit; end

  def create
    @follow_request = FollowRequest.new(follow_request_params)

    if @follow_request.save
      redirect_to @follow_request,
                  notice: "Follow request was successfully created."
    else
      render :new
    end
  end

  def update
    if @follow_request.update(follow_request_params)
      redirect_to @follow_request,
                  notice: "Follow request was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @follow_request.destroy
    redirect_to follow_requests_url,
                notice: "Follow request was successfully destroyed."
  end

  private

  def set_follow_request
    @follow_request = FollowRequest.find(params[:id])
  end

  def follow_request_params
    params.require(:follow_request).permit(:sender_id, :recipient_id)
  end
end
