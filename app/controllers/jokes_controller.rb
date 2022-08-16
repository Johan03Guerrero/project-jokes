class JokesController < ApplicationController
  def index
  end

  def show_jokes_api
    @categories = ["random"] + ApiJokeChuck.categories
    params[:category] ||= "random"
    @joke = if params[:category] == "random"
      ApiJokeChuck.search_random_joke
    else
      ApiJokeChuck.search_for_category(params[:category])
    end
  end

  def save_joke
    user_joke = UserJoke.find_by_id_api_jokes(params[:id_joke])
    if user_joke.present?
      redirect_to request.referrer, notice: "El chiste ya se encuentra guardado en favoritos"
    else
      UserJoke.create(user_id: current_user.id, id_api_jokes: params[:id_joke])
      redirect_to request.referrer, notice: "Chiste guardado en favoritos correctamente"
    end
  end

  def show_my_jokes
    @jokes = UserJoke.where(user_id: current_user.id)
  end
end
