class PlayersController < ApplicationController

  def index
    @players = Player.all
    render :index
  end

  def create
    @player = Player.create(
      name: params[:name],
      team: params[:team],
      position: params[:position],
      points: params[:points]
    )
    render :show
  end

  def show
    @player = Player.find_by(id: params[:id])
    render :show
  end

  def update
    @player = Player.find_by(id: params[:id])
    @player.update(
      name: params[:name] || @player.name,
      team: params[:team] || @player.team,
      position: params[:position] || @player.position,
      points: params[:points] || @player.points
    )
    render :show
  end
end
