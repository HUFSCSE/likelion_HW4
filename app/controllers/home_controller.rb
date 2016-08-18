class HomeController < ApplicationController
  before_action :require_login
  def index
      @posts = Post.all.reverse
  end
  
  def write
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.user = current_user
    
    uploader = MachineUploader.new
    file = params[:pic]
    uploader.store!(file)
    post.image_url = uploader.url
    
    post.save
    
    if post.save
      redirect_to "/"
    else
      render :text => post.errors.messages
    end
  end
  
  def reply_write
 
    reply = Reply.new
    reply.r_content = params[:r_content]
    reply.post_id = params[:p_id]
    reply.save
    redirect_to '/'
    
  end
end
