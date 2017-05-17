class HomeController < ApplicationController
  def index
  end
  
  def event
    #최신순
    @post_all = Post.all.reverse
  end
  
  def event_num
    #post_num = Post.all.lengh
    foo ||= []
    Post.all.each do |p|
      if p.date==params[:date]
        foo << :Post.find(p.id)
      end
      @post_date = foo
    end
    
  end
  
  def event_view
    #이벤트 정보 받아서 assign
    #번호 부여?
  end
  
  def setevent_create
    new_post = Post.new
    new_post.inputPassword = params[:inputPassword]
    if new_post.inputPassword=="day2ehdwp"
      new_post.title = params[:title]
      new_post.date = params[:date]
      new_post.category = params[:category]
      new_post.explain = params[:explain]
      new_post.content = params[:content]
      new_post.save
    end
    redirect_to '/home/setevent_list'
  end
  
  def new_event
  end
  
  def destroy
    #if @destroy_password == "day2destroy"
      Post.find(params[:id]).destroy
      redirect_to :back
    #end
  end
  
  def setevent_list
    @all_post = Post.all
    @destroy_password = params[:destroyPassword]
  end
end
