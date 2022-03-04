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

  get "/users/:name/" do
    su = SiteUser.where(name: params[:name])
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




  post "/users/" do
    newUsr = SiteUser.create(
      name: params[:name],
      tag: params[:tag],
      avatar: params[:avatar],
      email: params[:email],
      password: params[:password],
      banned: false,
      isMod: false
    )
    newUsr.to_json
  end

  post "/posts/" do
    createdPost = Post.create(
    site_user_id: params[:site_user_id],
    post_group_id: params[:post_group_id],
    content: params[:content]
    )
    createdPost.to_json
  end

  post "/threads/" do
    createdThread = PostGroup.create(
      title: params[:title]
    )
    createdThread.to_json
  end

end
