class Api::V1::TasksController < API::BaseController
  before_action -> { doorkeeper_authorize! :public }, only: :index
  before_action only: [:create, :update, :destroy] do
    doorkeeper_authorize! :admin, :write
  end
  def index
    render json: current_user
  end
end
