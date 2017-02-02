class Api::GroupsController < ApplicationController
  def index
    if current_user.landlord_id
      @groups = Group.where(landlord_id: current_user.id)
    else
      @groups = Group.where(tenant_id: current_user.id)
    end
  end

  def show
    @group = Group.find[params[:id]]
  end

  def create
    @group = Group.new()
    if current_user.landlord
      @group.landlord_id = current_user.id
    else
      @group.tenant_id = current_user.id
    end
      @group.token = SecureRandom.base64
    if @group.save
      render :show
    else
      render json: @group.errors.full_messages, status: 422
    end
  end

  def update
    @group = Group.find_by_token(params[:token])
    if current_user.landlord
      @group.update(landlord_id: current_user.id)
    else
      @group.update(tenant_id: current_user.id)
    end
    render :show
  end

  def group_params
    params.require(:group).permit(:id, :token)
  end

end
