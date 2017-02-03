class Api::GroupsController < ApplicationController
  # def index
  #   @groups = Group.where(user1_id = params[user_id]).or(
  #   user2_id = params[:user_id])
  # end

  def show
    @group = Group.find[params[:id]]
  end

  def create
    @group = Group.new(group_params)
    @group.user1_id = params[:user_id]
    @group.user2_id = nil
    @group.token = SecureRandom.base64
    if @group.save
      render :show
    else
      render json: @group.errors.full_messages, status: 422
    end
  end

  def update
    @group = Group.find_by_token(params[:token])
    @group.user2_id = params[:user_id]
    @group.save
    render :show
  end

  def group_params
    params.require(:group).permit(:token, :address)
  end

end
