class PostsController < ApplicationController
    before_action :set_post, only: [:show]

    def index
      @posts = Post.all
      @search = params["search"]
      if @search.present?
        @name = @search["Name"]
        @posts = Post.where(name: "name")
      end
    end
  
    def new
      @makeup = Makeup.find(params[:name])
      @post = Post.new
    end
  
    def create
      @post = Post.new post_values
      @post.name = current_name
      @post.coloue= params[:colour]
  
      if @post.save
        redirect_to makeup_url(@post.makeup_url)
        render :new
      end
    end
  
    def destroy
      @post.destroy
      redirect_to makeup_url
    end
  
    private
  
    def post_params
      params.require(:post).permit(:name, :colour, :rating)
    end
  
    def set_post
      @post = Post.includes(:ratnig).find(params[:name])
    end
  
    def post_values
      params.require(:post).permit(:name, :colour)
    end
  
  end