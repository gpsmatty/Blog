class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    @header = true
  end
  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
    @header = false
  end

  def edit
    @post =Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :description, :body))
      redirect_to @post
    else
      render 'edit'
    end
  end

  private
      def post_params
        params.require(:post).permit(:title, :description, :body)
      end
end
