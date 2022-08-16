# bundle exec rake db:drop DISABLE_DATABASE_ENVIRONMENT_CHECK=1 && bundle exec rake db:create && bundle exec rake db:migrate
# Gem Devise : rails g devise User -- rails g devise:views -- rails g devise:controllers users

user = User.new(name: "usuario_prueba", email: "usuarioprueba@correo.com", password: "prueba", password_confirmation: "prueba")
user.save