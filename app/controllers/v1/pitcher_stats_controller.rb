class V1::PitcherStatsController < V1::BaseController
  def index
    @range_start = pitcher_stat_params.fetch(:range_start, DateTime.now.beginning_of_day)
    @range_end = pitcher_stat_params.fetch(:range_end, DateTime.now.end_of_day)
    range = (@range_start..@range_end)

    if pitcher_stat_params[:pitcher_id].present?
      @pitcher = Pitcher.find(pitcher_stat_params[:pitcher_id])
      @pitcher_stats = PitcherStat.where(created_at: range, pitcher: @pitcher)
    else
      @pitcher_stats = PitcherStat.where(created_at: range)
    end
  end

  def show
    @pitcher_stat = PitcherStat.find(params[:id])
  end

  private

  def pitcher_stat_params
    params.permit(:format, :pitcher_id, :range_start, :range_end)
  end
end
