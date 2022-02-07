class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/posts/" do
    Post.all
  end

  get "/users/" do
    SiteUser.all
  end

  get "/threads/" do
    pg = PostGroup.all
    pg.to_json
  end

end
