class PostsController < ApplicationController
  layout "three_column"

  def index
    @posts = Post.all
    @users = User.all
  end

  def create
    @post = Post.create(title: params[:title], content: params[:content], user_id: params[:user_id])
    if @post
      puts "Post successfully created"
      redirect_to '/posts'
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to '/posts'
    end
  end



end
