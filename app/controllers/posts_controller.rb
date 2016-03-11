class PostsController < ApplicationController
  before_action :load_blog
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts/1
  # GET /posts/1.json
  def show
    sleep 3
  end

  # GET /posts/new
  def new
    @post = @blog.posts.build
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = @blog.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to [@blog, @post], notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: [@blog, @post] }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to [@blog, @post], notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: [@blog, @post] }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def load_blog
    @blog = Blog.find(params[:blog_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = @blog.posts.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:username, :content)
  end
end
