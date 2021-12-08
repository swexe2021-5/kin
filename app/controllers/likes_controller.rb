class LikesController < ApplicationController
    def create
   like = current_user.likes.build(record_id: params[:record_id])
   if like.save
    redirect_back(fallback_location: root_path)
   else
     @post = like.record
     like = @post.likes
     redirect_back(fallback_location: root_path)
   end
 end
 
 def destroy
   user=current_user
   post=Post.find(params[:post_id])
   if like=Like.find_by(user_id: user.id,post_id:post.id)
    like.destroy
    redirect_back(fallback_location: root_path)
   else
    redirect_back(fallback_location: root_path)
   end
 end
end
