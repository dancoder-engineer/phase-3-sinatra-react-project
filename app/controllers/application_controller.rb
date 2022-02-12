class ApplicationController < Sinatra::Base
  require 'pry'
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/posts/" do
    p = Post.all
    p.to_json(include: [:site_user, :post_group])
  end



  get "/users/" do
    su = SiteUser.all
    su.to_json
  end

  get "/threads/" do
    pg = PostGroup.all
    pg.to_json(include: {posts: {include: :site_user}})
  end

  get "/threads/:id/" do
    p = PostGroup.find(params[:id])
    p.to_json(include: {posts: {include: :site_user}})
  end

end
