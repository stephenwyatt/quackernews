class PostsController < ApplicationController
  
  def index
    puts 'FOOOOOO:' + params[:q] if params[:q]
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path,
          notice: 'successfully created post' }
      else
        format.html { render action: 'new' }
      end
    end  
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to root_path,
          notice: 'successfully updated post' }
      else
        format.html { render action: 'new' }
      end
    end  
  end
  
end
