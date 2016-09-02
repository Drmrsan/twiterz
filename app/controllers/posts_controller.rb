class PostsController < ApplicationController

	def new
		@post = Post.new	
	end

	def create
		@post = Post.create(post_params)
		@post.user_id = current_user.id
		if @post.save
			redirect_to :back, notice: "Post created!"
		else
			redirect_to :back, notice: "Error, post not saved"
		end
	end

	private
		def post_params
			params.require(:post).permit(:user_id, :content)
		end
	
end
