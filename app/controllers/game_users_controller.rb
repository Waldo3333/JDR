class GameUsersController < ApplicationController
  before_action :set_game_user, only: [:accept, :decline]

  # MJ : inviter un joueur
  def index
    @game_users = GameUser.where(user: current_user)
  end

  def create
    @game_user = GameUser.new(game_user_params)
    @game_user.status = 0  # par défaut : invité
    if @game_user.save
      redirect_to game_path(@game_user.game), notice: "Invitation envoyée !"
    else
      redirect_to game_path(@game_user.game), alert: "Impossible d'envoyer l'invitation."
    end
  end

  # Joueur : accepter l'invitation
  def accept
    @game_user.update!(status: 1) # accepté
    redirect_to game_users_path, notice: "Invitation acceptée !"
  end

  # Joueur : refuser l'invitation
  def decline
    @game_user.update!(status: 2) # refusée
    redirect_to game_users_path, notice: "Invitation refusée !"
  end

  private

  def set_game_user
    @game_user = current_user.game_users.find(params[:id])
  end

  def game_user_params
    params.require(:game_user).permit(:game_id, :user_id, :role)
  end
end
