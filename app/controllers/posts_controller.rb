class PostsController < ApplicationController
  def index
  	@post = Post.all
  end

  def new
  	@post = Post.new
  end

  def show
  	@post = Post.find(params[:id])
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def create
    @post = Post.create(params.require(:post).permit(:title, :description, :travel_date))
  end
#   def create
#   	@posts = Post.new(user_params)
#     if post.save
#     	format.html {redirect_to @post, notice: 'post was successfully created.'}
#     	format.json { render :show, status: :created, location: @post }
#     else
#     	format.html { render :new }
#     	format.json { render json: @post.errors, status: :unproccessable_entity }
#     end
#end


# def update
#     respond_to do |format|
#       if post.update(post_params)
#         format.html { redirect_to post, notice: 'post was successfully updated.' }
#         format.json { render :show, status: :ok, location: post }
#       else
#         format.html { render :edit }
#         format.json { render json: post.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   def destroy
#     post.destroy
#     respond_to do |format|
#       format.html { redirect_to posts_url, notice: 'post was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

end

