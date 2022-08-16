class ApiJokeChuck 
  def self.search_random_joke
    url = 'https://api.chucknorris.io/jokes/random'
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.path, {
                                   'Content-Type' => 'application/json'
                                 })
    http.use_ssl = true if uri.instance_of? URI::HTTPS
    response = http.request(request)
    JSON.parse(response.body)
  end

  def self.search_joke_id(id_joke)
    url = 'https://api.chucknorris.io/jokes/' + id_joke.to_s
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.path, {
                                   'Content-Type' => 'application/json'
                                 })
    http.use_ssl = true if uri.instance_of? URI::HTTPS
    response = http.request(request)
    JSON.parse(response.body)
  end

  def self.categories
    url = 'https://api.chucknorris.io/jokes/categories'
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.path, {
                                   'Content-Type' => 'application/json'
                                 })
    http.use_ssl = true if uri.instance_of? URI::HTTPS
    response = http.request(request)
    JSON.parse(response.body)
  end

  def self.search_for_category(category)
    url = 'https://api.chucknorris.io/jokes/random'
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    headers = "?category=" + category
    request = Net::HTTP::Get.new(uri.path + headers, {
                                   'Content-Type' => 'application/json'
                                 })
    http.use_ssl = true if uri.instance_of? URI::HTTPS
    response = http.request(request)
    JSON.parse(response.body)
  end
end