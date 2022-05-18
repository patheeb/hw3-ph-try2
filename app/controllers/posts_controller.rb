class PostsController < ApplicationController


def index
    @posts = Post.all
    @places = Place.all
    # @post["place_id"] = params ["place_id"]
  end

  def new
    @post = Post.new
    
  end

  def create
    @post = Post.new
    @post["title"] = params["title"]
    @post["description"] = params["description"]
    @post["posted_on"] = params["posted_on"]
    @post.save
    redirect_to "/places"
  end

end

