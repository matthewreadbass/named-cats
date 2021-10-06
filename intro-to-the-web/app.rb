require "sinatra"
require "sinatra/reloader" if development?

# set :port, 1234
# set :bind, "0.0.0.0"

get "/" do
  "hello!"
end

get "/secret" do
  "We are serious developers"
end

get "/harry-potter" do
  "You're a wizard Harry"
end

get "/the-plague" do
  "Under the vast indifference of the sky"
end

get "/random-cat" do
  @cat_names = ["Amigo", "Misty", "Almond", "Matthew", "Xia"].sample
  erb(:index)
end

post "/named-cat" do
  p params
  @cat_names = params[:name]
  erb(:index)
end

get "/cat-form" do
  erb :cat_form
end
