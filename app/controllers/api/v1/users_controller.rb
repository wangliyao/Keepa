class Api::V1::UsersController < API::BaseController
  before_action -> { doorkeeper_authorize! :public }, only: :index
  def index
  	
    render json: current_user
  end
end
