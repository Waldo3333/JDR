class GamesController < ApplicationController
  def index
    @games = Game.where(user: current_user)
  end

 def show
    @game = Game.find(params[:id])
    @game_user = GameUser.new
    @this_game_users = GameUser.where(game: @game)
  end

  def new
    @game = Game.new
  end
  def create
    @game = Game.new(game_params)
    @game.user = current_user  # MJ
    if @game.save
      # créer automatiquement le game_user pour le MJ
      GameUser.create!(game: @game, user: current_user, role: 1, status: 1)
      redirect_to game_path(@game), notice: "Partie créée !"
    else
      puts @game.errors.full_messages
      render :new
    end
  end

  private

  def game_params
    params.require(:game).permit(:name)
  end
end
