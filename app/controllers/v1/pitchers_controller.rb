class V1::PitchersController < V1::BaseController
  def index
    @pitchers = Pitcher.all
  end

  def show
    @pitcher = Pitcher.find(params[:id])
  end
end
