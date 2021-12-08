class PostsController < ApplicationController
    def new
        @post=Post.new
    end
    def index3
        @posts=Post.all
    end
    def create
        @post=Post.new(post_params)
        @post.save
        redirect_to posts_index3_path
    end
    def show
        @post=Post.find(params[:id])
    end
    private
    def post_params
        params.require(:post).permit(:title, :body)
    end
end
