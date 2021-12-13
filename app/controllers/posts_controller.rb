class PostsController < ApplicationController
    def new
        @post=Post.new
    end
    def index3
        @posts=Post.all
    end
    def create
        post = Post.new(post_params)
        if post.save
            redirect_to :action => "index3"
        else
            redirect_to :action => "new"
        end
    end
    
    private
    def post_params
        params.require(:post).permit(:title, :body)
    end
end
