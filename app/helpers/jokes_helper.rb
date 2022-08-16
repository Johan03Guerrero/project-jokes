module JokesHelper
  def joke_api(id_joke)
    ApiJokeChuck.search_joke_id(id_joke)
  end
end
