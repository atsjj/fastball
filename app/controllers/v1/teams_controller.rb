class V1::TeamsController < V1::BaseController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end
end
