class HomeController < ApplicationController
  
  def index
  end
  
  def booth
  end
  
  def ourevent
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
  
  def performance
  end
  
  def csv
  end
  
  def importpub
  end
  
  def importperform
  end
  
  def event
  end
end
